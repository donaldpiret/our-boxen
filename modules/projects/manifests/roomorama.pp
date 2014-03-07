class projects::roomorama {
  include imagemagick
  include wkhtmltopdf

  roomorama::project { 'roomorama':
    dotenv        => false,
    memcached     => true,
    elasticsearch => true,
    mysql         => true,
    nginx         => true,
    redis         => true,
    ruby          => '2.1.1',
    source        => 'https://github.com/roomorama/roomorama.git',
    server_aliases => 'api.roomorama.dev translate.roomorama.dev'
  }
}