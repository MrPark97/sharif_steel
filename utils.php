#!/usr/bin/env php
<?php

// Load all configuration options
/** @var array $config */
$config = require_once __DIR__ . '/config.php';

function getItemsFromDB(int $category = 0) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "SELECT * FROM sharif_items ORDER BY id";
    if($category >= 1 && $category <= 7) {
        $left = $category * 1000;
        $right = ($category+1) * 1000 - 1;
        $sql = "SELECT * FROM sharif_items WHERE id BETWEEN $left AND $right ORDER BY id";
    }

    $data = $conn->query($sql)->fetchAll();
    return $data;
}

function getItems(int $category = 0) {
    $data = getItemsFromDB($category);

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
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
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
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
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

function saleItem($user_id, $id, $amount) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "INSERT INTO sharif_temp_sales (user_id, item_id, item_amount) VALUES((:user_id), (:id), (:amount))";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':user_id'=>$user_id, ':id' => $id, ':amount'=>$amount));
}

function updateSaleCash($user_id, $is_cash) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "UPDATE sharif_temp_sales SET is_cash=(:is_cash) WHERE user_id=(:user_id)";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':is_cash'=>$is_cash, ':user_id'=>$user_id));
}

function updateSalePaid($user_id, $is_paid) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "UPDATE sharif_temp_sales SET is_paid=(:is_paid) WHERE user_id=(:user_id)";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':is_paid'=>$is_paid, ':user_id'=>$user_id));
}

function getTempSaleData($user_id) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "SELECT * FROM sharif_temp_sales JOIN sharif_items ON sharif_temp_sales.item_id=sharif_items.id WHERE user_id=(:user_id)";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':user_id' => $user_id));
    
    return $sth->fetch();
}

function purchaseItem($user_id, $id, $amount, $cost) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "INSERT INTO sharif_temp_purchases (user_id, item_id, item_amount, item_cost) VALUES((:user_id), (:id), (:amount), (:cost))";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':user_id'=>$user_id, ':id' => $id, ':amount'=>$amount, ':cost'=>$cost));
}

function updatePurchaseCash($user_id, $is_cash) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "UPDATE sharif_temp_purchases SET is_cash=(:is_cash) WHERE user_id=(:user_id)";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':is_cash'=>$is_cash, ':user_id'=>$user_id));
}

function updatePurchasePaid($user_id, $is_paid) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "UPDATE sharif_temp_purchases SET is_paid=(:is_paid) WHERE user_id=(:user_id)";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':is_paid'=>$is_paid, ':user_id'=>$user_id));
}

function getTempPurchaseData($user_id) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "SELECT * FROM sharif_temp_purchases JOIN sharif_items ON sharif_temp_purchases.item_id=sharif_items.id WHERE user_id=(:user_id)";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':user_id' => $user_id));
    
    return $sth->fetch();
}

function bookItem($user_id, $id, $amount) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "INSERT INTO sharif_temp_reservations (user_id, item_id, item_amount) VALUES((:user_id), (:id), (:amount))";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':user_id'=>$user_id, ':id' => $id, ':amount'=>$amount));
}

function getTempBookData($user_id) {
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "SELECT * FROM sharif_temp_reservations JOIN sharif_items ON sharif_temp_reservations.item_id=sharif_items.id WHERE user_id=(:user_id)";
    $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $sth->execute(array(':user_id' => $user_id));
    
    return $sth->fetch();
}

function validateDate($date, $format = 'd.m.Y'){
    $d = DateTime::createFromFormat($format, $date);
    return $d && $d->format($format) === $date;
}

function getMonthName($month) {
    $monthNames = [
        '01' => 'January',
        '02' => 'February',
        '03' => 'March',
        '04' => 'April',
        '05' => 'May',
        '06' => 'June',
        '07' => 'July',
        '08' => 'August',
        '09' => 'September',
        '10' => 'October',
        '11' => 'November',
        '12' => 'December',
    ];
    return $monthNames[$month];
}

function getMonths() {
    $months = array(
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December',
    );
    return $months;
}

function getUserRole($username, $user_id, $name) {
    // Load all configuration options
    /** @var array $config */
    global $config;
    $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));

    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $data = $conn->query("SELECT * FROM sharif_waiting_roles WHERE username='$username'")->fetchAll();
    if(count($data) == 1) {
        try {
            $sql = "INSERT INTO sharif_users (id, name, role, username) VALUES (:id, :name, :role, :username)";
            $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
            $sth->execute(array(':id' => $user_id, 'name' => $name, ':role' => $data[0]['role'], ':username' => $username));

            $user_role = $data[0]['role'];
            $conn->exec("DELETE FROM sharif_waiting_roles WHERE username='$username'");
            return $user_role;
        } catch(PDOException $e) {
            $answer_text = 'Ошибка базы данных';
        } catch (Exception $e) {
            // not a MySQL exception
            $e->getMessage();
        }
    } else {
        $data = $conn->query("SELECT * FROM sharif_users WHERE id=$user_id")->fetchAll();
        if(count($data) == 1) {
            $user_role = $data[0]['role'];
            return $user_role;
        }
    }

    return -1;
}

function isValidUsername($username) {
    return preg_match('/^@(\w{5,64})$/', $username);
}

?>