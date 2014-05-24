class people::flyingpig16 {
  $lhome = "/Users/${::luser}"

  include adium
  include apache_directory_studio
  include autoconf
  include chrome
  include csshx
  include dropbox
  include firefox
  include gitx
  include googleearth
  include imagemagick
  include kindle
  include macvim
  include menumeters
  include mongodb
  include mtr
  include plex
  include python
  include screen
  include smcfancontrol
  include spotify
  include steam
  include sublime_text_2
  include tmux
  include tunnelblick
  include vim
  include virtualbox
  include vlc
  include projects::xscreensaver
  include zsh

  sublime_text_2::package {
    'emmet':
      source => 'sergeche/emmet-sublime';
    'puppet':
      source => 'eklein/sublime-text-puppet';
  }

  $packages = [ 'bitchx',
                'htop-osx',
                'imagemagick', ]
                
  package {
    $packages:
      ensure => installed;
  }

   include osx::finder::unhide_library
   include osx::finder::show_hidden_files
   include osx::no_network_dsstores
  
  class { 'osx::dock::icon_size':
    size => 36
  }
  
  class { 'osx::dock::position':
    position => 'bottom'
  }


}
