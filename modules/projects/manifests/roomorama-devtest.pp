class projects::roomorama-devtest {
  roomorama::project { 'roomorama-devtest':
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-devtest.git'
  }
}