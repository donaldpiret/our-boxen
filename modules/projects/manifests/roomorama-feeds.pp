class projects::roomorama-feeds {
  include mysql
  include nginx

  mysql::db { 'roomorama_feeds': }

  boxen::project { 'roomorama-feeds':
    dotenv        => false,
    memcached     => false,
    elasticsearch => false,
    mysql         => true,
    nginx         => true,
    redis         => false,
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-feeds.git'
  }
}