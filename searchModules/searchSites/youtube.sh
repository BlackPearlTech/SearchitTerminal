# Youtube Search Function

function youtube() {
    dbCheck
    query=${tmpquery//\ /+}
    if [ "$opParam" == '-video' ] || [ "$opParam" == '-vid' ]
            then {
              query=${query/-vid+}
              query=${query/-video+}
              option="EgIQAQ%253D%253D"
        }
    elif [ "$opParam" == '-channel' ] || [ "$opParam" == '-cnl' ]
            then {
              query=${query/-cnl+}
              query=${query/-channel+}
              option="EgIQAg%253D%253D"
      }
    elif [ "$opParam" == '-playlist' ] || [ "$opParam" == '-plt' ]
            then {
              query=${query/-plt+}
              query=${query/-playlist+}
              option="EgIQAw%253D%253D"
      }
    elif [ "$opParam" == '-movie' ] || [ "$opParam" == '-mve' ]
            then {
              query=${query/-mve+}
              query=${query/-movie+}
              option="EgIQBA%253D%253D"
      }
    elif [ "$opParam" == '-show' ] || [ "$opParam" == '-shw' ]
            then {
              query=${query/-shw+}
              query=${query/-show+}
              option="EgIQBQ%253D%253D"
      }
    elif [ "$opParam" == '-short' ] || [ "$opParam" == '-srt' ]
            then {
              query=${query/-srt+}
              query=${query/-short+}
              option="EgIYAQ%253D%253D"
      }
    elif [ "$opParam" == '-long' ] || [ "$opParam" == '-lng' ]
            then {
              query=${query/-lng+}
              query=${query/-long+}
              option="EgIYAg%253D%253D"
      }
    elif [ "$opParam" == '-hour' ] || [ "$opParam" == '-hur' ]
            then {
              query=${query/-hur+}
              query=${query/-hour+}
              option="EgQIARAB"
      }
    elif [ "$opParam" == '-today' ] || [ "$opParam" == '-tdy' ]
            then {
              query=${query/-tdy+}
              query=${query/-today+}
              option="EgQIAhAB"
      }
    elif [ "$opParam" == '-week' ] || [ "$opParam" == '-wek' ]
            then {
              query=${query/-wek+}
              query=${query/-week+}
              option="EgQIAxAB"
      }
    elif [ "$opParam" == '-month' ] || [ "$opParam" == '-mth' ]
            then {
              query=${query/-mth+}
              query=${query/-month+}
              option="EgQIBBAB"
      }
    elif [ "$opParam" == '-year' ] || [ "$opParam" == '-yar' ]
            then {
              query=${query/-yar+}
              query=${query/-year+}
              option="EgQIBRAB"
      }
    elif [ "$opParam" == '-live' ] || [ "$opParam" == '-lve' ]
            then {
              query=${query/-lve+}
              query=${query/-live+}
              option="EgQQAUAB"
      }
    elif [ "$opParam" == '-4k' ]
            then {
              query=${query/-4k+}
              option="EgQQAXAB"
      }
    elif [ "$opParam" == '-hd' ]
            then {
              query=${query/-hd+}
              option="EgQQASAB"
      }
    elif [ "$opParam" == '-caption' ] || [ "$opParam" == '-cc' ]
            then {
              query=${query/-cc+}
              query=${query/-caption+}
              option="EgQQASgB"
      }
    elif [ "$opParam" == '-common' ] || [ "$opParam" == '-cmn' ]
            then {
              query=${query/-cmn+}
              query=${query/-common+}
              option="EgQQATAB"
      }
    elif [ "$opParam" == '-360' ]
            then {
              query=${query/-360+}
              option="EgQQAXgB"
      }
    elif [ "$opParam" == '-hdr' ]
            then {
              query=${query/-hdr+}
              option="EgPIAQE%253D"
      }
    elif [ "$opParam" == '-location' ] || [ "$opParam" == '-lcn' ]
            then {
              query=${query/-lcn+}
              query=${query/-location+}
              option="EgO4AQE%253D"
      }
    elif [ "$opParam" == '-purchase' ] || [ "$opParam" == '-prc' ]
            then {
              query=${query/-prc+}
              query=${query/-purchase+}
              option="EgJIAQ%253D%253D"
      }
    elif [ "$opParam" == '-date' ] || [ "$opParam" == '-dte' ]
            then {
              query=${query/-dte+}
              query=${query/-date+}
              option="CAI%253D"
      }
    elif [ "$opParam" == '-views' ] || [ "$opParam" == '-vws' ]
            then {
              query=${query/-vws+}
              query=${query/-views+}
              option="CAMSAhAB"
      }
    elif [ "$opParam" == '-rate' ] || [ "$opParam" == '-rte' ]
            then {
              query=${query/-rate+}
              query=${query/-rte+}
              option="CAESAhAB"
      }
    elif [ "$opParam" == '-vr180' ] || [ "$opParam" == '-180' ]
            then {
              query=${query/-180+}
              query=${query/-vr180+}
              option="EgPQAQE%253D"
      }
    elif [ "$opParam" == '-3d' ]
            then {
              query=${query/-3d+}
              option="EgQQATgB"
      }

    elif [ "$opParam" == '-help' ] || [ "$opParam" == '-h' ] || [ "$opParam" == '-?' ]
          then {
            echo "  ${aqua}${bold}Youtube Search Filters: ${normal}
                    For Videos            -video     -vid
                    For Channel           -Channel   -cnl
                    For Playlist          -playlist  -plt
                    For Movie             -movie     -mve
                    For Show              -show      -shw
                    For Short Videos      -short     -srt
                    For Long Videos       -long      -lng
                    For Last Hour         -hour      -hur
                    For Today             -today     -tdy
                    For Week              -week      -wek
                    For Month             -month     -mth
                    For Year              -year      -yar
                    For Live              -live      -lve
                    For 4k                -4k
                    For HD                -hd
                    For Caption/CC        -caption   -cc
                    For Creative Commons  -common    -cmn
                    For 360               -360
                    For VR180             -vr180     -180
                    For 3D                -3d
                    For HDR               -hdr
                    For Location          -location  -lcn
                    For Purchase          -purchase  -prc
                    For Short By Date     -date      -dte
                    For Short By Views    -views     -vws
                    For Short By Rating   -rate      -rte
                 "
            exit
      }
    else {
          option=""
        }
    fi

    query=${query/-ytb+}
    query=${query/-youtube+}
    $browser www.youtube.com/results?search_query=$query\&sp=$option
}
