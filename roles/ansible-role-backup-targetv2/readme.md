

    backup the following:

    1. /home (Users' personal files and settings)
    2. /etc (System-wide configuration settings)
    3. /var/spool/cron/crontabs (Commands which run automatically)
    4. The script to generate the backup
    5. list of installed applications

    I include these also:
    cp /etc/apt/sources.list ~/sources.list.backup
    apt-key exportall > ~/repositories.key
    Various hardware listings/configurations
    dpkg --get-selections > ubuntu-files
    bash ~/Documents/LinuxDocs/CurrentSys/boot_info_script055.sh
    lshw -html > ~/hardware_info.html
    udevadm info --export-db > file.txt
    dmidecode > bios.txt

    Other applications if data not separate
    apache, any sql db, tomcat
    Document system backup or for multiple install:
    http://users.telenet.be/mydotcom/how...oinventory.htm

    More detail on /etc files to backup - post #3:
    http://ubuntuforums.org/showthread.php?t=1500559

    from lovinglinux - use dpkg to list installed apps
    http://ubuntuforums.org/showpost.php...75&postcount=5
    http://kevin.vanzonneveld.net/techbl...selectupgrade/

    dpkg --get-selections > ~/my-packages
    sudo dpkg --set-selections < my-packages && sudo apt-get dselect-upgrade
