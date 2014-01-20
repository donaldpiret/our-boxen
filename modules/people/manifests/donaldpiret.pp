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

  # Cookbooks
  include roomorama::cookbooks
  include projects::roomorama-devtest
}