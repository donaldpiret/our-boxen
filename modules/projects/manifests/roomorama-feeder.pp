class projects::roomorama-feeder {
  roomorama::project { 'roomorama-feeder':
    mysql         => true,
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-feeder.git'
  }
}