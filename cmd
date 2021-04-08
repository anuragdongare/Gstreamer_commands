v4l2-ctl --device /dev/video1 --list-formats-ext


*********************************************************PC system************************************************************************
Save the file

gst-launch-1.0 v4l2src device="/dev/video0" ! decodebin ! videoconvert ! x264enc tune=zerolatency bitrate=5000 speed-preset=superfast ! filesink location=/home/ics/Documents/Frame_G/OLD_BACKUP/Srinivas_sir/record/gstream.mp4


stream Saved file stream

gst-launch-1.0 filesrc location = /home/ics/Documents/Frame_G/OLD_BACKUP/Srinivas_sir/record/gstream.mp4 ! decodebin ! videoconvert ! x264enc tune=zerolatency bitrate=500 speed-preset=superfast ! rtph264pay ! udpsink host=192.168.1.81 port=5000

*****************************************************BOARD to system***********************************************************
Saved file stream

gst-launch-1.0 v4l2src device="/dev/video4" ! decodebin ! videoconvert ! ducatih264enc bitrate=100 ! queue ! h264parse ! queue ! rtph264pay ! filesink location=/home/root/record_fg/ics1.mp4


stream Saved file stream

gst-launch-1.0 v4l2src device=/home/root/record_fg/a.mp4  ! decodebin ! videoconvert ! queue ! ducatih264enc bitrate=100 ! queue ! h264parse ! queue ! rtph264pay ! udpsink host=192.168.1.81 port=5000

***************************************************************************************************************************

gst-launch-1.0 -e filesrc location= /home/root/record_fg/anil.mp4 ! decodebin ! videoconvert ! queue ! ducatih264enc bitrate=1000 ! queue ! h264parse ! queue ! rtph264pay ! udpsink host=192.168.1.81 port=5000

***************************************************************************************************************************

*******************************************PAL Camera******************************************************************

gst-launch-1.0 v4l2src device="/dev/video1" ! decodebin ! videoconvert ! queue ! ducatih264enc bitrate=1000 ! queue ! h264parse ! queue ! rtph264pay ! udpsink host=192.168.1.81 port=5000

gst-launch-1.0 v4l2src device="/dev/video2" ! decodebin ! videoconvert ! queue ! ducatih264enc bitrate=1000 ! queue ! h264parse ! queue ! rtph264pay ! udpsink host=192.168.1.81 port=5000

gst-launch-1.0 v4l2src device="/dev/video3" ! decodebin ! videoconvert ! queue ! ducatih264enc bitrate=1000 ! queue ! h264parse ! queue ! rtph264pay ! udpsink host=192.168.1.81 port=5000

gst-launch-1.0 v4l2src device="/dev/video4" ! decodebin ! videoconvert ! queue ! ducatih264enc bitrate=1000 ! queue ! h264parse ! queue ! rtph264pay ! udpsink host=192.168.1.81 port=5000

***************************************************************************************************************************
