class projects::roomorama-feeds {
  roomorama::project { 'roomorama-feeds':
    mysql         => true,
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-feeds.git'
  }
}