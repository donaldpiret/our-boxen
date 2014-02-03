class roomorama::developer {
  # Ruby versions
  ruby::version { '1.9.3': }
  ruby::version { '2.0.0': }
  ruby::version { '2.1.0': }

  class { 'ruby::global': version => '2.0.0' }

  ruby::plugin { 'rbenv-gem-rehash':
    ensure => 'v1.1.0',
    source  => 'roomorama/rbenv-gem-rehash'
  }

  # Git configuration
  include git
  git::config::global {
    'color.ui': value => 'true';
  }
  include git-flow

  # Rubymine
  include rubymine
  include mysql
  include copy

  File <| title == "${git::config::configdir}/gitignore" |> {
    source => undef,
    content => template('roomorama/shared/gitignore.erb'),
    require => File["${git::config::configdir}"]
  }

  # PhantomJS
  #include phantomjs

  # Projects
  include roomorama::projects
}
