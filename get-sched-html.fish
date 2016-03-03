function get-sched-html
	set -gx url "https://hdapps.homedepot.com/MYTHDPassport/rs/clientUI/thdLoginRequest"
    set -gx j_username $hdacct
    set -gx j_password $hdpw
    set -gx successUrl "https%3A%2F%2Fhdapps.homedepot.com%2FLaborMgtTools%2FWFMEssLauncher%3Flanguage%3Den_US"
    set -gx j_storenumber 4716
    set -gx j_userbelongsto Store
    set -gx uiLoc ext
    set -gx language en_US
    set -gx callingProgram lmslLaborMgtTools
    set -gx appendSessionID false
    set -gx tmp /tmp/mysched.html
    set -gx myLocation Store
    set -gx storeUser true
    set -gx action Login

    set hdrequest (make-request-payload j_username j_password j_storenumber j_userbelongsto language callingProgram appendSessionID myLocation storeUser action successUrl)
    #eval curl -c ~/.cjar.txt -L --data \'$hdrequest\' $url

    curl -s -c ~/.cjar.txt -L --data "j_username=mmr1135&j_password=hdac3456&j_storenumber=4716&j_userbelongsto=Store&language=en_US&callingProgram=lmslLaborMgtTools&uiLoc=ext&appendSessionID=false&myLocation=Store&storeUser=true&action=Login&successUrl=$successUrl" $url
end
