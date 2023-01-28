#!/bin/bash

PLAYBOOK_FILE=site.yml

if [ $# == 1 ]; then
  PLAYBOOK_FILE=$1
fi

ansible-playbook "$PLAYBOOK_FILE" --ask-become-pass

