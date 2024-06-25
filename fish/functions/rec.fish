function rec --wraps='wl-screenrec -g $(slurp) -f "/home/yaroslav/Videos/Screenrecord $(echo $(timedatectl -p TimeUSec --value show) | tr : _).mp4"' --description 'alias rec=wl-screenrec -g $(slurp) -f "/home/yaroslav/Videos/Screenrecord $(echo $(timedatectl -p TimeUSec --value show) | tr : _).mp4"'
  wl-screenrec -g $(slurp) -f "/home/yaroslav/Videos/Screenrecord $(echo $(timedatectl -p TimeUSec --value show) | tr : _).mp4" $argv
        
end
