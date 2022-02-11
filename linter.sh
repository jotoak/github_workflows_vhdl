yourfilenames=`ls $GITHUB_WORKSPACE/src/*.vhd`
for eachfile in $yourfilenames
do
   vcom $eachfile  -lint
done