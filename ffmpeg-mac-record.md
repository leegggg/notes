# ffmpeg-mac-record

```shell
ffmpeg -f avfoundation  -capture_cursor 1 -capture_mouse_clicks 1 -i "1:0" -pix_fmt yuv420p -r 25 -c:v libx264 -c:a aac output.mp4
```
