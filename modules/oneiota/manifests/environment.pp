# Tools for everyone at One iota.
#
class oneiota::environment {

  # Software
  include skype
  include googledrive
  include hipchat

  # OS X Defaults
  osx::recovery_message { 'If this Mac is found, please call 0843 216 1010.': }
}
