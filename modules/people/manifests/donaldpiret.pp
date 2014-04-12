class people::donaldpiret {
  include people::donaldpiret::applications
  include people::donaldpiret::gitconfig

  # Dotfiles
  dotfiles { 'donald': 
  	gituser	=>	'donaldpiret',
	  homedir => "/Users/donald";
  }
}