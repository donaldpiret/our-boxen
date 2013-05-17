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
    'push.default': value => 'simple';
  }
  include git-flow

  File <| title == "${git::config::configdir}/gitignore" |> {
    source => undef,
    content => template('roomorama/shared/gitignore.erb'),
    require => File["${git::config::configdir}"]
  }
}