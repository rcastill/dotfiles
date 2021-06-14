### Lid Watcher

On my MSI Modern 14 Laptop, there is a bug in linux, in which the lid open/close event is not consistently fired up by acpid (check using `acpi_listen`). That prevents the system from suspending/resuming on lid events. One thing that I discovered is that if I'm `cat`ing/watching the state file `/proc/acpi/button/lid/LID0/state`, the acpi event is fired consistently.

The hack consists in a script that "watches" the state file every 2 seconds, and a systemd .service file to run it as a service.