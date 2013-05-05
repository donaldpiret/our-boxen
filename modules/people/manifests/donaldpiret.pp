class people::donaldpiret {
  include zsh
  include textmate::textmate2::nightly
  include onepassword
  include things
  include skype

  # $home     = "/Users/${::luser}"
  # $my       = "${home}/my"
  # $dotfiles = "${my}/dotfiles"

  # repository { $dotfiles:
  #   source  => 'jbarnette/dotfiles',
  #   require => File[$my]
  # }
}