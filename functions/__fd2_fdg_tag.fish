function __fd2_fdg_tag -a ver msg -d "release, without use of latest-release.txt file"
  __fd2_fdg_sync "$msg"
  git tag -a $ver -m "$msg"
  git push origin --tags
end
