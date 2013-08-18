class projects::roomorama-cookbooks {
  roomorama::project { 'roomorama-cookbooks':
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-cookbooks.git'
  }
}