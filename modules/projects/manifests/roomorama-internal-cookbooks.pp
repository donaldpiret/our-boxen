class projects::roomorama-internal-cookbooks {
  roomorama::project { 'roomorama-internal-cookbooks':
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-internal-cookbooks.git'
  }
}