echo -n "Preparing the scenario ..."
while [ ! -f /tmp/.pre_done_1 ]; do echo -n "."; sleep 1; done
echo DONE