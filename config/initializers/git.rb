# Get the git version to display in the footer
module Git
  VERSION ||= `VERSION=$(git describe --tags --always 2> /dev/null); if [ $VERSION ]; then echo $VERSION; else echo 'unknown'; fi`.chomp
end
