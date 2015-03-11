#!/bin/bash

function die()
{
    echo "${@}"
    exit 1
}

# Add .old to any existing Vim file in the home directory
for i in "${HOME}/.vim" "${HOME}/.vimrc"; do
if [ -e $i ]; then
    echo "${i} has been renamed to ${i}.old"
    mv "${i}" "${i}.old" || die "Could not move ${i} to ${i}.old"
fi
done

# Clone MyVim into .vim
git clone https://github.com/qteqpid/myvim.git "${HOME}/.vim" \
|| die "Could not clone the repository to ${HOME}/.vim"

cd "${HOME}/.vim" || die "Could not go into the ${HOME}/.vim"
ln -s "${HOME}/.vim/vimrc" "${HOME}/.vimrc"
