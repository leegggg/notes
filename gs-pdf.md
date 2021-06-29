```shell
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen \
 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf

# decode pdf
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=unencrypted.pdf -c .setpdfwrite -f input.pdf
```
