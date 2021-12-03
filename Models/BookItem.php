<?php
namespace Models;
use PDO;

// Load all configuration options
/** @var array $config */
$config = require_once 'config.php';

class BookItem {
    private int $user_id;
    private int $amount;
    private int $id;
    private string $comment;
    private string $username;
    private string $date_ts;
    private string $date;
    private string $name;
    private int $booked;

    public function __construct($tempBookData, string $username, string $date, string $comment="") {
        $this->user_id = $tempBookData['user_id'];
        $this->username = $username;
        $this->amount = $tempBookData['item_amount'];
        $this->id = $tempBookData['item_id'];
        $this->comment = $comment;
        $this->date_ts = $date;
        $this->date = date("d/m/y", $date);
        $this->name = $tempBookData['name'];
        $this->booked = $tempBookData['booked'];
    }

    public function createFile($directory, $filename) {
        $header_text = "ID;Номенклатура;Дата записи;Количество (кг);Комментарий\n";
        $header_text = iconv("UTF-8", "windows-1251//IGNORE", $header_text);
        file_put_contents($directory.'/'.$filename, $header_text);
        print($filename);
    }

    public function writeData($directory, $filename) {
        $clean_comment = str_replace(';', ',', $this->comment);
        $raw_data = $this->id.';'.$this->name.';'.$this->date.';'.$this->amount;
        
        $raw_data .= ';'.$clean_comment."\n";
        $raw_data = iconv("UTF-8", "windows-1251//IGNORE", $raw_data);
        file_put_contents($directory.'/'.$filename, $raw_data, FILE_APPEND);
    }

    public function updateDB() {
        global $config;
        $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password']);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = "UPDATE sharif_items SET booked=(:booked) WHERE id=(:id)";
        $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
        $sth->execute(array(':booked'=>($this->booked + $this->amount), ':id'=>$this->id));

        $sql = "DELETE FROM sharif_temp_reservations WHERE user_id=(:user_id)";
        $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
        $sth->execute(array(':user_id'=>$this->user_id));
    }

    public function saveData() {
        global $config;
        $cur_dir = $config['data_directory']."/".date("Y", $this->date_ts);
        if(!is_dir($cur_dir)) {
            print($cur_dir);
            mkdir($cur_dir);
        }
        $cur_dir .= "/".date("F", $this->date_ts);
        if(!is_dir($cur_dir)) {
            print($cur_dir);
            mkdir($cur_dir);
        }
        $cur_dir .= "/".date("d", $this->date_ts);
        if(!is_dir($cur_dir)) {
            print($cur_dir);
            mkdir($cur_dir);
        }

        $filename = "user_reservations_".mb_substr($this->username, 1).".csv";

        if(!file_exists($cur_dir."/".$filename)) {
            $this->createFile($cur_dir, $filename);
        }

        $this->writeData($cur_dir, $filename);
        $this->updateDB();
    }
}
?>