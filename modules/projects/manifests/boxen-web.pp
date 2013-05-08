class projects::boxen-web {
  include mysql
  mysql::db { 'roomorama_boxen': }

  roomorama::project { 'boxen-web':
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