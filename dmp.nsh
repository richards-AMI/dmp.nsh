echo -off

:GIT https://github.com/richards-AMI/dmp.nsh

:START
	echo " "
	echo " "
	echo "* ************************************ * ************************************ *"
	echo "* ************************************ * ************************************ *"
	date
	time 
	echo "* ************************************ * ************************************ *"

set -v FN AMI_DMP.log

# If a filename is provided by user
if  x%1 ne x  then  
	set -v FN %1
endif

	date > %FN%
	time >> %FN%
	echo "* ************************************ * ************************************ *" >> %FN%
	echo " " >> %FN%
	
	  for %a in drivers memmap pci 
		  echo " " >> %FN%
		  echo " " >> %FN%
		  echo "* ************************************ * ************************************ *" >> %FN%
		  echo %a >> %FN%
		  %a >> %FN%
		  %a
		  echo " "
		  echo " "
		  echo "* ************************************ * ************************************ *"
	  endfor


:END