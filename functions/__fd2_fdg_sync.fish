function __fd2_fdg_sync
	__fd2_fdg_save
  git fetch --all
  git pull origin
  git push origin --all
end

