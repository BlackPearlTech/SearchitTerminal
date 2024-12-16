# LinkedIn Search Function

function linkedin() {
    dbCheck
    query=${tmpquery//\ /+}
    if [ "$opParam" == '-people' ] || [ "$opParam" == '-ppl' ]
            then {
              query=${query/-ppl+}
              query=${query/-people+}
              option="people"
        }
    elif [ "$opParam" == '-jobs' ] || [ "$opParam" == '-job' ]
            then {
              query=${query/-job+}
              query=${query/-jobs+}
              query=${query/-lnkdn+}
              query=${query/-linkedin+}
              $browser www.linkedin.com/jobs/search/?keywords=$query
              exit
      }
    elif [ "$opParam" == '-content' ] || [ "$opParam" == '-cnt' ]
            then {
              query=${query/-cnt+}
              query=${query/-content+}
              option="content"
      }
    elif [ "$opParam" == '-company' ] || [ "$opParam" == '-cpy' ]
            then {
              query=${query/-cpy+}
              query=${query/-company+}
              option="companies"
      }
    elif [ "$opParam" == '-school' ] || [ "$opParam" == '-scl' ]
            then {
              query=${query/-scl+}
              query=${query/-school+}
              option="schools"
      }
    elif [ "$opParam" == '-group' ] || [ "$opParam" == '-grp' ]
            then {
              query=${query/-grp+}
              query=${query/-group+}
              option="groups"
      }
    elif [ "$opParam" == '-firstname' ] || [ "$opParam" == '-fnm' ]
            then {
              query=${query/-fnm+}
              query=${query/-firstname+}
              query=${query/-lnkdn+}
              query=${query/-linkedin+}
              $browser www.linkedin.com/people/search?firstName=$query
              exit
      }
    elif [ "$opParam" == '-lastname' ] || [ "$opParam" == '-lnm' ]
            then {
              query=${query/-lnm+}
              query=${query/-lastname+}
              query=${query/-lnkdn+}
              query=${query/-linkedin+}
              $browser www.linkedin.com/people/search?lastName=$query
              exit
      }
    elif [ "$opParam" == '-help' ] || [ "$opParam" == '-h' ] || [ "$opParam" == '-?' ]
          then {
            echo "  ${aqua}${bold}LinkedIn Search Filters: ${normal}
                    For People        -people    -ppl
                    For Jobs          -jobs      -job
                    For Content       -content   -cnt
                    For Companies     -company   -cpy
                    For Schools       -school    -scl
                    For Groups        -group     -grp
                    For First Name    -firstname -fnm
                    For Last Name     -lastname  -lnm

                 "
            exit
      }
    else {
          option="all"
        }
    fi
    query=${query/-lnkdn+}
    query=${query/-linkedin+}
    $browser www.linkedin.com/search/results/$option/?keywords=$query
}
