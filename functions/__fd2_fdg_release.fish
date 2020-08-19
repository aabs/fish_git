function __fd2_fdg_release -d "a function to prepare a fishdots style release"
    if not test -e latest_release.txt
        warn "release ver file not present. Aborting."
        return
    end
    if not test -d ".git"
        warn "Not in root of a git repo. Aborting."
        return 1
    end

    __fd2_fdg_save

    echo  "tag/version: "
    read -c '0.1.0' tag
    if test -z $tag
    error "Can't proceed without a tag! Aborting" >&2
    return 1
    end

    echo -n "$ver" > latest-release.txt
	set title (git log -1 --pretty=%B)
    git tag -a (cat latest-release.txt) -m "$title"
    git push origin --all
    git push origin --tags
end
