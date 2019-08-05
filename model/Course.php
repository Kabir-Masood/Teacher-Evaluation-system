<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 9/28/18
 * Time: 12:20 PM
 */

include_once __DIR__ . '/../Database.php';

class Course extends Database
{
    public function save_course($courseid,$deptcode,$coursetitle,$coursecredit,$deptf_id)
    {
        $queryString = "insert into course(courseid, deptcode, coursetitle, coursecredit, deptf_id) values('$courseid', '$deptcode', '$coursetitle', '$coursecredit', '$deptf_id');";
        $this->query($queryString);
    }

    public function get_all_course()
    {
        $query_string = "select * from course";
        $q = $this->query($query_string);
        $data = $this->fetch($q);
        return $data;
    }

    public function get_single_course($id)
    {

    }

    public function delete_course($id)
    {

    }

    public function update_course($id)
    {

    }

    /*public function increase_visit_count($id)
    {
        $query_string = "update class_routine set visit_counter = visit_counter+1 where id = $id";
        $this->query($query_string);
    }*/
}