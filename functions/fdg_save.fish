function fdg_save

  set message ''

  argparse 'm/=+' -- $argv

  if test -z $_flag_m
    echo "missing -m argument. defaulting to 'WIP'."
    set message 'WIP'
  else
    set message $_flag_m
  end

  git add -A .
  git commit -m "$message"
end

