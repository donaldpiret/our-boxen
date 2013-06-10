class projects::roomorama-internal-cookbooks {
  roomorama::project { 'roomorama-internal-cookbooks':
    dotenv        => false,
    memcached     => false,
    elasticsearch => false,
    mysql         => false,
    nginx         => false,
    redis         => false,
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-internal-cookbooks.git'
  }
}