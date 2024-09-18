# -- 
case $(uname -s) in

  # =================================================================
  Linux)
    
    # --
    alias l="ls -lhF --color=auto --group-directories-first" 
    alias ll="ls -AlhF --color=auto --group-directories-first"
    alias lt="ls -lhFtr --color=auto"
    alias llt="ls -AlhFtr --color=auto"
    alias ltr="ls -lhFt --color=auto"
    alias lltr="ls -AlhFt --color=auto"

    ;;

  # =================================================================
  Darwin)

    # --
    if command -v gls > /dev/null; then
      alias l="gls -lhF --color=auto --group-directories-first"
      alias ll="gls -lhFA --color=auto --group-directories-first"
      alias lt="gls -lhtFr --color=auto"
      alias ltr="gls -lhtF --color=auto"
      alias llt="gls -lhtFAr --color=auto"
      alias lltr="gls -lhtFA --color=auto"
    else
      alias l="ls -lhF --color=auto"
      alias ll="ls -lhFA --color=auto"
      alias lt="ls -lhtFr --color=auto"
      alias ltr="ls -lhtF --color=auto"
      alias llt="ls -lhtFAr --color=auto"
      alias lltr="ls -lhtFA --color=auto"
    fi

    ;;

esac
