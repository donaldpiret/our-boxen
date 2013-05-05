class people::donaldpiret {
  notify { 'class people::donaldpiret declared': }

  include zsh
  include ohmyzsh
  include textmate::textmate2::nightly
  include onepassword
  include things
  include skype
  include osx::finder::unhide_library
  include osx::disable_app_quarantine
  include osx::no_network_dsstores

  # Dotfiles
  include dotfiles
  dotfiles { 'donaldpiret': }

  # Git configuration
  include git
  git::config::global {
    'alias.st': value => 'status';
    'alias.ci': value => 'commit';
    'alias.di': value => 'diff';
    'alias.lp': value => 'log -p';
    'color.ui': value => 'true';
    'user.name': value => 'Donald Piret';
    'user.email': value => 'donald@donaldpiret.com';
  }

  # Cookbooks
  include developers::cookbooks
  include projects::roomorama-devtest
}