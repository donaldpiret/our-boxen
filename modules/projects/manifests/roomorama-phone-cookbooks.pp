class projects::roomorama-phone-cookbooks {
  roomorama::project { 'roomorama-phone-cookbooks':
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-phone-cookbooks.git'
  }
}