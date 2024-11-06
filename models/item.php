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
    public function getNewItem($start, $count)
    {
        $sql = self::$connection->prepare("SELECT * From `items`  
        ORDER By `created_at` DESC
        LIMIT ?,?");
        $sql->bind_param("ii", $start, $count);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }

    public function getItemByID($id)
    {
        $sql = self::$connection->prepare("SELECT * From `items`  
        where `if` = ?");
        $sql->bind_param("i", $id);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }

    public function getFeaturedItem($start, $count)
    {
        $sql = self::$connection->prepare("SELECT * From `items`  
        where `featured` = 1
        ORDER BY `created_at` DESC
        LIMIT ?,?");
        $sql->bind_param("ii", $start, $count);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }

    public function search($keyword, $start, $count)
    {
        $sql = self::$connection->prepare("SELECT * From `items`  
        where `content` 
        Like ?
        LIMIT ?,?");
        $keyword = "%$keyword%";
        $sql->bind_param("sii", $keyword, $start, $count);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }

    public function searchCount($keyword)
    {
        $sql = self::$connection->prepare("SELECT * From `items`  
        where `content` 
        Like ?");
        $keyword = "%$keyword%";
        $sql->bind_param("s", $keyword);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }
}
