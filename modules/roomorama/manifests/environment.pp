class roomorama::environment {
  # Chrome
  include chrome

  # Propane
  include propane

  # Dropbox
  include dropbox

  # Skype
  include skype

  # Git configuration
  include git
  git::config::global {
    'color.ui': value => 'true';
  }
  include git-flow

  include osx::finder::unhide_library
  include osx::disable_app_quarantine
}