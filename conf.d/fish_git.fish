
fd2_define_command -p fdg -d "fishdots plugin for doing useful things with git"
fd2_define_subcommand -p fdg -c save -f __fd2_fdg_save -d "save all edits"
fd2_define_subcommand -p fdg -c sync -f __fd2_fdg_sync -d "save all edits then push to origin"
fd2_define_subcommand -p fdg -c release -f __fd2_fdg_release -d "(<ver> <msg>) Update release version, tag and push"
fd2_define_subcommand -p fdg -c tag -f __fd2_fdg_tag -d "(<ver> <msg>) release, without use of latest-release.txt file"
fd2_define_subcommand -p fdg -c ed -f __fd2_fdg_ed -d "find a file in the current repo and edit"


set -x myplugin_prefix "hello world: "

bind \cg "vi ~/.config/fish/config.fish"

set -l name (basename (status -f) .fish){_uninstall}

function $name --on-event $name
    bind --erase \cg
end

abbr --add g    'git'
abbr --add gll  'git ll'

abbr --add ga   'git add'
abbr --add gaa  'git add --all'
abbr --add gapa 'git add --patch'
abbr --add gau  'git add --update'
abbr --add gap  'git apply'

abbr --add gb   'git branch'
abbr --add gba  'git branch -a'
abbr --add gbd  'git branch -d'
abbr --add gbl  'git blame -b -w'
abbr --add gbnm 'git branch --no-merged'
abbr --add gbr  'git branch --remote'
abbr --add gbs  'git bisect'
abbr --add gbsb 'git bisect bad'
abbr --add gbsg 'git bisect good'
abbr --add gbsr 'git bisect reset'
abbr --add gbss 'git bisect start'

abbr --add gc   'git commit -v'
abbr --add gc!  'git commit -v --amend'
abbr --add gcn! 'git commit -v --no-edit --amend'
abbr --add gca  'git commit -v -a'
abbr --add gca! 'git commit -v -a --amend'
abbr --add gcan!    'git commit -v -a --no-edit --amend'
abbr --add gcans!   'git commit -v -a -s --no-edit --amend'
abbr --add gcam 'git commit -a -m'
abbr --add gcsm 'git commit -s -m'
abbr --add gcb  'git checkout -b'
abbr --add gcf  'git config --list'
abbr --add gcl  'git clone --recursive'
abbr --add gclean   'git clean -fd'
abbr --add gpristine    'git reset --hard; git clean -dfx'
abbr --add gcm  'git checkout master'
abbr --add gcd  'git checkout develop'
abbr --add gcmsg    'git commit -m'
abbr --add gco  'git checkout'
abbr --add gcount   'git shortlog -sn'
# compdef _git gcount
abbr --add gcp  'git cherry-pick'
abbr --add gcpa 'git cherry-pick --abort'
abbr --add gcpc 'git cherry-pick --continue'
abbr --add gcs  'git commit -S'

abbr --add gd   'git diff'
abbr --add gdca 'git diff --cached'
abbr --add gdcw 'git diff --cached --word-diff'
abbr --add gdct 'git describe --tags `git rev-list --tags --max-count=1`'
abbr --add gdt  'git diff-tree --no-commit-id --name-only -r'
abbr --add gdw  'git diff --word-diff'
abbr --add gf   'git fetch'
abbr --add gfa  'git fetch --all --prune'
abbr --add gfo  'git fetch origin'
abbr --add gg   'git gui citool'
abbr --add gga  'git gui citool --amend'

abbr --add ghh  'git help'

abbr --add gignore  'git update-index --assume-unchanged'
abbr --add gignored 'git ls-files -v | grep "^[[:lower:]]"'
abbr --add gl   'git pull'
abbr --add glg  'git log --stat'
abbr --add glgp 'git log --stat -p'
abbr --add glgg 'git log --graph'
abbr --add glgga    'git log --graph --decorate --all'
abbr --add glgm 'git log --graph --max-count=10'
abbr --add glo  'git log --oneline --decorate'
abbr --add glol "git log --graph --pretty   '%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
abbr --add glola "git log --graph --pretty  '%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
abbr --add glog 'git log --oneline --decorate --graph'
abbr --add gloga    'git log --oneline --decorate --graph --all'
abbr --add glp "_git_log_prettily"
# compdef _git glp=git-log

abbr --add gm   'git merge'
abbr --add gmom 'git merge origin/master'
abbr --add gmt  'git mergetool --no-prompt'
abbr --add gmtvim   'git mergetool --no-prompt --tool=vimdiff'
abbr --add gmum 'git merge upstream/master'
abbr --add gma  'git merge --abort'

abbr --add gp   'git push'
abbr --add gpd  'git push --dry-run'
abbr --add gpoat    'git push origin --all; git push origin --tags'
# compdef _git gpoat=git-push
abbr --add gpu  'git push upstream'
abbr --add gpv  'git push -v'

abbr --add gr   'git remote'
abbr --add gra  'git remote add'
abbr --add grb  'git rebase'
abbr --add grba 'git rebase --abort'
abbr --add grbc 'git rebase --continue'
abbr --add grbi 'git rebase -i'
abbr --add grbm 'git rebase master'
abbr --add grbs 'git rebase --skip'
abbr --add grh  'git reset HEAD'
abbr --add grhh 'git reset HEAD --hard'
abbr --add grmv 'git remote rename'
abbr --add grrm 'git remote remove'
abbr --add grset    'git remote set-url'
abbr --add gru  'git reset --'
abbr --add grup 'git remote update'
abbr --add grv  'git remote -v'

abbr --add gsb  'git status -sb'
abbr --add gsd  'git svn dcommit'
abbr --add gsi  'git submodule init'
abbr --add gsps 'git show --pretty=short --show-signature'
abbr --add gsr  'git svn rebase'
abbr --add gss  'git status -s'
abbr --add gst  'git status'
abbr --add gsta 'git stash save'
abbr --add gstaa    'git stash apply'
abbr --add gstc 'git stash clear'
abbr --add gstd 'git stash drop'
abbr --add gstl 'git stash list'
abbr --add gstp 'git stash pop'
abbr --add gsts 'git stash show --text'
abbr --add gsu  'git submodule update'

abbr --add gts  'git tag -s'
abbr --add gtv  'git tag | sort -V'

abbr --add gunignore    'git update-index --no-assume-unchanged'
abbr --add gunwip   'git log -n 1 | grep -q -c "\-\-wip\-\-"; git reset HEAD~1'
abbr --add gup  'git pull --rebase'
abbr --add gupv 'git pull --rebase -v'
abbr --add glum 'git pull upstream master'

abbr --add gwch 'git whatchanged -p --abbrev-commit --pretty=medium'
abbr --add gwip 'git add -A; git rm (git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"'
abbr --add gpom 'git push origin master'

