<?php
$dev = 1;
if($dev) {
    set_error_handler(function ($errno, $errstr, $errfile, $errline) {
        throw new ErrorException($errstr, 0, $errno, $errfile, $errline);
    });
}
try {
    require_once "Env.php";
    header("Access-Control-Allow-Origin: *");
    $db = new mysqli(
        Env::getDbHost(),
        Env::getDbLogin(),
        Env::getDbPassword(),
        Env::getDbName()
    );
/*    $sizes = [
        [
            'id'=>1,
            'max_width'=>500,
            'columns'=> 2,
            'sizes_data'=>[
                'sizes'=> [
                    [1,1], [1,1]
                ]
            ]
        ]
    ];
    sizes - rows,columns
    {"sizes":[[1,1],[1,1],[2,2],[1,2]}
*/
    $sizes = [];
    $columns_widths = [];
    $sizesRes = $db->query("SELECT id, max_width, sizes_data, columns FROM link_media");
    while ($row = $sizesRes->fetch_assoc()) {
        $row['sizes_data'] = json_decode($row['sizes_data'], 1);
        $sizes[] = $row;
        $columns_widths[$row['max_width']] = (int)$row['columns'];
    }
    $res = $db->query("SELECT id, row_num, columns_num, html, max_columns, href FROM links");
    $ans = [];
    $i = 0;
    while ($row = $res->fetch_assoc()) {

        $link = [
            'id' => (string)$row['id'],
            'rows' => $row['row_num'],
            'columns' => $row['columns_num'],
            'html' => $row['html'],
            'maxColumns' => $row['max_columns'],
            'href' => $row['href'],
            'sizes' => []
        ];
        foreach ($sizes as $size) {
            $rowAndCol = $size['sizes_data']['sizes'][$i];
            $link['sizes'][$size['max_width']] = ['row'=>$rowAndCol[0], 'column'=>$rowAndCol[1]];
        }
        $ans[] = $link;
        $i++;
    }
    echo json_encode(['links'=>$ans, 'columnsWidths' => $columns_widths]);
} catch (exception $e) {
    if($dev) {
        echo $e->getMessage();
    }
    echo '{"links":[]}';
}