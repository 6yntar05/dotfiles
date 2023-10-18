#!/bin/bash
# Carelessness protection

is_permanent=true
args=""
OPTIND=1

while getopts ":rt-:" opt; do
    case $opt in
        -)
            case "${OPTARG}" in
                perm)
                    is_permanent=true
                    ;;
                trash)
                    is_permanent=false
                    ;;
                help)
                    printf -- "rm.sh : carelessness protection script\n"
                    printf -- "move files to ~/.trash and print target files with additional confirm\n"
                    printf -- "Usage: rm (args) (other args) [files]\n"
                    printf -- "\t--help     : show help message\n"
                    printf -- "\t--perm     : remove files permanently\n"
                    printf -- "\t--trash -t : move files to trash\n"
                    printf -- "\t  ...      : other rm/mv args"
                    exit 1
                    ;;
                *)
                    args+=" --${OPTARG}"
                    ;;
            esac
            ;;
        t)
            is_permanent=false
            ;;
        r)
            if [ "$is_permanent" = true ]; then
                args+=" -r"
            fi
            ;;
        \?)
            args+=" -$OPTARG"
            ;;
    esac
done
shift "$((OPTIND-1))"

echo "[!!] Removing: ${*}" >&2
echo "Args:$args"
read -rp '> Hit ^C to cancel'

if [ "$is_permanent" = true ]; then
    /bin/rm $args -- "${@}"
else
    suffix=$(date +%Y-%m-%d-%H-%M-%S)
    mkdir -p ~/.trash/"${suffix}"
    /bin/mv $args -- "${@}" ~/.trash/"${suffix}"/
fi
exit $?