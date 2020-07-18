function __fd2_fdg_save -e on_fdg_save
    git add -A .
    git commit -m "$argv"
end

