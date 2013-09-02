class projects::roomorama-phone {
  roomorama::project { 'roomorama-phone':
    mysql         => true,
    nginx         => true,
    redis         => true,
    ruby          => '2.0.0',
    source        => 'https://github.com/roomorama/roomorama-phone.git',
    server_aliases => 'phone.roomorama.dev'
  }
}