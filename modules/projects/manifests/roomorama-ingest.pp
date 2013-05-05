class projects::roomorama-ingest {
  include mysql
  include nginx

  mysql::db { 'roomorama_ingest': }

  roomorama::install-project { 'roomorama-ingest':
      dotenv        => false,
      memcached     => false,
      elasticsearch => false,
      mysql         => false,
      nginx         => true,
      redis         => false,
      ruby          => '1.9.3',
      source        => 'https://github.com/roomorama/roomorama-ingest.git'
  }
}