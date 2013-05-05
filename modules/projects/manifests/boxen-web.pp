class projects::boxen-web {
  include mysql
  include nginx

  mysql::db { 'roomorama_boxen': }

  roomorama::project { 'boxen-web':
    dotenv        => false,
    memcached     => false,
    elasticsearch => false,
    mysql         => true,
    nginx         => true,
    redis         => false,
    ruby          => '1.9.3',
    source        => 'roomorama/boxen-web'
  }
}