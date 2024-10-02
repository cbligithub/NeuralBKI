# to enable access to x, run
# $xhost +
#
docker run -it --rm \
    --user=$(id -u $USER):$(id -g $USER) \
    --group-add sudo \
    --env="DISPLAY" \
    --workdir="/home/$USER" \
    --volume="$PWD/../:/home/$USER/workspace" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --name general_rd_template \
    general_rd bash
