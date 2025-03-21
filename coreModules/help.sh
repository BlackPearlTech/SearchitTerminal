#   Help Function

function help() {
    echo "${aqua}${bold}
                \"Searchit Help Section\"

        Options For Seachit's Functionality${normal}

            --about     -a          For About Section
            --help      -h    -?    For Help section
            --uninstall -un         For Uninstall
            --update    -u          For Update
            --version   -v          For Version
            --config    -cfg        For Configuration
            --release   -rn         For Release Note
            --readme    -rdm        For README
            --exit          -e             For Exiting 

                        ${aqua}${bold}  Ex: \"searchit --help\"

        Search Options:

            Search Engine: ${normal}
                    -ddg    -duckduckgo     For DuckDuckGo
                    -ggl    -google         For Google
                    -eco    -ecosia         For Ecosia
                    -dpl    -dogpile        For Dogpile
                    -yah    -Yahoo          For Yahoo
                    -bng    -bing           For Bing
                    -ydx    -yandex         For Yandex
                    -bdu    -baidu          For Baidu
                    -spg    -startpage      For Startpage
                    -srx    -searx          For Searx
                    -sdn    -shodan         For Shodan
                    -qwnt   -qwant          For Qwant
                    -qwntjr -qwantjunior    For Qwant Jr.
                    -ypy    -yippy          For Yippy
                    -wfa    -wolframalpha   For WolframpAlpha
                    -drug   -drugs          For Drugs

            ${aqua}${bold}Search Sites:${normal}
                    -fb     -facebook       For Facebook
                    -ttr    -twitter        For Twitter
                    -rddt   -reddit         For Reddit
                    -lnkdn  -linkedin       For LinkedIn
                    -ytb    -youtube        For Youtube
                    -pntr   -pinterest      For Pinterest
                    -tmblr  -tumblr         For Tumblr
                    -qra    -quora          For Quora
                    -wiki   -wikipedia      For Wikipedia
                    -stkof  -stackoverflow  For Stack Overflow
                    -amzn   -amazon         For Amazon
                    -eby    -ebay           For Ebay
                    -gthb   -github         For Github
                    -gtlb   -gitlab          For Gitlab

                 Ex: \"searchit -ddg casino royal\"


      ${aqua}${bold}  Shortcuts For Instant Search:
            duckit      For DuckDuckGo
            googleit    For Google

        Ex: \"duckit thug life\"


        Search Filters:
            Use \" -h \" \" -? \" or \"-help \" for individual Search Filters
            Ex: \"searchit -ddg -h \"
            Will display Search Filters Availavle For DuckDuckGo.
            \"duckit\" and \"googleit\" Also Support Search Filters.
            ${normal}

    "
}
