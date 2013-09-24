# Class: windows::git
#
# This module downloads then installs Git for windows
#
# Parameters: none
#
# Actions:
#


class windows::git{
  $git_url  = 'http://cloud.github.com/downloads/msysgit/git/Git-1.8.0-preview20121022.exe'
  $git_file = 'Git-1.8.0-preview20121022.exe'

  windows_common::download{'Git':
    url  => $git_url,
    file => $git_file,
  }

  package { 'Git-1.8.0':
    ensure          => installed,
    source          => "${::temp}\\${git_file}",
    provider        => 'windows',
    install_options => ['/VERYSILENT','/SUPPRESSMSGBOXES','/LOG'],
    require         => Commands::Download['Git']
  }

}