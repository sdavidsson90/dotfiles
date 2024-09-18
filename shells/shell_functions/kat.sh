# name: kat
# description: 
#   prints the content of file to stdout
#   useful for providing clear separation between multiple files
#   will print all characters (cat -v)
# usage:
#   kat <file>: cat target file

kat() {
  BOLD=$(tput bold)
  NORM=$(tput sgr0)

  for i in "$@"; do
    local last_modified_date=$(date -r "$i" "+%Y-%m-%-d %H:%M")
    echo "${BOLD}------------------------------- ${NORM}"
    echo "${BOLD}$i // $last_modified_date ${NORM}"
    echo "${BOLD}------------------------------- ${NORM}"
    if [ -f "$i" ] && [ -r "$i" ]; then
      /bin/cat -v "$i"
    else
      echo "$i is not a printable file!"
    fi
  done
}
