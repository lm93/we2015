<?php

    $subject = 'Mail from ' . $_POST["firstname"] . ' ' . $_POST["lastname"]; 
    $message_body = $_POST["message"];
    $admin_email_address = $_POST["admin_mail"]; //'luka.manola@hotmail.com';
    mail($admin_email_address, $subject, $message_body);
?>

<script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
<script>alert('Your email has been sent. Thank you!')</script>
<script>window.location = "/we2015"</script>