function R
    docker run -it --rm -v (pwd):/sync -v $HOME/.renv:/root/.local/share/renv dr666m1/myr:version-4.0.0
end
