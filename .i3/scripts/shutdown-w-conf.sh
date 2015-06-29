zenity --title "Shutdown confirmation" --question --text "Are you sure you want to shutdown?"
if [[ $? -eq 0 ]];then 
  shutdown -P now
fi 
