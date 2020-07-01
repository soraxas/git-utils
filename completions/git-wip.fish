complete -c git -x -n '__fish_git_using_command wip' -a '(__fish_git_branches)' -d 'BRANCH to switch to after action'

complete -c git -f -n '__fish_git_using_command wip' -s c -l create -d 'enforce to create a wip commit'
complete -c git -f -n '__fish_git_using_command wip' -s r -l revert -d 'enforce to revert a wip commit'

complete -c git -f -n '__fish_git_using_command wip' -l version -d 'display version number'
