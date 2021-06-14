#!/bin/bash

while true; do cat /proc/acpi/button/lid/LID0/state >/dev/null; sleep 2; done
