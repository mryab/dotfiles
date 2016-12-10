alias vim=nvim
alias ..=cd ..
c(){
    if ! [ $# -eq 0 ]
        then
        clang -fsanitize=address,undefined -std=c11 -Wall -Werror "$1" -o b.out
    fi
}
mkcd () {
  mkdir "$1"
  cd "$1"
}
ts(){
    if ! [ $# -eq 0 ]
        then
        for f in *.txt
            do ./$1 <$f
        done
    fi
}
