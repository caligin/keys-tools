if [ -z $1 ]; then
  echo "usage: ./keys_on_key.sh { MEDIA_NAME | MEDIA_ABSOLUTE_PATH }"
  echo "  please note that relative paths are not yet supported. use 'readlink 'f for some support on that.'"
  exit 1
fi;
MEDIA=$(basename $1)
EPOCH=$(date +"%s")
USER=$(whoami)
TARGET=/media/$USER/$MEDIA/keys/$EPOCH
mkdir -p $TARGET
cp ~/keys/* $TARGET 
#TODO: conflict detection? like, warn when backupping key repo but in backups there is one that diverged from common parent...
