function bat
    docker run -it --rm -v (pwd):/myapp danlynn/bat $argv ^ /dev/null
    if test $status -eq 125
        sudo service docker start
        docker run -it --rm -v (pwd):/myapp danlynn/bat $argv
    end
end
