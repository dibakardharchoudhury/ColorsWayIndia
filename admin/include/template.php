<?php
if (!defined('WEB_ROOT')) {
	exit;
}

$self = 'http://localhost/colorswayindia/admin/index.php';
?>
<html>
<head>
<title><?php echo $pageTitle; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="http://localhost/colorswayindia/admin/include/admin.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/javascript" src="http://localhost/colorswayindia/library/common.js"></script>
<?php
$n = count($script);
for ($i = 0; $i < $n; $i++) {
	if ($script[$i] != '') {
		echo '<script language="JavaScript" type="text/javascript" src="http://localhost/colorswayindia/admin/library/' . $script[$i]. '"></script>';
	}
}
?>
</head>
<body>
<table width="750" border="0" align="center" cellpadding="0" cellspacing="1" class="graybox">
  <tr>
    <td colspan="2"><img src="http://localhost/colorswayindia/admin/include/banner-top.gif" width="750" height="75"></td>
  </tr>
  <tr>
    <td width="150" valign="top" class="navArea"><p>&nbsp;</p>
      <a href="http://localhost/colorswayindia/admin/" class="leftnav">Home</a>
	  <a href="http://localhost/colorswayindia/admin/category/" class="leftnav">Category</a>
	  <a href="http://localhost/colorswayindia/admin/product/" class="leftnav">Product</a>
	  <a href="http://localhost/colorswayindia/admin/order/?status=Paid" class="leftnav">Order</a>
	  <a href="http://localhost/colorswayindia/admin/config/" class="leftnav">Shop Config</a>
	  <a href="http://localhost/colorswayindia/admin/user/" class="leftnav">User</a>
	  <a href="<?php echo $self; ?>?logout" class="leftnav">Logout</a>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    <td width="600" valign="top" class="contentArea"><table width="100%" border="0" cellspacing="0" cellpadding="20">
        <tr>
          <td>
<?php
require_once $content;
?>
          </td>
        </tr>
      </table></td>
  </tr>
</table>
<p>&nbsp;</p>
<p align="center">Copyright &copy; 2011 - <?php echo date('Y'); ?> <a href="http://www.themagicbox.co.in"> www.TheMagicBox.co.in</a></p>
</body>
</html>
