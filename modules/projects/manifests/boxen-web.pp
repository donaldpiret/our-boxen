class projects::boxen-web {
  include mysql
  include nginx

  mysql::db { 'roomorama_boxen': }

  roomorama::install-project { 'boxen-web':
    dotenv        => false,
    memcached     => false,
    elasticsearch => false,
    mysql         => false,
    nginx         => true,
    redis         => false,
    ruby          => '1.9.3',
    source        => 'roomorama/boxen-web'
  }
}