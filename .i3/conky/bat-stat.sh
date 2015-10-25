stat=$(acpi | awk {'print $3'})
if [[ "$stat" == "Charging," ]];
then
  echo ""
else
  echo ""
fi
