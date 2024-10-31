<?php
class Item extends Db
{
    public function getAllItems()
    {
        $sql = self::$connection->prepare("SELECT * From `items`");
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }
}
