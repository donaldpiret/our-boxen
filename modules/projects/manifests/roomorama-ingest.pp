class projects::roomorama-ingest {
  roomorama::project { 'roomorama-ingest':
      dotenv        => false,
      memcached     => false,
      elasticsearch => false,
      mysql         => true,
      nginx         => false,
      redis         => false,
      ruby          => '1.9.3',
      source        => 'https://github.com/roomorama/roomorama-ingest.git'
  }
}