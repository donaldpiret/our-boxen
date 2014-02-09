class projects::translate {
  roomorama::project { 'translate':
    mysql         => true,
    nginx         => true,
    ruby          => '2.0.0',
    source        => 'https://github.com/roomorama/translate.git',
    server_aliases => 'translate.roomorama.dev roomorama-translate.dev'
  }
}