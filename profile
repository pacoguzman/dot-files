# Your previous .profile  (if any) is saved as .profile.mpsaved
# Setting the path for MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# console user@host
function console {
 ssh -t $1 'cd app/current; if [ -f script/rails ]; then script/rails console; else script/console; fi'
}

# logs user@host
function logs {
 ssh -t $1 'cd app/current; tail -f log/*.log'
}