class people::roomorama_dev {
  notify { 'class people::roomorama_dev declared': }

include zsh
  include ohmyzsh
  include textmate::textmate2::nightly
  include sublime_text_2

  dotfiles { 'roomorama_dev':
    gituser	=>	'roomorama',
    homedir => "/Users/roomorama";
  }

}