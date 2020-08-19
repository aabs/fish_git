function __fd2_fdg_tag -a ver msg -d "release, without use of latest-release.txt file"
	set title ''
  set tag ''

  echo "commit message? [WIP]: "
  set title (read)
  if test -z $title
    set title 'WIP'
  end

  echo  "tag (format like '1.2.3'): "
  set tag (read)
  
  git add -A .
  git commit -m "$title"
  git fetch --all
  git pull origin
  git push origin --all

  git tag -a $tag -m "$title"
  git push origin --tags
end
