{ config, pkgs, ... } :

{
	# Home Directory
	home.username = "zakky";
	home.homeDirectory = "/home/zakky";

 	# Gtk
	gtk.enable = true;
	qt.enable = true;

	# Home Cursor
	  home.pointerCursor = {
   	  package = pkgs.bibata-cursors;
  	  name = "Bibata-Modern-Ice";
  	  size = 24;
	};

	# Gtk Cursor
	gtk.cursorTheme.package = pkgs.bibata-cursors;
	gtk.cursorTheme.name = "Bibata-Modern-Ice";

	# Gtk Theme
	gtk.theme.package = pkgs.tokyonight-gtk-theme;
	gtk.theme.name = "Tokyonight-Dark";

	# Gtk Icons
	gtk.iconTheme.package = pkgs.papirus-icon-theme;
	gtk.iconTheme.name = "Papirus-Dark";

	# Input Method
	i18n.inputMethod = {
		enabled = "fcitx5";
		#fcitx5.waylandFrontend = true;
		fcitx5.addons = with pkgs; [
			fcitx5-anthy
			fcitx5-gtk
			fcitx5-material-color
		];
	};

 	# Packages
	home.packages = with pkgs; [
		(pkgs.python312.withPackages (ppkgs: [
		ppkgs.numpy
		ppkgs.ipython
		ppkgs.pyzmq
		ppkgs.pyserial
		]))

		python3Packages.pygobject3
		xdg-desktop-portal-hyprland
		xfce.thunar
		libreoffice
		qbittorrent
		firefox
		starship
		ripgrep
		zoxide
		jq
		nh
		eza
		bat
		hut
		calc
		ani-cli
		yt-dlp
		zathura
		audacity
		clang-tools
		gf
		vim
		neovim
		emacs
		curl
		wget
		git
		p7zip
		unzip
		xz
		zip
		file
		which
		tree
		gawk
		gnused
		gnutar
		killall
		pistol
		strace
		ltrace
		lsof
		sysstat
		lm_sensors
		pciutils
		usbutils
		dnsutils
		nmap
		btop
		htop
		gotop
		fastfetch
		neofetch
		microfetch
		nitch
		pfetch
		playerctl
		pulseaudio
		pulsemixer
		pavucontrol
		swww
		waypaper
		kitty
		wofi
		rofi-wayland
		wl-clipboard
		waybar
		hyprshot
		hyprnotify
		dunst
		pamixer
		cli-visualizer
		cava
		cmatrix
		cbonsai
		easyeffects
		nwg-look
		lutris
		heroic
		nil
		gcc
		zig
		mpv
		mpc
		mpd
		ncmpcpp
		lua-language-server
		nautilus
		nautilus-python
		nautilus-open-any-terminal
		telegram-desktop
		signal-desktop
		thunderbird
		protonvpn-gui
		protonvpn-cli
		obs-studio
		anydesk
		zoom
		obsidian
 		fzf
		grim
		slurp
		lf
		sl
		cl
		yazi
		superfile
		inkscape
		spotify
		vesktop
	];

	# Imports
 	imports = [
	   ./programs/starship.nix
	   ./programs/zathura.nix
	   ./programs/dunst.nix
	];

	# Home Stuff
	home.stateVersion = "24.11";
	programs.home-manager.enable = true;
}
