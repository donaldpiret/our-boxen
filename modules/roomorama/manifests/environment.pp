class roomorama::environment {
  # Chrome
  include chrome

  # Propane
  include propane

  # Dropbox
  include dropbox

  # Git configuration
  include git
  git::config::global {
    'color.ui': value => 'true';
    'push.default': value => 'simple';
  }
}