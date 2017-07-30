# AIASFKDownloadscript
Place this in the hotstar live stream directory or change the value of TOPDIR for proper download 

## Dependencies : 
1. A Linux System ( lol ! )
2. php 7.0
3. Livestreamer
4. Hotstar sports live streamer

## Instructions :

Clone this repository or Download this repository and `cd` into the folder and run the following statements 

    make install
    make 

This will download the videos in the default quality 360p . 
To change the quality of the download , Use the variable QUALITY which can values like 360p , 404p , 720p , 1080p etc.
For example , the below command will download the videos in 720p Quality 

    make QUALITY=720p     

Make utility will automatically download all the dependencies and install them when make install is run. 

If make is not installed , install make first 
    
    sudo apt-get install make

The Downloaded videos will be available in the ${TOPDIR}/hotstarsportslivestreamer-master/videos folder .
Open the Videos with VLC media Player , Download Codecs if needed .
