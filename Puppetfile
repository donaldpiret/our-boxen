# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.3.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.


github "dnsmasq",    ">= 1.0.1"
github "foreman",    ">= 1.1.0"
github "gcc",        ">= 2.0.99"
github "git",        ">= 1.3.7"
github "go",         ">= 2.0.1"
github "homebrew",   ">= 1.6.0"
github "hub",        ">= 1.3.0"
github "inifile",    ">= 1.0.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      ">= 1.4.3"
github "nodejs",     ">= 3.5.0"
github "openssl",    ">= 1.0.0"
github "phantomjs",  ">= 2.0.2"
github "pkgconfig",  ">= 1.0.0"
github "repository", ">= 2.3.0"
github "ruby",       ">= 7.2.3"
github "stdlib",     ">= 4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       ">= 1.0.0"
github "xquartz",    ">= 1.1.1"
github "libpng",     ">= 1.0.0"
github "qt",         ">= 1.2.2", :repo => "boxen/puppet-qt"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "osx",         ">= 2.2.2"
github "mysql",       ">= 1.2.0"
github "rubymine",    ">= 1.1.0"
github "textmate",    ">= 1.1.0"
github "wkhtmltopdf", ">= 1.2.1"
github "onepassword", ">= 1.1.0"
github "redis",       "~> 2.1.0", :repo => "grosser/puppet-redis" # https://github.com/boxen/puppet-redis/pull/16
github "zsh",         ">= 1.0.0"
github "ohmyzsh",     ">= 1.0.0", :repo => "samjsharpe/puppet-ohmyzsh"
github "chrome",      ">= 1.1.2"
github "imagemagick", ">= 1.2.1"
github "elasticsearch", ">= 2.1.0"
github "things",      ">= 1.0.0", :repo => "donaldpiret/puppet-things"
github "memcached",   "~> 1.4.0"
github "skype",       ">= 1.0.8"
github "dropbox",     ">= 1.2.0"
github "sublime_text_2", ">= 1.1.2"
github "propane",     ">= 1.0.0"
github "java",        ">= 1.1.8", :repo => "roomorama/puppet-java"
github "spotify",     ">= 1.0.1"
#github "evernote",   ">= 2.0.3", :repo => "jasonamyers/puppet-evernote"
github "dotfiles",    ">= 1.0.8", :repo => "roomorama/puppet-dotfiles"
github "git-flow",    ">= 0.2.0", :repo => "b00giZm/puppet-git-flow"
github "copy",        ">= 0.0.1", :repo => "donaldpiret/puppet-copy"
github "statsd",      ">= 1.0.3"
github "wget",        ">= 1.0.1"
github "scala",       ">= 1.0.3", :repo => "steinim/puppet-scala"
github "phantomjs",   ">= 2.1.0"
github "python",      ">= 1.3.0"
github "wget",        ">= 0.0.1"
github "postgresql",  ">= 3.0.1"
github "sysctl",      ">= 1.0.1"
github "evernote",    ">= 2.0.5"
github "caffeine",    ">= 1.0.0"
