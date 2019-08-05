<?php
/**
 * Created by PhpStorm.
 * User: sadnan
 * Date: 10/7/2018
 * Time: 1:39 AM
 */


function is_fild($valu){
    if(!empty($valu)){
        return true;
    }else{
        return false;
    }
}
function valid_email($address)
{
    if (filter_var($address, FILTER_VALIDATE_EMAIL)) {
        return true;
    } else {
        return false;
    }

}
    function valid_mobile($number)
    {
        $number = str_replace([' ', '_', '(', ')'], '', $number);
        $pattern = "/^UG0[12]\-\d{1,3}\-\d{1,3}\-\d{1,3}$/i";
        if (preg_match($pattern, $number)) {
            return true;
        } else {
            return false;
        }
    }

    function is_password_matched($pass1, $pass2)
    {
        if ($pass1 == $pass2) {
            return true;
        } else {
            return false;
        }
    }

    function set_error($name, $message)
    {
        global $error;
        $error[$name] = $message;
    }

    function get_error($name)
    {
        global $error;
        if (!empty($error[$name]))
            return $error[$name];

    }

    function valid_filled($va2)
    {

        return !empty($va2);
    }
function no_error(){
    global $error;
    return !empty($error);

}