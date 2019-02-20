# ffmpeg-mac-record

```shell
ffmpeg -f avfoundation -i "1:0" -pix_fmt yuv420p -r 25 -c:v libx264 -c:a aac ruth3.mp4
```
