<?php
namespace Models;
use PDO;

// Load all configuration options
/** @var array $config */
$config = require_once 'config.php';

class Purchases {
    private $reduced = true;
    private $date;
    private $filename = "purchases.csv";
    private $reduced_filename = "_purchases.csv";
    private $year;
    private $month;
    private $day;

    public function __construct($date, $reduced = true) {
        $this->date = $date;
        $date_array = explode('.', $date);
        $this->day = $date_array[0];
        $this->month = getMonthName($date_array[1]);
        $this->year = $date_array[2];

        $this->reduced = $reduced;
        if($reduced) {
            $this->writeReducedFile();
        }
    }

    public function getPath() {
        global $config;
        $cur_dir = $config['data_directory']."/".$this->year;
        if(!is_dir($cur_dir)) {
            return "";
        }
        $cur_dir .= "/".$this->month;
        if(!is_dir($cur_dir)) {
            return "";
        }
        $cur_dir .= "/".$this->day;
        if(!is_dir($cur_dir)) {
            return "";
        }
        return $cur_dir;
    }

    public function getFilename() {
        $cur_dir = $this->getPath();
        if($cur_dir == "") {
            return "";
        }
        $filename = $cur_dir.'/'.$this->filename;
        if(!is_file($filename)) {
            return "";
        }
        if($this->reduced) {
            $filename = $cur_dir.'/'.$this->reduced_filename;
        }
        return $filename;
    }

    public function writeReducedFile() {
        if($this->getFilename() == "") {
            return;
        }
        $table = fopen($this->getPath() . "/" . $this->filename,'r');
        $temp_table = fopen($this->getPath() . "/" . $this->reduced_filename,'w');

        while(($data = fgetcsv($table, 0, ';')) !== false) {
            unset($data[5]);
            $data = array_values($data);
            fputcsv($temp_table, $data, ';');
        }
        fclose($table);
        fclose($temp_table);
    }
}
?>