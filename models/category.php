<?php
class Category extends Db
{
    public function getAllCates()
    {
        $sql = self::$connection->prepare("SELECT * From `categories`");
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }
}