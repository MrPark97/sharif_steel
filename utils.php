#!/usr/bin/env php
<?php

// Load all configuration options
/** @var array $config */
$config = require __DIR__ . '/config.php';

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

?>