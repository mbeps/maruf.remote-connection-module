#^ DEPENDENCIES
function title() {
	# clear
	echo $1
}

function installExtensions() {
	extensions=$1
	for extension in "${extensions[@]}"; do
		code --install-extension $extension
	done
}

function remote() {
	title "Remote Development"
	
	extensions=(
		"ms-vscode-remote.remote-containers" 			# Remote Containers
		"ms-vscode-remote.remote-ssh" 					# Remote SSH
		"ms-vscode-remote.remote-ssh-editor" 			# SSH Editor
		"ms-vscode.remote-repositories" 				# Remote Repositories 
	)
	installExtensions "${extensions[@]}"
}