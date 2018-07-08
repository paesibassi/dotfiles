# some startup code, executed only with the first bash session


# checks the existance of .bashrc, and sources it in case
if [ -f ~/.bashrc ]; then
	# .bashrc would be normally executed in case of
	# a new bash session, this will make it run all the time
	# so we can put all the startup code there
	source ~/.bashrc 
fi

# added by Snowflake SnowSQL installer v1.0
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH

# added by Anaconda3 5.1.0 installer
export PATH="/anaconda3/bin:$PATH"
