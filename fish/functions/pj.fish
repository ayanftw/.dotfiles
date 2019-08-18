function pj -d "Change directory"
    set -l dir ~/projects
    find -L $dir -mindepth 1 -maxdepth 1 \( -path \$dir'*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' \) -prune -o -type d -print 2> /dev/null | sed "s@^\./@@;s@$dir/@@" | fzf-tmux --query "$argv" | read -l result
    if [ -n "$result" ]
        cd $dir/$result
    end
end
