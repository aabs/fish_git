# fd2_define_command -p fdg -d "fishdots plugin for doing useful things with git"

# fd2_define_subcommand -p fdg -c save -f __fd2_fdg_save -d "save all edits"
# fd2_define_subcommand -p fdg -c sync -f __fd2_fdg_sync -d "save all edits then push to origin"
# fd2_define_subcommand -p fdg -c release -f __fd2_fdg_release -d "(<ver> <msg>) Update release version, tag and push"
# fd2_define_subcommand -p fdg -c tag -f __fd2_fdg_tag -d "(<ver> <msg>) release, without use of latest-release.txt file"
# fd2_define_subcommand -p fdg -c ed -f __fd2_fdg_ed -d "find a file in the current repo and edit"

# bind \cg "vi ~/.config/fish/config.fish"

# set -l name (basename (status -f) .fish){_uninstall}

# function $name --on-event $name
#     bind --erase \cg
# end
