#! /bin/bash
QUALITY="360p"		# Change this Value for Other Qualities
DOWN_OR_STREAM="d"	# Change this to p for streaming / d for downloading
EPISODE[0]=http://www.hotstar.com/tv/as-im-suffering-from-kadhal/14361/meet-the-sufferers/1000179049
EPISODE[1]=http://www.hotstar.com/tv/as-im-suffering-from-kadhal/14361/suffering-from-chaos/1000179050
EPISODE[2]=http://www.hotstar.com/tv/as-im-suffering-from-kadhal/14361/suffering-from-chronic-fighting/1000179051
EPISODE[3]=http://www.hotstar.com/tv/as-im-suffering-from-kadhal/14361/suffering-from-perfection-deficiency/1000179052
EPISODE[4]=http://www.hotstar.com/tv/as-im-suffering-from-kadhal/14361/suffering-from-external-problems/1000179053
EPISODE[5]=http://www.hotstar.com/tv/as-im-suffering-from-kadhal/14361/suffering-from-high-expectations/1000179180
EPISODE[6]=http://www.hotstar.com/tv/as-im-suffering-from-kadhal/14361/suffering-from-pressure-to-perform/1000179054
EPISODE[7]=http://www.hotstar.com/tv/as-im-suffering-from-kadhal/14361/suffering-from-dependency/1000179181
EPISODE[8]=http://www.hotstar.com/tv/as-im-suffering-from-kadhal/14361/suffering-from-a-secret-overdose/1000179056
EPISODE[9]=http://www.hotstar.com/tv/as-im-suffering-from-kadhal/14361/suffering-from-kadhal/1000179057

i=0 # Edit this if you have interrupted the download midway . If already downloaded skip that episode ,else delete that file

while [ $i -le 9 ] ; # Looping through episodes
do
	echo -e "${EPISODE[$i]}\n${QUALITY}\n${DOWN_OR_STREAM}" | ./hotstarlivestreamer.sh
	i=`expr $i + 1`
done

echo -n "Should be done"
