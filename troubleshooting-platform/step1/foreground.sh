#!/bin/bash
state="Initializing scenario..."; while [ ! -f /tmp/.pre_done_1 ]; do clear; state="${state}."; echo -n $state; sleep 1; done; echo "Done"