```shell
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen \
 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf

# decode pdf
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=unencrypted.pdf -c .setpdfwrite -f input.pdf

gs -sDevice=png16m -sOutputFile="pic-1.png" -r144 input.pdf
gs -dNOPAUSE -dBATCH -sDEVICE=png16m -sOutputFile="Pic-%d.png" input.pdf
gs -dNOPAUSE -dBATCH -sDEVICE=png16m –dFirstPage=3 –dLastPage=4 -sOutputFile="Pic-%d.png" input.pdf

for file in $(ls *.png);do convert $file -gaussian-blur 0x8 ../$file; done

convert -density 300 -define pdf:use-cropbox=true foo.pdf "foo-%03d.png"

```
