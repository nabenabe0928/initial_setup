This setup is for Ubuntu.

# Create ubuntu image
You need to use another computer to create the image file.
In this example, we assume that you are using Ubuntu.

1. Format your USB
2. Download ISO image from [this website](https://www.ubuntulinux.jp/products/JA-Localized/download)
3. Install an application called `Startup Disk Creator` if you do not have it
4. Launch the application
5. Choose the locations of your downloaded ISO file and USB
6. Click `Make Startup Disk`

# Boot from BIOS
1. Get in BIOS
2. Change SATA to AHCI, secure boot to false, CSM to enabled, the priority of USB in the boot options and the priority of SSD and HDD (To use SSD as system drive, make the SSD's priority higher)

# Initial Desktop setup
## Mount HDD
If you use HDD as D drive, you need to mount HDD.

```
# Check the path to HDD
$ lsblk -f

# Check the current partition for HDD
$ sudo fdisk /dev/sdb (or sda)
>>> command: p
>>> command: n
>>> command: p
>>> command: w

# Format as ext3
$ sudo mkfs -t ext3 <The path to HDD>
$ sudo mkdir /home2
$ sudo mount <The path to HDD> /home2
# Add the following
$ sudo emacs /etc/fstab
# /dev/sdb1 - Extended HDD
/dev/sdb1   /home2  ext3    relatime    0   2

# Confirm the behavior
$ sudo umount /home2
$ sudo mount -a
$ mount
```

## Setup language
1. Choose Japanese to avoid complications in the first place
2. Run `./change_language.sh`
3. Change `Punctuation style` from the window (`Mozc Settings`) that opens by clicking `Tools > Properties` in `A` at the top-right corner of Desktop
4. (Optional) Change keys for `... IME` into `Ctrl Space` in `Keymap style` in `Mozc Settings` 

## Setup VSCode
1. Download the [setup file](https://code.visualstudio.com/)
2. Run the followings:
```
$ sudo apt install ~/Downloads/<The setup file name>
```
3. Add the following extensions: `Python`, `LaTex Workshop`, `C++`
4. Add the contents in `linter.json` in `~/.config/Code/User/settings.json`
5. Setup the latex environment based on `latex_setup/README.md`

## Setup Anaconda
1. Download the [setup file](https://www.anaconda.com/products/individual#linux)
2. Run `./~/Downloads/<The setup file name>`
3. Run `./initial_anaconda_setup.sh`
Note that we can create a new environment as follows:
```
# Put `-c conda-forge` if python version is too old
$ conda create -n <environment name> python=<version>
```
4. Change the color of ipython
```
$ ./ipython_color_change.sh
# Change the following
$ emacs ~/.ipython/profile_default/ipython_config.py

<Before>
## Set the color scheme (NoColor, Neutral, Linux, or LightBG).
#c.InteractiveShell.colors = 'Neutral'

<After>
## Set the color scheme (NoColor, Neutral, Linux, or LightBG).
c.InteractiveShell.colors = 'Linux'
```

## Setup Github
1. Create a file `~/.github/.gitmessage`
2. Copy `github_setup/.gitmessage` to `~/.github/.gitmessage`
3. Run `./github_setup/initial_git.sh`

## Setup CUDA driver
To use CUDA driver in your computer, we need to setup NVIDIA driver
and CUDA driver.
CUDA driver installation often causes serious issues on your machine,
so we use [Singularity](https://sylabs.io/) to avoid this issue.
1. Check [Your GPU Compute Capability](https://developer.nvidia.com/cuda-gpus) and 
[Table: Cuda Toolkit and Corresponding Driver versions](https://docs.nvidia.com/cuda/cuda-toolkit-release-notes/index.html#cuda-major-component-versions__table-cuda-toolkit-driver-versions)
2. Go to `Software & Updates` and choose `Additional Drivers`
3. Choose `Using NVIDIA driver metapackage from NVIDIA-driver-xxx` and click `Apply Changes`, then reboot
4. Setup the Singularity environment based on the latest version
5. Create an image file by `sudo singularity build <file name>.sif <file name>.conf`
6. Make a shortcut link for the image file `ln -s <The path to sif file> <link name>`
7. Test by `singularity exec --nv <link name> <command to run a script>`