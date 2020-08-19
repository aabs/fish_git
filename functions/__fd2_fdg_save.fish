function __fd2_fdg_save
  set title ''

  echo "commit message? [WIP]: "
  set title (read)
  if test -z $title
    set title 'WIP'
  end

  git add -A .
  git commit -m "$title"
end

