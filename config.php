<?php
$CONFIG = array (
  'apps_paths' => 
  array (
    0 => 
    array (
      'path' => '/snap/nextcloud/current/htdocs/apps',
      'url' => '/apps',
      'writable' => false,
    ),
    1 => 
    array (
      'path' => '/var/snap/nextcloud/current/nextcloud/extra-apps',
      'url' => '/extra-apps',
      'writable' => true,
    ),
  ),
  'supportedDatabases' => 
  array (
    0 => 'mysql',
  ),
  'memcache.locking' => '\\OC\\Memcache\\Redis',
  'memcache.local' => '\\OC\\Memcache\\Redis',
  'redis' => 
  array (
    'host' => '/tmp/sockets/redis.sock',
    'port' => 0,
  ),
  'log_type' => 'file',
  'logfile' => '/var/snap/nextcloud/current/logs/nextcloud.log',
  'logfilemode' => 416,
  'passwordsalt' => 'TszU+vWSOLfxH779541iK7ljvtOEpL',
  'secret' => 'zMS60yom7EUzVBEu1NiGTnj70P8rBsoXz0AbrF6W8dqLO1bJ',
  'trusted_domains' => 
  array (
    0 => 'localhost',
    1 => '192.168.0.104',
  ),
  'datadirectory' => '/var/snap/nextcloud/common/nextcloud/data',
  'dbtype' => 'mysql',
  'version' => '20.0.1.1',
  'overwrite.cli.url' => 'http://localhost',
  'dbname' => 'nextcloud',
  'dbhost' => 'localhost:/tmp/sockets/mysql.sock',
  'dbport' => '',
  'dbtableprefix' => 'oc_',
  'mysql.utf8mb4' => true,
  'dbuser' => 'nextcloud',
  'dbpassword' => 'DBPASSWORD',
  'installed' => true,
  'instanceid' => 'ocvfgh430ow8',
  'maintenance' => true,
);
