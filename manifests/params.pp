class windows_git::params {
  $url        = 'http://cloud.github.com/downloads/msysgit/git/Git-1.8.0-preview20121022.exe'

  case $chocolatey {
    $package = 'git'
  } else {
    $package    = 'Git-Cheetah'
  }

  $chocolatey = 'true'
}
