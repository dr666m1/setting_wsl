function bat
    docker run -it --rm -v (pwd):/myapp danlynn/bat $argv
end
