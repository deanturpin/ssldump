FROM kalilinux/kali-linux-docker
RUN apt update
RUN apt install -y chromium
RUN apt install -y ssldump
RUN apt install -y psmisc
CMD \
	# Kill the ssldump in the future or it will just sit there
	((sleep 10s && killall ssldump)&) && \

	# Let's see what the interfaces are
	ip a && \

	# Touch the key log or ssldump won't start
	touch ~/ssl.log && \

	# Run Chromium headless in the background and open an https page
	(SSLKEYLOGFILE=~/ssl.log chromium --no-sandbox --headless --screenshot https://github.com/deanturpin & ) && \

	# Dump the TLS traffic
	ssldump -dX -S d -i wlan0 -l ~/ssl.log 2> /dev/null