class people::donaldpiret::applications {
  include chrome # Chrome
  include propane # Propane
  include dropbox # Dropbox
  include skype # Skype
  include git-flow
  include rubymine
  include copy
  include zsh
  include ohmyzsh
  include textmate::textmate2::nightly
  include onepassword
  include things
  include spotify
  include evernote
  include caffeine
  include python

  # Packages
  package {
    'direnv': ensure => present
  }

  include osx::finder::unhide_library
  include osx::disable_app_quarantine
  include osx::no_network_dsstores
}