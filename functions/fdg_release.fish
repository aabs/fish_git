function fdg_release -d "a function to prepare a fishdots style release"
    if not test -e latest_release.txt
        warn "release ver file not present. Aborting."
        return
    end
    if not test -d ".git"
        warn "Not in root of a git repo. Aborting."
        return 1
    end

    set message ''
    set ver ''
    argparse 'm/=+' 'v/=+' -- $argv

    if test -z $_flag_m
        set message (git log -1 --pretty=%B)
    else
        set message $_flag_m
    end

    if test -z $_flag_v
        error "version must be set (use the -v option)" >&2
        return 1
    else
        set ver $_flag_v
    end

    fdg_sync -m "$message"

    echo -n "$ver" > latest-release.txt
    git tag -a (cat latest-release.txt) -m "$message"
    git push origin --all
    git push origin --tags
end
