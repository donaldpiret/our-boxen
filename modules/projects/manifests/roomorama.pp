class projects::roomorama {
  include icu4c
  include phantomjs
  include imagemagick
  include elasticsearch
  include redis
  include wkhtmltopdf
  include memcached

  include mysql
  mysql::db { 'roomorama': }

  boxen::project { 'roomorama':
    dotenv        => false,
    memcached     => true,
    elasticsearch => true,
    mysql         => true,
    nginx         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'roomorama/roomorama'
  }
}