<?php
require_once 'library/config.php';

// if no order id defined in the session
// redirect to main page
if (!isset($_SESSION['orderId'])) {
	header('Location: ' . WEB_ROOT);
	exit;
}

$pageTitle   = 'Checkout Completed Successfully';
require_once 'include/header.php';
require_once "Mail.php";


// send notification email
if ($shopConfig['sendOrderEmail'] == 'y')
{
	$subject = "<<New Order for MagicBox>> " . $_SESSION['orderId'];
	$email   = $shopConfig['email'];
	$message = "You have a new order. Check the order details here \n http://" . $_SERVER['HTTP_HOST'] .  '/plaincart/admin/order/index.php?view=detail&oid=' . $_SESSION['orderId'] ;
	//mail($email, $subject, $message, "From: $email\r\nReturn-path: $email");


	$from = "<dibakardharchoudhury@gmail.com>";
	        $to = "<dibakardharchoudhury@yahoo.co.in>, <mesudippal@gmail.com>,<ratul_2783@gmail.com>";


	        $host = "ssl://smtp.gmail.com";
	        $port = "465";
	        $username = "dibakardharchoudhury";
	        $password = "sqlperf83!";

	        $headers = array ('From' => $from,
	          'To' => $to,
	          'Subject' => $subject);
	        $smtp = Mail::factory('smtp',
	          array ('host' => $host,
	            'port' => $port,
	            'auth' => true,
	            'username' => $username,
	            'password' => $password));

	        $mail = $smtp->send($to, $headers, $message);

	        if (PEAR::isError($mail)) {
	          echo("<p>" . $mail->getMessage() . "</p>");
	         } else {
	          echo("<p>Message successfully sent!</p>");
	         }








}


unset($_SESSION['orderId']);
?>
<p>&nbsp;</p><table width="500" border="0" align="center" cellpadding="1" cellspacing="0">
   <tr>
      <td align="left" valign="top" bgcolor="#333333"> <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
               <td align="center" bgcolor="#EEEEEE"> <p>&nbsp;</p>
                        <p>Thank you for shopping with us! We will send the purchased
                            item(s) immediately. To continue shopping please <a href="index.php">click
                            here</a></p>
                  <p>&nbsp;</p></td>
            </tr>
         </table></td>
   </tr>
</table>
<br>
<br>
<?php
require_once 'include/footer.php';
?>