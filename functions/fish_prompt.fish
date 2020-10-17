function fish_prompt
  set -l last_status $status
  set -l cyan (set_color -o cyan)
  set -l red (set_color -o red)
  set -l green (set_color -o green)
  set -l normal (set_color normal)
  set -l cwd $cyan(prompt_pwd)
  set -l arrow ">"

  if test $last_status -eq 0
    set color_arrow "$green$arrow$normal "
  else
    set color_arrow "$red$arrow$normal "
  end

  echo -n $cwd $color_arrow
end
