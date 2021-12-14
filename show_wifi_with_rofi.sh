declare -A wifis
nmcli c | grep -v NAME | grep wifi | {
    while read -r line
    do
        variable=($line)
        wifis[${variable[0]}]=${variable[1]}
    done
    ans=$(echo ${!wifis[@]} | tr ' ' '\n' | rofi -dmenu)
    rs=$?
    if [ $rs -eq 0 ]
    then
        nmcli c up ${wifis[$ans]}
    fi
}
