#!/bin/sh
# ------------------------------------------------------------------
# [Nic Acton] IQT AES 256 Hash Generation
#             Create Hashsum file for checking.
# ------------------------------------------------------------------
VERSION=0.1.0
USAGE="Usage: command <path/to/directorytocheck>"
CHECKSUMDIRECTORY=$1

# --- Options processing -------------------------------------------
if [ $# == 0 ] ; then
  echo $USAGE
  exit 1;
fi

while getopts ":hv" optname
  do
    case "$optname" in
      "v")
        echo "Version $VERSION"
        exit 0;
        ;;
      "h")
        echo $USAGE
        exit 0;
        ;;
      "?")
        echo "Unknown option $OPTARG"
        exit 0;
        ;;
      ":")
        echo "No argument value for option $OPTARG"
        exit 0;
        ;;
      esac
    done
