class projects::roomorama-feeds {
  roomorama::project { 'roomorama-feeds':
    dotenv        => false,
    memcached     => false,
    elasticsearch => false,
    mysql         => true,
    nginx         => false,
    redis         => false,
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-feeds.git'
  }
}