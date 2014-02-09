class projects::translate {
roomorama::project { 'translate':
  mysql         => true,
  nginx         => true,
  ruby          => '1.9.3',
  source        => 'https://github.com/roomorama/translate.git'
}
}