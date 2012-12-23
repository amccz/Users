<?php

class Users extends \Nette\Object {

	/** @var \DibiConnection */
    private $db;
    private $table = "users";

    public function __construct(\DibiConnection $connection) {
        $this->db = $connection;
    }

    public function findAll() {
        return $this->db->select('*')->from($this->table);
    }
}