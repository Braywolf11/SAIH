<?php
echo "<table border='1'>";
echo "<thead>";
echo "<tr><th>X</th>";
for($i=1;$i<=10;$i++){
    echo"<th>".$i."</th>";
}
echo "</tr>";
echo "</thead>";
echo "<tbody>";
for($i=1;$i<=10;$i++){
    echo"<tr><th>".$i."</th>";
    for($j=1;$j<=10;$j++){
        $resultado=$i*$j;
        if($resultado==100){
            echo"<td><img src='cien.png' width='20' height='20'></td>";
        }
        else if($resultado%2==0 && $resultado%3!=0){
            echo"<td bgcolor='yellow'>""</td>";
        }else if($resultado%2!=0 && $resultado%3!=0){
            echo"<td bgcolor='green'>""</td>";
        }else if($resultado%3==0){
            echo"<td bgcolor='blue'>""</td>";
        }
        
    }
    echo"</tr>";
 }
echo "</tbody>";
echo "</thead>";
echo "</table>";
?>