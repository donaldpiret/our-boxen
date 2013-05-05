class projects::roomorama {
  include imagemagick
  include elasticsearch
  include redis
  include wkhtmltopdf
  include memcached
  include nginx

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