class people::donaldpiret {
  include people::donaldpiret::applications
  include people::donaldpiret::gitconfig
  include people::donaldpiret::projects

  # Dotfiles
  dotfiles { 'donald': 
  	gituser	=>	'donaldpiret',
  	homedir => "/Users/donald";
  }
}