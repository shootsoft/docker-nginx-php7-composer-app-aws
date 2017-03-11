<?php
//*
require __DIR__ . '/vendor/autoload.php';

$log = new \Monolog\Logger('name');
$log->pushHandler(new \Monolog\Handler\StreamHandler('/var/log/www/app.log', Monolog\Logger::WARNING));
$log->addWarning('Foo');
//*/

echo 'hello world <br />';
phpinfo();