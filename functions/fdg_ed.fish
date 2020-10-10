function fdg_ed -d "fimd a file in the repo and edit it"
  set -l file (rg --files (git root) | fzf)
  eval "$EDITOR $file"
end

