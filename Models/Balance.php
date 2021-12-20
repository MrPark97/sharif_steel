<?php
namespace Models;
use PDO;

// Load all configuration options
/** @var array $config */
$config = require_once 'config.php';

class Balance {
    private $filename = 'balance.csv';
    private $comments = array();

    public function __construct() {
        $filename = $this->getFilename();
        $this->writeData($filename);
    }

    public function getFilename() {
        global $config;
        $cur_dir = $config['data_directory']."/".date("Y");
        if(!is_dir($cur_dir)) {
            print($cur_dir);
            mkdir($cur_dir);
        }
        $cur_dir .= "/".date("F");
        if(!is_dir($cur_dir)) {
            print($cur_dir);
            mkdir($cur_dir);
        }
        $cur_dir .= "/".date("d");
        if(!is_dir($cur_dir)) {
            print($cur_dir);
            mkdir($cur_dir);
        }

        $filename = $cur_dir.'/'.$this->filename;
        return $filename;
    }

    public function writeData($filename) {
        global $config;

        $this->getComments();
        print_r($this->comments);

        $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $data = $conn->query("SELECT * FROM sharif_items ORDER BY id")->fetchAll();

        $csv_balance_header = "ID;Номенклатура;Количество;Стоимость;Комментарий\n";
        $csv_balance_header = iconv("UTF-8", "windows-1251//IGNORE", $csv_balance_header);

        file_put_contents($filename, $csv_balance_header);

        foreach ($data as $row) {
            $row_content = $row['id'].';'.$row['name'].';'.$row['amount'].';'.$row['price'];
            if(array_key_exists($row['id'], $this->comments)) {
                foreach($this->comments[$row['id']] as $comment) {
                    $row_content .= ';'.$comment;
                }
            }
            $row_content .= "\n";
            
            $row_content = iconv("UTF-8", "windows-1251//IGNORE", $row_content);
            file_put_contents($filename, $row_content, FILE_APPEND);
        }
    }

    public function getComments() {
        global $config;
        $this->comments = array();
        foreach(range(2021, date("Y")) as $year) {
            foreach(getMonths() as $month) {
                foreach(range(1,31) as $day) {
                    if($day < 10) {
                        $day = '0'.$day;
                    }
                    $cur_dir = $config['data_directory']."/".$year.'/'.$month.'/'.$day;
                    if(is_dir($cur_dir)) {
                        foreach(scandir($cur_dir) as $filename) {
                            if(strpos($filename, "user_reservations") === 0) {
                                $row = 1;
                                if (($handle = fopen($cur_dir.'/'.$filename, "r")) !== false) {
                                    while (($data = fgetcsv($handle, 0, ";")) !== false) {
                                        if($row > 1) {
                                            $arr_data = $data[4].' - '.$data[5];
                                            if(array_key_exists($data[1], $this->comments)) {
                                                array_push($this->comments[$data[1]], $arr_data);
                                            } else {
                                                $this->comments[$data[1]] = array($arr_data);
                                            }
                                        }
                                        $row++;
                                    }
                                    fclose($handle);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

?>