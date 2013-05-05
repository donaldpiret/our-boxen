class projects::roomorama {
  include imagemagick
  include elasticsearch
  include redis
  include wkhtmltopdf
  include memcached
  include nginx

  include mysql
  mysql::db { 'roomorama': }

  roomorama::install-project { 'roomorama':
    dotenv        => false,
    memcached     => true,
    elasticsearch => true,
    mysql         => false,
    nginx         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama.git'
  }
}