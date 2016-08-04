default: sync-repo install-base-packages update-os install-packages sync-time sync-tmp-repos prepare-home install-software install-dotfiles private-cm

sync-repo:
	git pull --rebase

update-os:
	./bin/update_os.sh

install-base-packages: 
	./bin/install_base_packages.sh

install-packages: 
	./bin/install_packages.sh

sync-time:
	./bin/sync_time.sh

sync-tmp-repos:
	./bin/sync_tmp_repos.sh

prepare-home:
	./bin/prepare_home.sh

install-software:
	./bin/install_software.sh

install-dotfiles:
	./bin/install_dotfiles.sh

private-cm:
	./bin/private_cm.sh

set-shell:
	chsh -s `which bash`

