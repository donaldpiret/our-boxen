class people::donaldpiret::projects {
  # Some personal projects
  boxen::project { 'donaldpiret.com':
    dotenv        => false,
    memcached     => false,
    elasticsearch => false,
    mysql         => true,
    nginx         => true,
    redis         => false,
    ruby          => '2.0.0',
    source        => 'https://github.com/donaldpiret/donaldpiret.com.git',
    server_aliases => 'donaldpiret.dev'
  }

  boxen::project { 'trainersvault':
    dotenv        => false,
    memcached     => false,
    elasticsearch => false,
    mysql         => false,
    postgresql    => true,
    nginx         => true,
    redis         => true,
    ruby          => '2.1.1',
    source        => 'https://github.com/trainers/trainersvault.git',
    server_aliases => 'www.trainersvault.dev'
  }
}