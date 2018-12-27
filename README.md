# Docker VNC

Project is forked from https://github.com/ConSol/docker-headless-vnc-container

Docker with VNC is a project who delivers sources to build docker images with VNC server. Such a image it can a used as isolated environment for GUI application. The project is developed as a hobby.

# Build image

## From GitHub repository

- download latest stable version from [website](https://github.com/DocBox12/DockerVNC/releases)
- extract downloaded archive to folder
- open terminal and move to a created folder
- run `chmod +x ./run.sh && ./run.sh`
- follow the instructions

# Change timezone

After starting the container, remember to change the time zone! Default is GMT.

# Passwords

VNC Password: vncpassword
docbox user password: password

# Command

## Connect & Control
If the container is started like mentioned above, connect via one of these options:

* connect via __VNC viewer `localhost:5901`__, default password: `vncpassword`
* connect via __noVNC HTML5 full client__: [`http://localhost:6901/vnc.html`](http://localhost:6901/vnc.html), default password: `vncpassword` 
* connect via __noVNC HTML5 lite client__: [`http://localhost:6901/?password=vncpassword`](http://localhost:6901/?password=vncpassword) 

## Override VNC environment variables
The following VNC environment variables can be overwritten at the `docker run` phase to customize your desktop environment inside the container:
* `VNC_COL_DEPTH`, default: `24`
* `VNC_RESOLUTION`, default: `1280x1024`
* `VNC_PW`, default: `my-pw`

### Example: Override the VNC password
Simply overwrite the value of the environment variable `VNC_PW`. For example in
the docker run command:

    docker run -it -p 5901:5901 -p 6901:6901 -e VNC_PW=my-pw image_name

### Example: Override the VNC resolution
Simply overwrite the value of the environment variable `VNC_RESOLUTION`. For example in
the docker run command:

    docker run -it -p 5901:5901 -p 6901:6901 -e VNC_RESOLUTION=800x600 image_name

# Information about images

## Ubuntu

Docker image is based on the Ubuntu 18.04 LTS

### Installed apps:

- XFCE 4
- Mate-terminal
- TigerVNC Server
- Pluma file editor
- Firefox Browser
- Vim
- Nano
- Wget
- Midnight Commander
- noVNC

### Wallpaper

Wallpaper has download from https://steemit.com/steemit/@son-of-satire/my-1000th-post-on-steemit-free-download-steem-desktop-wallpaper?sort=new

## Known issues

### Sandbox in Google Chrome and Opera browsers

If you try running Google Chrome browser or Opera browser, but you see error:

```text
Failed to move to new namespace: PID namespaces supported, Network namespace supported, but failed: errno = Operation not permitted
Trace/breakpoint trap (core dumped)
```

Create container with flag:

```text
--cap-add=SYS_ADMIN
```

Or run browsers with flag --no-sandbox.

# Support

If you want supported me visit below websites:

Website English: http://bitcoineng.morfiblog.pl/

Website Polish: http://bitcoin.morfiblog.pl/