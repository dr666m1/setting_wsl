#===== r-notebook =====
if [[ $(uname -a) =~ Microsoft ]]; then
    alias rjupyter='docker run -it -p 8888:8888 --volumes-from rjupyter_dc -v $(mypwd):/sync dr666m1/rjupyter'
else
    alias rjupyter='docker run -it -p 8888:8888 --volumes-from rjupyter_dc -v $(pwd):/sync dr666m1/rjupyter'
fi
