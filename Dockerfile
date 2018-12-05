FROM kalilinux/kali-linux-docker
RUN apt update
RUN apt install -y chromium
RUN apt install -y ssldump
RUN apt install -y psmisc
CMD \
	# Kill the ssldump in the future or the container won't terminate
	((sleep 10s && killall ssldump && cat ~/dump.txt)&) && \
	# Make note of the default route device, we'll need that later to pass to ssldump
	ip route && \
	# Touch the key log or ssldump won't start
	touch ~/ssl.log && \
	# Run Chromium headless in the background and open an HTTPS page
	(SSLKEYLOGFILE=~/ssl.log chromium --no-sandbox --headless --screenshot https://github.com & ) && \
	# Dump the TLS traffic to a file that we will print when the ssl process is killed
	ssldump -dX -S d -i $(ip route | head -1 | cut -d' ' -f5) -l ~/ssl.log 2> /dev/null 1> ~/dump.txt
