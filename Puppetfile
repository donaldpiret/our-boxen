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

github "boxen", "3.0.2"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",   "1.0.0"
github "dnsmasq",  "1.0.0"
github "gcc",      "2.0.1"
github "git",      "1.2.5"
github "homebrew", "1.4.1"
github "hub",      "1.0.3"
github "inifile",  "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",    "1.4.2"
github "nodejs",   "3.2.9"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.3.4"
github "stdlib",   "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",     "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "osx",       ">= 1.0.0"
github "mysql",     ">= 1.1.3"
github "rubymine",  ">= 1.0.2", :repo => "roomorama/puppet-rubymine"
github "textmate",  ">= 1.1.0"
github "wkhtmltopdf", ">= 1.0.0"
github "onepassword", ">= 1.0.2"
github "redis",       ">= 1.0.0"
github "zsh",         ">= 1.0.0"
github "ohmyzsh",     "1.0.0", :repo => "roomorama/puppet-ohmyzsh"
github "chrome",      ">= 1.1.0"
github "imagemagick", ">= 1.2.1"
github "elasticsearch", ">= 1.0.0"
github "things",      ">= 1.0.0", :repo => "donaldpiret/puppet-things"
github "memcached",   ">= 1.2.0"
github "skype",       ">= 1.0.3", :repo => "roomorama/puppet-skype"
github "dropbox",     ">= 1.1.0"
github "sublime_text_2", ">= 1.1.0"
github "propane"
github "java",        ">= 1.1.2", :repo => "roomorama/puppet-java"
github "xquartz",     ">= 1.1.0"
github "spotify",     ">= 1.0.1"
github "evernote",    ">= 2.0.3", :repo => "jasonamyers/puppet-evernote"
github "dotfiles",    ">= 1.0.8", :repo => "roomorama/puppet-dotfiles"
github "git-flow",    ">= 0.2.0", :repo => "b00giZm/puppet-git-flow"
github "statsd",      ">= 1.0.2"
github "wget", ">= 0.0.1"
github "scala", ">= 0.0.1", :repo => "steinim/puppet-scala"
github "phantomjs"
github "python",      ">= 1.2.0"
github "wget",        ">= 0.0.1"
