yourfilenames=`ls src/*.vhd`
for eachfile in $yourfilenames
do
   vcom $eachfile  -lint
done