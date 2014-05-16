class people::donaldpiret {
  notify { 'class people::donaldpiret declared': }

  include zsh
  include ohmyzsh
  include textmate::textmate2::nightly
  include onepassword
  include things
  include spotify
  #include evernote
  include osx::no_network_dsstores
  #include scala
  include python
  #include nodejs::v0-10
  # Postgresql
  include postgresql

  # Packages
  package {
    'direnv': ensure => present
  }

  # Dotfiles
  dotfiles { 'donald': 
  	gituser	=>	'donaldpiret',
	homedir => "/Users/donald";
  }

  # Git configuration
  include git
  git::config::global {
    'alias.st': value => 'status';
    'alias.ci': value => 'commit';
    'alias.di': value => 'diff';
    'alias.lp': value => 'log -p';
    'user.name': value => 'Donald Piret';
    'user.email': value => 'donald@donaldpiret.com';
  }

  # Other projects
  include roomorama::cookbooks
  include projects::roomorama-devtest
  include projects::translate

  # Some personal projects
  roomorama::project { 'donaldpiret':
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

  roomorama::project { 'trainersvault':
    dotenv        => false,
    memcached     => false,
    elasticsearch => false,
    mysql         => false,
    postgresql    => true,
    nginx         => true,
    redis         => true,
    ruby          => '2.1.1',
    source        => 'https://github.com/trainers/tv-gamma.git',
    server_aliases => 'trainersvault.dev'
  }
}