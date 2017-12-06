#
# yarn-run.plugin.zsh
#
# Autocompletion for `yarn run scripts`
#
# Copyright(c) 2015 André König <andre.koenig@posteo.de>
# MIT Licensed
#

function _scripts () {
  compls=$([[ -s $PWD/package.json ]] || return 0 && cat package.json | tr -d " \t\n\r" | ag -o 'scripts\"\:\{(.*?)\}' | sed -e "s/scripts\"\://g" | sed -e "s/{//g" | ag -o '\"(.*?):\"' | sed -e 's/\"//g' | sed -e 's/\:$//g' | sed -e 's/\,//g' | sort)

  completions=(${=compls})
  compadd -- $completions
}

compdef _scripts yarn run
