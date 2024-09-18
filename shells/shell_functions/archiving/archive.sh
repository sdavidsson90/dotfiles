# Automatically archives

archive() {
  
  if [ -z "$@" ]; then
    echo "No target file(s) provided."
    exit 1
  fi

  for i in "$@"; do
    if [ -f "$i" ]; then
        zip -r $i.zip $i
    else
      echo "$i is not a file"
    fi
  done
  
}
