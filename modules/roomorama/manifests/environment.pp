class roomorama::environment {
  # MySQL
  include mysql
  mysql::db {
  'roomorama'
  }

  # Rubymine
  include rubymine

  # Chrome
  include chrome

  # wkhtmltopdf
  include wkhtmltopdf

  #include projects::super-top-secret-project
}