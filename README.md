linux-home
==========

Scripts and configs for my Linux home

 * **zshrc**: ZSH config based on [oh-my-zsh] (https://github.com/robbyrussell/oh-my-zsh 'Oh My Zsh is an open source, community-driven framework for managing your zsh configuration.')
   * zsh-theme "bullet-train"
   * "bullet-train" requires [patched fonts for Powerline users] (https://github.com/powerline/fonts 'Patched fonts for Powerline users') installed
 * **vimrc**: (g)Vim config
 * **bright.zsh**: Set gVim, Task Warrior, Gnome Terminal and Tmux to a bright colour scheme for work in bright environments (balcony, camp, ...).
 * **dark.zsh**: Set gVim, Task Warrior, Gnome Terminal and Tmux to a dark colour scheme for work in dark environments (room, hackcenter, ...).
 * **screenrc**: screen config for those legacy systems without tmux (looking grumpyly at Red Hat)
 * **tmux.conf**: My current tmux setup
   * Prefix bound to CTRL y (handy on german layout keyboards)
   * Requires [Tmux Plugin Manager] (https://github.com/tmux-plugins/tpm 'Tmux Plugin Manager')
   * Maglev Plugin requires [patched fonts for Powerline users] (https://github.com/powerline/fonts 'Patched fonts for Powerline users') installed
 * **tmux.hidden.conf**: Config for a hidden tmux session to share one shell between several users for demos, etc.
   * Prefix bound to CTRL b, so it does not interfere with a possible visible tmux session (bound to prefix y) 
   * No status bar
   * Usage:
     * tmux -S /tmp/hiddentmux -f tmux.hidden.conf
	 * Detach from session (prefix d)
	 * sudo chgrp tmuxshar /tmp/hiddentmux
	 * tmux -S /tmp/hiddentmux att
	 * add users to the group "tmuxshar" for access
 * **tmux-demo.conf**: Config for a tmux session to demonstrate tmux features.
   * Prefix bound to CTRL y (handy on german layout keyboards)
   * Status bar on top for better visibility on projectors and in smaller rooms
 * **task-mux.zsh**: tmux setup to show Task Warrior with a list of available projects in a left sidebar.
