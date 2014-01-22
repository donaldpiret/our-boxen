class roomorama::environment {

  # Chrome
  include chrome

  # Propane
  include propane

  # Dropbox
  include dropbox

  # Skype
  include skype

  include osx::finder::unhide_library
  include osx::disable_app_quarantine
}