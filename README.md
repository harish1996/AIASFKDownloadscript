# AIASFKDownloadscript
Place this in the hotstar live stream directory or change the value of TOPDIR for proper download 

## Dependencies : 
1. A Linux System ( lol ! )
2. php 7.0
3. Livestreamer
4. Hotstar sports live streamer

## Instructions :

First install both the dependencies . Then Clone the repository hotstarsportslivestreamer from Github .
Place this repository inside the folder or anywhere .

    sudo apt-get install php7.0 livestreamer
    git clone https://github.com/biezom/hotstarsportslivestreamer.git
    cd hotstarsportslivestreamer
    git clone https://github.com/harish1996/AIASFKDownloadscript.git
    cd AIASFKDownloadscript
    sudo chown u+x downloadall.sh
    mv downloadall.sh ../
    cd ../
    ./downloadall.sh

The Downloaded videos will be available in the ${TOPDIR}/hotstarsportslivestreamer-master/videos folder .
Open the Videos with VLC media Player , Download Codecs if needed .
