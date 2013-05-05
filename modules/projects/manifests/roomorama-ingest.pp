class projects::roomorama-ingest {
  include mysql
  include nginx

  roomorama::project { 'roomorama-ingest':
      dotenv        => false,
      memcached     => false,
      elasticsearch => false,
      mysql         => true,
      nginx         => true,
      redis         => false,
      ruby          => '1.9.3',
      source        => 'https://github.com/roomorama/roomorama-ingest.git'
  }
}