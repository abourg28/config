export PATH=$PATH:/home/2009/abourg28/bin
alias cws='cd $HOME/git/cs520/group-d/wig/src'
alias dp='cd $HOME/git/design-project'
alias ass='cd $HOME/Dropbox/Assignments'
alias ls="ls --color=auto"
alias lsa="ls -a"
alias lsl="ls -l"
alias cd..="cd .."
alias cgi="cd $HOME/public_html/cgi-bin"
alias home="cd $HOME"
alias src="source $HOME/.profile"
alias vi="vim"
alias open="xdg-open"
alias chrome="google-chrome"
export CGI="~/public_html/cgi-bin"
export WIGGLEDIR="$HOME/git/cs520/group-d/wig/src"
export PATH="$HOME"/Dropbox/SableCC3/bin:$HOME/ant/bin:$PATH

PS1='\[\e[m\][\[\e[1;32m\]\w\[\e[m\]]\n\$'

# This variable must point to the location of the directory containing your desired installation of the Java SDK.
export JAVADIR=/usr/lib/jvm/java-7-openjdk-i386/jre

# This variable tells scripts where to find the JOOS/WIG binaries and libraries.
export JOOSDIR=$HOME/git/public_html/joos
export WIGDIR=$HOME/git/public_html/wig
# We would like to add the current directory . to our CLASSPATH as well the jar file containing the JOOS libraries, jooslib.jar.
export CLASSPATH=.:$JOOSDIR/jooslib.jar:$CLASSPATH
# Add the JAVADIR, WIGDIR and JOOSDIR binaries to the path
export PATH=$JAVADIR/bin:$HOME/git/cs520/git/cs520/group-d/joos/scanparse:$JOOSDIR/bin:$WIGDIR/bin:$PATH:$WIGGLEDIR

# Repeat command: repeat <number> <command>
repeat() {
    n=$1
    shift
    while [ $(( n -= 1 )) -ge 0 ]
    do
        echo ""
        echo "Run #$n -------------------"
        echo ""
        sleep 1
        "$@"
    done
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
