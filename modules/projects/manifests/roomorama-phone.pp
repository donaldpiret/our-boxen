class projects::roomorama-phone {
  roomorama::project { 'roomorama-phone':
    mysql         => true,
    nginx         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-phone.git'
  }
}