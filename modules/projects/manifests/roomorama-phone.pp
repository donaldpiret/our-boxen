class projects::roomorama-phone {
  include mysql
  include redis
  include nginx

  mysql::db { 'roomorama_phone': }

  boxen::project { 'roomorama-phone':
    dotenv        => false,
    memcached     => false,
    elasticsearch => false,
    mysql         => true,
    nginx         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-phone.git'
  }
}