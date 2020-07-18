function __fd2_fdg_release -a ver msg -d "a function to prepare a fishdots style release"
    if not test -e latest_release.txt
        warn "release ver file not present. Aborting."
        return
    end
    if not test -d ".git"
        warn "Not in root of a git repo. Aborting."
        return
    end
    echo -n "$ver" > latest-release.txt
    git add -A .
    git commit -m "$msg"
    git tag -a v(cat latest-release.txt) -m "$msg"
    git push origin --all
    git push origin --tags
end
