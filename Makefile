default: sync-repo update-os install-packages sync-tmp-repos install-dotfiles

sync-repo:
	echo git pull --rebase

update-os:
	./bin/update_os.sh

install-packages: 
	./bin/install_packages.sh

sync-tmp-repos:
	./bin/sync_tmp_repos.sh

install-dotfiles:
	./bin/install_dotfiles.sh

set-shell:
	chsh -s `which bash`

