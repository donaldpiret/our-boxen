class projects::roomorama-ingest {
  roomorama::project { 'roomorama-ingest':
      mysql         => true,
      ruby          => '1.9.3',
      source        => 'https://github.com/roomorama/roomorama-ingest.git'
  }
}