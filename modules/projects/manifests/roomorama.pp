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
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama.git'
  }
}