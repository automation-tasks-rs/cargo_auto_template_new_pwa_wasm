# github_release_prepare.sh

printf "\033[0;33m    Prepare template.tar.gz to upload manually to the latest GitHub release. \033[0m\n"

printf "\033[0;33m    Use git archive to tar the folder cargo_auto_template_new_pwa_wasm. \033[0m\n"
mkdir -p tmp
git archive -o tmp/template.tar HEAD
printf "\033[0;33m    Delete directories and files not meant for upload. \033[0m\n"
tar -f tmp/template.tar --delete docs 2> /dev/null
tar -f tmp/template.tar --delete target 2> /dev/null
tar -f tmp/template.tar --delete Cargo.lock 2> /dev/null
tar -f tmp/template.tar --delete github_release_prepare.sh 2> /dev/null
gzip -f tmp/template.tar

printf "\n"
printf "\033[0;33m    First copy the files outside the container into a folder where it can be uploaded. \033[0m\n"
printf "\033[0;33m    Now you can upload the files \033[0m\n"
printf "\033[0;33m    template.tar.gz \033[0m\n"
printf "\033[0;33m    to the latest GitHub release. \033[0m\n"
printf "\033[0;32m https://github.com/automation-tasks-rs/cargo_auto_template_new_pwa_wasm/releases \033[0m\n"
printf "\n"
printf "\033[0;33m    After the upload you can delete the files: \033[0m\n"
printf "\033[0;32m rm tmp/template.tar.gz \033[0m\n"
printf "\n"
