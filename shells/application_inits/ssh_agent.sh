if [ "$(uname -s)"  = "Linux" ]; then

  export SSH_AUTH_SOCK=/run/user/$UID/ssh-agent-$USER.sock
  
  if [ ! -S "$SSH_AUTH_SOCK" ]; then 
    ssh-agent -a "$SSH_AUTH_SOCK" > /dev/null
  fi

fi
