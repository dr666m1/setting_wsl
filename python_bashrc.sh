#===== python =====
export PATH="$HOME/.pyenv/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
export PYTHONPATH="$WKDIR/library/python:$PYTHONPATH"
alias nbcommit='jupyter nbconvert --to script *.ipynb && git add . && git commit -a'
