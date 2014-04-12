class people::donaldpiret {
  include people::donaldpiret::applications
  include people::donaldpiret::gitconfig

  # Dotfiles
  dotfiles { 'donald': 
  	gituser	=>	'donaldpiret',
	  homedir => "/Users/donald";
  }

  File <| title == "${git::config::configdir}/gitignore" |> {
    source => undef,
    content => template('shared/gitignore.erb'),
    require => File["${git::config::configdir}"]
  }

}