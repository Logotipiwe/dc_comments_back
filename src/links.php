<?php
set_error_handler(function($errno, $errstr, $errfile, $errline ) {
    throw new ErrorException($errstr, 0, $errno, $errfile, $errline);
});
try {
    require_once "Env.php";
    header("Access-Control-Allow-Origin: *");
    $db = new mysqli(
        Env::getDbHost(),
        Env::getDbLogin(),
        Env::getDbPassword(),
        Env::getDbName()
    );
    $res = $db->query("SELECT id, row_num, columns_num, html, max_columns, href FROM links");
    $ans = [];
    while ($row = $res->fetch_assoc()) {
        $ans[] = [
            'id' => (string)$row['id'],
            'rows' => $row['row_num'],
            'columns' => $row['columns_num'],
            'html' => $row['html'],
            'maxColumns' => $row['max_columns'],
            'href' => $row['href']
        ];
    }
    echo json_encode(['links'=>$ans]);
} catch (exception $e) {
    echo '{"links":[]}';
}