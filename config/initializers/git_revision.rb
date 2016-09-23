module AppName
  REVISION = `git log --format="%H" -n 1`.chomp
end
