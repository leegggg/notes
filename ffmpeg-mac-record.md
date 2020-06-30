# ffmpeg-mac-record

```shell
ffmpeg -f avfoundation  -capture_cursor 1 -capture_mouse_clicks 1 -i "1:0" -pix_fmt yuv420p -r 25 -c:v libx264 -c:a aac output.mp4

ffmpeg -ss 00:02:49 -i ./年会节目诗朗诵《90后弄啥嘞》，这节目也太棒了_好看视频.mp4 \
-c:v h264_qsv  \
-filter:v "setpts=1.66666666666667*PTS,drawtext=fontfile=/Windows/Fonts/DejaVuSansMono.ttf: text='0.6x -%{pts\:hms}': x=w-(1*tw)-lh-10: y=2*lh: fontcolor=white: box=1: boxcolor=0x00000000@1: fontsize=w/40: boxborderw=5" \
-c:a aac -filter:a "atempo=0.5" 集体舞蹈0.6速度.timestamp.qsv.mp4

# ASS Subtitle
ffmpeg -i .\[TorrentCouch.com].The.Good.Doctor.S01E01.720p.WEB-HD.x264.ESubs.mkv -c:v h264_nvenc -vf subtitles="The.Good.Doctor.S01E01.720p.HDTV.x264-KILLERS.chs.eng.简体.srt:force_style='FontName=Noto Sans CJK SC Regular,Fontsize=18'" .\[TorrentCouch.com].The.Good.Doctor.S01E01.720p.WEB-HD.x264.ESubs.chs.mkv

# windows capt
 ffmpeg -f dshow -i audio="Stereo Mix (2- Realtek High Definition Audio)"  -f gdigrab  -i desktop -framerate 12 -c:v h264_qsv -c:a aac output.mkv

```
