conda_activate() {
  envs="$HOME/.conda/environments.txt"
  conda activate $(awk -F '/' '{print $NF}' $envs | fzf -i --no-multi --cycle --height=6)
}

conda_list() {
  conda list | tail -n +4 | sed '$d' | cut -d ' ' -f1 | fzf
}

conda_env_remove() {
  envs="$HOME/.conda/environments.txt"
  echo "Select one or more environments to remove:"
  for i in $(awk -F '/' '{print $NF}' $envs | fzf -i --no-multi --cycle --height=6); do
    conda env remove --name $i
  done
}
