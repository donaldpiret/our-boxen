class projects::roomorama-team {
  roomorama::project { 'roomorama-team':
    mysql         => true,
    nginx         => true,
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-team.git'
  }
}