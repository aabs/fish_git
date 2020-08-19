function __fd2_fdg_sync
    __fd2_fdg_save $argv
    set branchname (git branch | grep '*' | cut -d' ' -f2)
    if test -z $branchname
      set branchname "master"
    end
    git push origin $branchname
end

