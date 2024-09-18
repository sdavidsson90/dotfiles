# --
if command -v batcat > /dev/null; then
  alias bat="batcat"
  alias cat="batcat -pP"
elif command -v bat > /dev/null; then
  alias cat="bat -pP"
fi
