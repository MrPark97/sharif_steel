#!/usr/bin/env php
<?php

// Load all configuration options
/** @var array $config */
$config = require_once __DIR__ . '/config.php';

function getItems(int $category = 0) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password']);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "SELECT * FROM sharif_items ORDER BY id";
    if($category >= 1 && $category <= 7) {
        $left = $category * 1000;
        $right = ($category+1) * 1000 - 1;
        $sql = "SELECT * FROM sharif_items WHERE id BETWEEN $left AND $right ORDER BY id";
    }

    $data = $conn->query($sql)->fetchAll();
    // and somewhere later:
    $all_items = '';
    foreach ($data as $row) {
        $cur_row = "";

        if ($row['id'] % 1000 == 1 && $row['id'] != 1001) {
            $cur_row .= "\n";
        }

        $cur_row .= $row['id'] . ". " . $row['name'] . "\n";
        
        $border = mb_strlen($all_items)%4096;
        if(($border + mb_strlen($cur_row)) > 4096) {
            $border = 4096-$border;
            for($i=0; $i<$border; $i++) {
                $all_items .= ' ';
            }
        }
        $all_items .=  $cur_row;
        
    }

    return $all_items;
}

function searchResults($searchRequest) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password']);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "SELECT * FROM sharif_items WHERE name LIKE (:search) LIMIT 10";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':search' => "%$searchRequest%"));
    $results = $sth->fetchAll();
    return $results;
}

function isValidId($id):bool {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password']);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "SELECT * FROM sharif_items WHERE id=(:id)";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':id' => $id));
    $results = $sth->fetchAll();
    if(count($results) != 1)
        return false;
    return true;
}

function insertItem($user_id, $id, $amount) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password']);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "INSERT INTO sharif_temp_sales (user_id, item_id, item_amount) VALUES((:user_id), (:id), (:amount))";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':user_id'=>$user_id, ':id' => $id, ':amount'=>$amount));
}

function updateItemCash($user_id, $is_cash) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password']);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "UPDATE sharif_temp_sales SET is_cash=(:is_cash) WHERE user_id=(:user_id)";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':is_cash'=>$is_cash, ':user_id'=>$user_id));
}

function updateItemPaid($user_id, $is_paid) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password']);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "UPDATE sharif_temp_sales SET is_paid=(:is_paid) WHERE user_id=(:user_id)";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':is_paid'=>$is_paid, ':user_id'=>$user_id));
}

function getTempSaleData($user_id) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password']);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "SELECT * FROM sharif_temp_sales JOIN sharif_items ON sharif_temp_sales.item_id=sharif_items.id WHERE user_id=(:user_id)";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':user_id' => $user_id));
    
    return $sth->fetch();
}

?>