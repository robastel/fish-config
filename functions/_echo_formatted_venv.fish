function _echo_formatted_venv
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)
  set -l venv_prefix "venv:"

  if set -q VIRTUAL_ENV
    echo -n $blue$venv_prefix(basename $VIRTUAL_ENV)" "$normal
  end
end
