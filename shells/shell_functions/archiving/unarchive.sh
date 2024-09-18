# Automatically selects the right unarchiving tool

unarchive() {
  
  if [ -z "$@" ]; then
    echo "No target file(s) provided."
    exit 1
  fi

  for i in "$@"; do
    if [ -f "$i" ]; then
      case "$i" in
        *tar.gz)  
          tar xvzf "$i";;
        *zip)
          unzip "$i";;
        *)
          echo "$i cannot be extracted";;
      esac
    else
      echo "$i is not a file"
    fi
  done
  
}
