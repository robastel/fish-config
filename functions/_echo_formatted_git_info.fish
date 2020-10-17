function _echo_formatted_git_info
  set -l yellow (set_color -o yellow)
  set -l normal (set_color normal)
  set -l git_prefix "git:"

  if test -n $fish_git_prompt
    echo -n $yellow$git_prefix(string trim (fish_git_prompt) -c " ()")$normal
  end
end
