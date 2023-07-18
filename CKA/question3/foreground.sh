#!/bin/bash
clear; echo -n 'Initializing scenario ...'; while [ ! -f /tmp/.pre_done_2 ]; do echo -n "."; sleep 1; done; echo "Done"