class people::donaldpiret::gitconfig {
  require git::config

  # Git configuration
  git::config::global {
    'color.ui': value => 'true';
    'alias.st': value => 'status';
    'alias.ci': value => 'commit';
    'alias.di': value => 'diff';
    'alias.lp': value => 'log -p';
    'user.name': value => 'Donald Piret';
    'user.email': value => 'donald@donaldpiret.com';
  }

  File <| title == "${git::config::configdir}/gitignore" |> {
    source => undef,
    content => template('people/gitignore.erb'),
    require => File["${git::config::configdir}"]
  }
}