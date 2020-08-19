function __fd2_fdg_save
  set title ''

  echo "commit message? [WIP]: "
  read -c 'WIP' title
  if test -z $title
    set title 'WIP'
  end

  git add -A .
  git commit -m "$title"
end

