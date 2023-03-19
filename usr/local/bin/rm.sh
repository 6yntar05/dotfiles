echo rm "${*}?" >&2

#for f in "${@}"
#do
#	echo $f
#done

read -p '^C to cancel'
rm "${@}"
