#===== docker =====
export DOCKER_HOST=tcp://localhost:2375
if [[ $(uname -a) =~ Microsoft ]]; then
    alias mydcrm='docker rm -v $(docker ps -a | grep -P '\''^(?!CONTAINER).*(?<!_dc)$'\'' | grep -oP '\''^[^ ]*'\'')'
else
    alias mydcrm='docker rm -v $(docker ps -a | ggrep -P '\''^(?!CONTAINER).*(?<!_dc)$'\'' | ggrep -oP '\''^[^ ]*'\'')'
fi
function mypwd() {
    local PWD=$(pwd)
    echo ${PWD#/mnt}
}
export PATH="$HOME/.docker:$PATH"
