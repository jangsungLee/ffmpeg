#!/bin/bash

ffmpeg -f v4l2 -s 640x480 -i /dev/video0 -t 20 video.mpg
 
# -f alsa   Use ALSA for audio input 
# -ac 2     Audio channel is Stereo (1 for Mono, 2 for Stereo) 
# -i hw:0   Input Audio Card is 0 
# -f v4l2       Use V4L2 capture device 
# -s 640x480    Resolution is 640 x 480


