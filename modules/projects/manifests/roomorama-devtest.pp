class projects::roomorama-devtest {


  boxen::project { 'roomorama-devtest':
    dotenv        => false,
    memcached     => false,
    elasticsearch => false,
    mysql         => false,
    nginx         => false,
    redis         => false,
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-devtest.git'
  }
}