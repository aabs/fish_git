function __fd2_fdg_sync
	__fd2_fdg_save
  if test $status -ne 0
    return $status
  end
  git fetch --all
  git pull origin
  git push origin --all
end

