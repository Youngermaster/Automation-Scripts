#!/usr/bin/env sh

echo "Select an emulator to start (type a number and hit enter)"
select name in $(emulator -list-avds); do
  emulator "@${name}"
  break
done
