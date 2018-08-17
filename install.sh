#!/usr/bin/env bash

vim_dir=".vim"
install_dir="$HOME/$vim_dir"
bundle_dir="$install_dir/bundle"
vundle_dir="$bundle_dir/vundle.vim"

vundle_remote="git@github.com:VundleVim/Vundle.vim.git"

# safety check
if ! [ -x "$(command -v vim)" ]; then
	echo "vim could not be found. please install it or add it to your path." >&2
	exit 1
fi

if ! [ -d "$install_dir" ]; then
	echo "creating $install_dir..."

	mkdir -p "$install_dir"
fi

echo "cloning Vundle into $bundle_dir"

if [ -d "$vundle_dir" ]; then
	echo "vundle already installed. updating..."

	pushd "$vundle_dir" > /dev/null

	git fetch origin && git reset --hard origin/master

	popd > /dev/null

else
	echo "cloning vundle from github..."

	git clone $vundle_remote $vundle_dir

fi

echo "running a :PluginInstall..."

vim +PluginInstall +qall

echo "...done."

