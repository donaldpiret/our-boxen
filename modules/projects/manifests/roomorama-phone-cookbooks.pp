class projects::roomorama-phone-cookbooks {
  roomorama::project { 'roomorama-phone-cookbooks':
    dotenv        => false,
    memcached     => false,
    elasticsearch => false,
    mysql         => false,
    nginx         => false,
    redis         => false,
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-phone-cookbooks.git'
  }
}