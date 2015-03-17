# Team manifest for all developers.
#
class teams::dev {
  include oneiota::environment

  # Software
  include sourcetree

  # OS X Defaults
  include osx::safari::enable_developer_mode

  # Handy CLI Bits
  include wget
  include autoconf
  include libtool
  include pcre
  include libpng
}
