# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version = nil, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

def roomorama_github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "roomorama/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "2.1.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",  "1.0.0"
github "gcc",      "1.0.0"
github "git",      "1.0.0"
github "homebrew", "1.1.2"
github "hub",      "1.0.0"
github "inifile",  "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",    "1.1.0"
#github "nodejs",   "1.0.0"
#github "nvm",      "1.0.0"
github "ruby",     "3.1.0"
github "stdlib",   "3.0.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",     "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "osx"
github "repository"
github "mysql"
github "rubymine"
github "textmate"
github "wkhtmltopdf"
github "onepassword"
github "redis"
github "zsh"
github "ohmyzsh", nil, :repo => "roomorama/puppet-ohmyzsh"
github "chrome"
github "imagemagick"
github "elasticsearch"
github "things"
github "memcached"
github "skype"
github "dropbox"
github "sublime_text_2"
github "propane"
github "elasticsearch"
github "imagemagick"
github "redis"
github "java"
github "xquartz"
github "dotfiles", nil, :repo => "boinger/puppet-dotfiles"


