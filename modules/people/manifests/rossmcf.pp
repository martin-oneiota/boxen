# Personal manifest for Ross McFarlane
# ross@oneiota.co.uk
#
class people::rossmcf {

  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure  => directory
  }

#  repository { $dotfiles:
#    source  => 'jbarnette/dotfiles',
#    require => File[$my]
#  }

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

  osx::global::tap_to_click
  osx::dock::2d
  osx::dock::autohide
  osx::dock::clear_dock
  osx::dock::hide_indicator_lights
  osx::finder::show_hidden_files
  osx::finder::enable_quicklook_text_selection
  osx::finder::no_file_extension_warnings
  include osx::safari::enable_developer_mode
  osx::software_update
  class { 'osx::dock::icon_size':
    size => 64
  }
  class { 'osx::dock::position':
    position => 'bottom'
  }


  class { 'omnifocus':
    version => '2.0.4'
  }

  include vagrant
  include docker

}
