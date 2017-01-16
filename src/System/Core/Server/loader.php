<?php
/*
  System.Core.Server.loader
*/
function includejs($component_name){
    echo('<script src="./'.str_replace(".","/",$component_name).'.js"></script>');
}
function loadjs($location){
    $location = './'.str_replace('.','/',$location);
    $dir = scandir($location);
    $dir = array_diff($dir,array(".",".."));
    foreach($dir as $script){
        echo('<script src="'.$location.'/'.$script.'"></script>');
    }
}
?>
