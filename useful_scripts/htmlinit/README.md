Create a directory like `~/bin` or `~/scripts`

Place there the script

Make the script executable
`chmod +x ~/bin/your_script.sh`

Add to `.bashrc` line

`export PATH="$HOME/scripts:$PATH"`

Add aliases like

`alias htmlinit='inithtml.sh'`

And we can use the script
