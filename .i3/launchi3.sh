
if [ $# != "2" ]; then
        echo "usage : vsnum vtnum"
        exit
fi

echo $#

export PATH=/users/enseig/brejon/localinstall/bin:$PATH
export LD_LIBRARY_PATH=/users/enseig/brejon/localinstall/lib
export LD_PATH=/users/enseig/brejon/localinstall/lib
startx -- :$1 vt$2
