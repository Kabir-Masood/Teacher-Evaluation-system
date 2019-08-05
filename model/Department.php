<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 9/28/18
 * Time: 12:20 PM
 */

include_once __DIR__ . '/../Database.php';

class Department extends Database
{
    public function save_dept($deptcode, $deptname)
    {
        $queryString = "insert into department(deptcode, deptname) values('$deptcode', '$deptname');";
        $this->query($queryString);
    }

    public function get_all_dept()
    {
        $query_string = "select * from department";
        $q = $this->query($query_string);
        $data = $this->fetch($q);
        return $data;
    }

    public function get_single_department($id)
    {

    }

    public function delete_department($id)
    {

    }

    public function update_update($id)
    {

    }

    /*public function increase_visit_count($id)
    {
        $query_string = "update class_routine set visit_counter = visit_counter+1 where id = $id";
        $this->query($query_string);
    }*/
}