# -- Tree utility
if command -v eza > /dev/null; then
  alias t="eza -a --tree --icons -I .git"
else
  alias t="ls -RA | grep -v '.git' "
fi
