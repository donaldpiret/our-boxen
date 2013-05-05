class projects::roomorama-team {
  include mysql
  include nginx

  mysql::db { 'roomorama_team': }

  roomorama::install-project { 'roomorama-team':
    dotenv        => false,
    memcached     => false,
    elasticsearch => false,
    mysql         => false,
    nginx         => true,
    redis         => false,
    ruby          => '1.9.3',
    source        => 'https://github.com/roomorama/roomorama-team.git'
  }
}