<?php
include('includes/config.php');

$a_fisrt = array();

$char_suffix = array("a", "b", "c", "d");



for ($i=1; $i < 14; $i++) {
  if ($i<=9) {
      for ($j=0; $j < 4; $j++) { 
        $suf = $char_suffix[$j % count($char_suffix)];
        $room = "A40$i$suf  ";
        array_push($a_fisrt, $room);
        echo $room;

        $query="insert into new_daniel_hall_a(room_no) values(?)";
        $stmt = $mysqli->prepare($query);
        $rc=$stmt->bind_param('s',$room);
        $stmt->execute();
    }
  } 
  else {
      for ($j=0; $j < 4; $j++) { 
        $suf = $char_suffix[$j % count($char_suffix)];
        $room = "A4$i$suf  ";
        array_push($a_fisrt, $room);
        echo $room;

        $query="insert into new_daniel_hall_a(room_no) values(?)";
        $stmt = $mysqli->prepare($query);
        $rc=$stmt->bind_param('s',$room);
        $stmt->execute();
      }
     
  }
  
    
}

//echo(count($a_fisrt));
//$room_no = 0;
//$query="insert into room_count (count) values(?)";
//$stmt = $mysqli->prepare($query);
//$rc=$stmt->bind_param('i',$room_no);
//$stmt->execute();



?>