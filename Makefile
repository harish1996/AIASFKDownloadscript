LIBS=/usr/lib
QUALITY ?= 360p
STREAM ?=n
TOPDIR = ${PWD}
export QUALITY
ifeq ($(STREAM),y)
	DOWN_OR_STREAM = p
else
	DOWN_OR_STREAM = d
endif
export DOWN_OR_STREAM

.PHONY: dependencies clean install all

all : 
	test -d ${TOPDIR}/hotstarsportslivestreamer || ( echo " Run make install first " ; exit 1 )
	cd ${TOPDIR}/hotstarsportslivestreamer && ./downloadall.sh
	echo " Downloaded !! "


dependencies :
	echo -n " Installing Dependencies "
	
	echo -n " Installing livestreamer "
	test -d ${LIBS}/python2.7/dist-packages/livestreamer || sudo apt-get install livestreamer
	
	echo -n "Installing php7.0"
	test -d ${LIBS}/php/7.0 || sudo apt-get install php7.0
	
	echo -n "Installing Git "
	which git || sudo apt-get install git

install : dependencies
	test -d ${TOPDIR}/hotstarsportslivestreamer || git clone https://github.com/harish1996/hotstarsportslivestreamer.git
	sudo chmod u+x ${TOPDIR}/hotstarsportslivestreamer/hotstarlivestreamer.sh
	sudo chmod u+x ${TOPDIR}/downloadall.sh
	cp ${TOPDIR}/downloadall.sh ${TOPDIR}/hotstarsportslivestreamer/
	

clean :
	cd ${TOPDIR}
	mv ${TOPDIR}/hotstarsportslivestreamer/videos/ ${TOPDIR}/
	rm -r ${TOPDIR}/hotstarsportslivestreamer/






