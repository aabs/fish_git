function fdg_sync
  set message ''
  argparse 'm/=+' -- $argv

  if test -z $_flag_m
    error "message must be set (use the -m option)" >&2
    return 1
  else
    set message $_flag_m
  end

	fdg_save -m "$message"

  if test $status -ne 0
    return $status
  end
  git fetch --all
  git pull origin
  git push origin --all
end

