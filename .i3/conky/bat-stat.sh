# icon
stat=$(acpi | awk {'print $3'} | sed 's/\,//g')

if [[ "$stat" == "Charging" ]]; then
  echo ""
else
  echo ""
fi

# color
percentage=$(acpi | awk {'print $4'} | sed 's/\%,//g')

if [[ "$percentage" -lt "15" ]]; then
	echo "red"
else
	echo "#7f9f7f"
fi