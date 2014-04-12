class people::donaldpiret::gitconfig {
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
}