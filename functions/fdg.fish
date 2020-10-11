function fdg -d 'fishdots plugin for doing useful things with git'
  set l (count $argv)
  if test $l -eq 0
    fdg_help
    return 
  end

  set myargv ''
  for x in $argv[2..10]
    switch $x
    case "* *"
      set myargv "$myargv \"$x\""
    case '*'
      set myargv "$myargv $x"
    end
  end
  echo "$myargv"

  switch $argv[1]
    case save 
        eval "fdg_save $myargv"
    case sync 
        eval "fdg_sync $myargv"
    case release 
        eval "fdg_release $myargv"
    case tag 
        eval "fdg_tag $myargv"
    case ed 
        eval "fdg_ed $myargv"
    case '*'
      fdg_help
  end

end

function fdg_help
  echo "usage: fdg <cmd> [-m '<message>'] [-g <tags>]"
  echo
  echo "fishdots plugin for doing useful things with git:"
  echo
  echo "   ed       find a file in the current repo and edit"
  echo "   release  (<ver> <msg>) Update release version, tag and push"
  echo "   save     (-m msg) save all edits"
  echo "   sync     (-m msg) save all edits then push to origin"
  echo "   tag      (<ver> <msg>) release, without use of latest-release.txt file"

end