Node.js Streaming Videos Using Livestreamer, FFMPEG, Socket.io And Imagemagick Over UDP Protocol

Tools Required:
	Node.js: An open-source, cross-platform JavaScript runtime environment for developing a diverse variety of tools and applications.
	Express.js: The fast, unopinionated, minimalist web framework for nodejs.
	Socket.io: Enables real-time bidirectional event-based communication, It works on every platform, browser or device, focusing equally on reliability and speed.
	Livestreamer: A command-line utility that pipes video streams from various services into a video player, such as VLC. The main purpose of Livestreamer is to allow the user to avoid buggy and CPU heavy flash plugins but still be able to enjoy various streamed content.
	FFMPEG: A leading multimedia framework to decode, encode, transcode, mux, demux, stream, filter and play.
	Imagemagick: A free and open-source software suite for displaying, converting, and editing raster image and vector image files.
	
Why UDP?
	Used for media streaming specially.
	Transmission of data is faster than TCP.
	Requires less processing at the transmitting and receiving of hosts.
	It is simple to use for a network.
	The operating system does not need to maintain UDP connections information.
	Does not need the overhead required to detect reliability.
	Does not need to maintain the unexpected deception of a data flow.
	
Installing Dependencies:
	npm install
	
Installing livestreamer & imagemagick on ubuntu:
	sudo apt-get install livestreamer & sudo apt-get install imagemagick
	Note: ffmpeg can be found in ffmpeg-source folder

Application files
	generate-watermark.sh:
		uses imagemagick to add watermark text over image, which will be displayed on top of stream for branding purposes 
	fetch-stream.sh:
		fetches youtube stream through livestreamer and pipe it to ffmpeg
		ffmpeg add watermark image as an overlay on top of streaming video
		ffmpeg then pipe updated stream to node.js server listening on udp port:33333
	server.js:
		initializes ffmpeg child process which will listen on udp port:33333 for incoming stream
		forward video stream to client.html through socket.io
	client.html:
		transform incoming stream to image and then draw that through html5 canvas

Steps To Follow (Run Project):
	1: bash generate-watermark.sh
    2: bash fetch-stream.sh
	3: node server.js
	4: open stream.html in browser (ie:http://33.33.33.40:9000/stream)
	
Screenshots attached in folder.	
	
Developed by: Ali Khan (Full Stack Developer | Data Science Engineer)
Linkedin: pk.linkedin.com/in/p2palikhan
Skype: ali-gaditek
Cell#: +923123740430	