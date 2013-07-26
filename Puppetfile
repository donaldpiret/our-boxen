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
github "nodejs",   "1.0.0"
github "nvm",      "1.0.0"
github "ruby",     "3.1.0"
github "stdlib",   "3.0.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",     "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "osx",       "1.1.0"
github "repository", "2.0.2"
github "mysql",     "1.1.0"
github "rubymine",  ">= 1.0.2", :repo => "roomorama/puppet-rubymine"
github "textmate",  "1.1.0"
github "wkhtmltopdf", "1.0.0"
github "onepassword", "1.0.0"
github "redis",       "1.0.0"
github "zsh",         "1.0.0"
github "ohmyzsh",     "1.0.0", :repo => "roomorama/puppet-ohmyzsh"
github "chrome",      "1.1.0"
github "imagemagick", "1.2.0"
github "elasticsearch", "1.0.0"
github "things",      "1.0.0", :repo => "donaldpiret/puppet-things"
github "memcached",   "1.2.0"
github "skype",       "1.0.3", :repo => "roomorama/puppet-skype"
github "dropbox",     "1.1.0"
github "sublime_text_2", "1.1.0"
github "propane",     "1.0.0"
github "java",        "1.1.0"
github "xquartz",     "1.1.0"
github "spotify",     "1.0.0"
github "evernote",    "1.0.1", :repo => "jasonamyers/puppet-evernote"
github "dotfiles",    "1.0.8", :repo => "roomorama/puppet-dotfiles"
github "git-flow",    "0.2.0", :repo => "b00giZm/puppet-git-flow"
github "statsd",      "1.0.2"
github "phantomjs",   "1.0.0"
github "python",      "1.2.0"

