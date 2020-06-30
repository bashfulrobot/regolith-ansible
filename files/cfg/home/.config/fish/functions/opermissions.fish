function opermissions -d "Display the existing octal permissions on a file/folder."
    stat -c '%A %a %n' $argv
end