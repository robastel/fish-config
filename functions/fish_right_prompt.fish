function fish_right_prompt
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l dark_gray (set_color -o 555)
  set -l normal (set_color normal)
  set -l venv_prefix "venv:"
  set -l git_prefix "branch:"

  echo -n -s (_echo_formatted_venv) (_echo_formatted_git_info)
end
