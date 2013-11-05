class people::roomorama-dev {
  include zsh
  include ohmyzsh
  include textmate::textmate2::nightly
  include sublime_text_2

  dotfiles { 'roomorama':
    gituser	=>	'roomorama',
    homedir => "/Users/roomorama";
  }

}