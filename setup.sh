#!/usr/bin/env fish

set this_dir (dirname (status --current-filename))
cp {$this_dir}/functions/*.fish ~/.config/fish/functions/

set function_files (ls ~/.config/fish/functions/*)

for f in $function_files
  source $f
end

set -Ux VIRTUAL_ENV_DISABLE_PROMPT 1
set -Ux fish_color_command -o -r 00afff
set -Ux fish_color_error -o -r ff9488
