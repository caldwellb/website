for file in ./_site/*.* 
do
  chmod 644 $file
done
scp -r _site/* caldwellb@linux.cs.uchicago.edu:~/html
