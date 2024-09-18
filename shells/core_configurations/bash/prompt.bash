# -- PROMPT
PROMPT_COMMAND=__prompt_command

__prompt_command() {

  # Capture exit code of last command before doing anything else
  EXIT="$?"
  # -----------------------

  # Define colors
  local RCol='\[\e[0m\]'
  local Red='\[\e[0;31m\]'
  local BRed='\[\e[1;31m\]'
  local Gre='\[\e[0;32m\]'
  local BGre='\[\e[1;32m\]'
  local Blu='\[\e[0;34m\]'
  # -----------------------
  # -- Build the prompt:
  PS1='\n'                        # Newline

    # Print error code of previous command there was one
    if [ $EXIT != 0 ]; then
      PS1+="${Red}[Exit code: $EXIT]${RCol}\n\n"
    fi

  # PS1+="${BGre}\u@\h:${RCol}"     # user@hostname
  PS1+="${Blu}\w${RCol}"          # path
  # PS1+=" [$(date "+%H:%M:%S")]"   # date: hms
  
  # 
  if [ $EXIT -eq "0" ]; then
    PS1+="${BGre}\n❯ ${RCol}"
  else
    PS1+="${BRed}\n❯ ${RCol}"
  fi

}
