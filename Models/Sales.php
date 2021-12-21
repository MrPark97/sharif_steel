<?php
namespace Models;

// Load all configuration options
/** @var array $config */
$config = require_once 'config.php';

class Sales
{
    private $reduced = true;
    private $date;
    private $username;
    private $year;
    private $month;
    private $day;
    private $filename = "";
    private $reduced_filename = "";

    public function __construct($date, $username = "", $reduced = true)
    {
        $this->date = $date;
        $date_array = explode('.', $date);
        $this->day = $date_array[0];
        $this->month = getMonthName($date_array[1]);
        $this->year = $date_array[2];

        $this->reduced = $reduced;
        $this->username = $username;
        
        if ($reduced && $username != "") {
            $this->filename = 'user_sales_' . $username . '.csv';
            $this->reduced_filename = "_" . $this->filename;
            $this->writeReducedFile();
        } else if($reduced) {
            $this->writeReducedFiles();
        }
    }

    public function getPath()
    {
        global $config;
        $cur_dir = $config['data_directory'] . "/" . $this->year;
        if (!is_dir($cur_dir)) {
            return "";
        }
        $cur_dir .= "/" . $this->month;
        if (!is_dir($cur_dir)) {
            return "";
        }
        $cur_dir .= "/" . $this->day;
        if (!is_dir($cur_dir)) {
            return "";
        }
        return $cur_dir;
    }

    public function getFilename()
    {
        $cur_dir = $this->getPath();
        if ($cur_dir == "") {
            return "";
        }
        $filename = $cur_dir . '/' . $this->filename;
        if (!is_file($filename)) {
            return "";
        }
        if ($this->reduced) {
            $filename = $cur_dir . '/' . $this->reduced_filename;
        }
        return $filename;
    }

    public function getFilenames()
    {
        $filenames = array();
        $cur_dir = $this->getPath();
        if($this->reduced && $this->username != "") {
            array_push($filenames, $this->getFilename());
        } else if($this->reduced) {
            foreach (scandir($cur_dir) as $filename) {
                if (strpos($filename, "_user_sales") === 0 && is_file($cur_dir . '/' . $filename)) {
                    array_push($filenames, $cur_dir . '/' . $filename);
                }
            }
        } else {
            foreach (scandir($cur_dir) as $filename) {
                if (strpos($filename, "user_sales") === 0 && is_file($cur_dir . '/' . $filename)) {
                    $this->filename = $filename;
                    array_push($filenames, $cur_dir . '/' . $filename);
                }
            }
        }
        
        return $filenames;
    }

    public function writeReducedFile()
    {
        if ($this->getFilename() == "") {
            return;
        }
        $table = fopen($this->getPath() . "/" . $this->filename, 'r');
        $temp_table = fopen($this->getPath() . "/" . $this->reduced_filename, 'w');

        while (($data = fgetcsv($table, 0, ';')) !== false) {
            unset($data[5]);
            $data = array_values($data);
            fputcsv($temp_table, $data, ';');
        }
        fclose($table);
        fclose($temp_table);
    }

    public function writeReducedFiles() {
        $cur_dir = $this->getPath();
        foreach (scandir($cur_dir) as $filename) {
            if (strpos($filename, "user_sales") === 0 && is_file($cur_dir . '/' . $filename)) {
                $this->filename = $filename;
                $this->reduced_filename = '_'.$filename;
                $this->writeReducedFile();
            }
        }
    }
}
