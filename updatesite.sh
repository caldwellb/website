for file in ./_site/*.* 
do
  chmod 644 $file
done
for dir in ./_site/*/
do
  for file in $dir/*.*
  do
    chmod 644 $file
  done
  chmod 755 $dir
done
scp -r _site/* caldwellb@linux.cs.uchicago.edu:~/html
