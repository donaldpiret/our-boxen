class projects::roomorama-cookbooks {
  roomorama::project { 'roomorama-cookbooks':
    dotenv        => false,
    memcached     => false,
    elasticsearch => false,
    mysql         => false,
    nginx         => false,
    redis         => false,
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-cookbooks.git'
  }
}