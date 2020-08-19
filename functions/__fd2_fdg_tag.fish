function __fd2_fdg_tag -a ver msg -d "release, without use of latest-release.txt file"
  __fd2_fdg_sync
  if test $status -ne 0
    return $status
  end

  echo  "tag [format like '1.2.3']: "
  set tag (read)
  if test -z $tag
    error "Can't proceed without a tag! Aborting" >&2
    return 1
  end
	set title (git log -1 --pretty=%B)
  git tag -a $tag -m "$title"
  git push origin --tags
end
