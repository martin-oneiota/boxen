# Personal manifest for Ross McFarlane
# ross@oneiota.co.uk
#
class people::rossmcf {

  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${home}/.dotfiles"

  repository { $dotfiles:
    source  => 'rossmcf/dotfiles'
  }

  include zsh
  include onepassword
  include skype
  include textexpander
  include googledrive
  include hipchat
  include caffeine
  include sizeup
  include notational_velocity::nvalt
  include iterm2::dev
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark
  include dropbox
  include launchbar
  include sourcetree
  include sequel_pro

  include osx::global::tap_to_click
  include osx::dock::2d
  include osx::dock::autohide
  include osx::dock::clear_dock
  include osx::dock::hide_indicator_lights
  include osx::finder::enable_quicklook_text_selection
  include osx::finder::no_file_extension_warnings
  include osx::safari::enable_developer_mode
  include osx::software_update
  class { 'osx::dock::icon_size':
    size => 64
  }
  class { 'osx::dock::position':
    position => 'bottom'
  }


  class { 'omnifocus':
    version => '2.0.4'
  }

  include docker

  homebrew::tap { 'Caskroom/cask': }
  package {
    'mercurial' : 
      ensure => present;
    'Caskroom/cask/puppet':
      ensure => 'latest';
  }

}
