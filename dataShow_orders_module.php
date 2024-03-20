<?php


function order_list()
{
        include 'orders_data.php';

        $j = 0;

        while ($j < $i) {
                $rating = '';

                echo '<tr >
                    <td>' . $orders[$j]->code . '</td>
                    <td>' . $orders[$j]->items . '</td>
                    <td>' . $orders[$j]->status . '</td>
                    <td>' . $orders[$j]->user_email . '</td>
                    <td>' . $orders[$j]->address . '</td>
            
                    <td><button class="text-light shadow btn btn-danger">Approve</button></td> 
                  </tr>';


                $j++;
        }
}
?>