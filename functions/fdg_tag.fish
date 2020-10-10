function fdg_tag -a ver msg -d "release, without use of latest-release.txt file"
  if not test -d ".git"
    warn "Not in root of a git repo. Aborting."
    return 1
  end
  
  set message ''
  set tags ''
  argparse 'm/=+' 'g/=+' -- $argv

  if test -z $_flag_m
    set message (git log -1 --pretty=%B)
  else
    set message $_flag_m
  end

  if test -z $_flag_g
    error "tag must be set (use the -t option)" >&2
    return 1
  else
    set tags $_flag_g
  end
  
  fdg_sync -m "$message"
  if test $status -ne 0
    return $status
  end

  git tag -a $tag -m "$message"
  git push origin --tags
end
