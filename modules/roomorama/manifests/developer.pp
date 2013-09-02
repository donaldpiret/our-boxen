class roomorama::developer {
  # Rubymine
  include rubymine

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