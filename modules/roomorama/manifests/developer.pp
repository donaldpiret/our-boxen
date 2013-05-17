class roomorama::developer {
  # Rubymine
  include rubymine

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

  # PhantomJS
  include phantomjs

  # Projects
  include roomorama::projects
}