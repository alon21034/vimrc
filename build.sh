VIMRC=~/.vimrc
NOW=`date +%s`

if [ -f $VIMRC ]; then
  echo "$VIMRC already exist"
  echo "backup $VIMRC to `pwd`/vimrc_backup_$NOW"
  mv $VIMRC `pwd`/vimrc_backup_$NOW
else
  echo "$VIMRC not exist"
fi

echo "copy ./vimrc to $VIMRC"

cp ./vimrc $VIMRC 
