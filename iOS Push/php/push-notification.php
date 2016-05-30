<?php  
/* We are using the sandbox version of the APNS for development. 
For production     environments, change this to ssl://gateway.push.apple.com:2195 
*/
$apnsServer = 'ssl://gateway.sandbox.push.apple.com:2195';
 /* Make sure this is set to the password that you set for your private key when you exported it to the .pem file using openssl on your OS X 
In step 6 Command 2
 */
$privateKeyPassword = '123456';

/* Put your own message here if you want to */
$message = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.";

/* Put your device token here */ 

$deviceToken ='bc78084dd81bc60295f37289bc62b638764f5e5c2b6a0d138a90720fab604254';

/* Replace this with the name of the file that you placed by your PHP script file, containing your private key and certificate that you generated earlier */
$pushCertAndKeyPemFile = 'PushCertificateAndKey.pem';
$stream = stream_context_create();
stream_context_set_option($stream,'ssl','passphrase',$privateKeyPassword);
stream_context_set_option($stream,'ssl','local_cert',$pushCertAndKeyPemFile);
$connectionTimeout = 30;
$connectionType = STREAM_CLIENT_CONNECT | STREAM_CLIENT_PERSISTENT;
$connection = stream_socket_client($apnsServer, $errorNumber, $errorString, $connectionTimeout,$connectionType,$stream);


if (!$connection){
	echo "Failed to connect to the APNS server. Error = $errorString <br/>"; 
	exit;
}else{
	echo "Successfully connected to the APNS. Processing...</br>";
}
$messageBody['aps'] = array('alert' => $message, 'sound' => 'default','badge' => 2);
/*
In iOS 8 and later, the maximum size allowed for a notification payload is 2 kilobytes
Apple Push Notification service refuses any notification that exceeds this limit. 
(Prior to iOS 8 and in OS X, the maximum payload size is 256 bytes.)
*/
$payload = json_encode($messageBody);
$notification = chr(0) . pack('n', 32) . pack('H*', $deviceToken) . pack('n', strlen($payload)) . $payload;
$wroteSuccessfully = fwrite($connection, $notification, strlen($notification));

if (!$wroteSuccessfully){
	echo "Could not send the message<br/>";
} else {
	echo "Successfully sent the message<br/>"; 
}
