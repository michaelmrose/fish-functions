function zm
         switch $argv
                case v
                     zoom_key_send.sh 'alt+v'
                case a
                     zoom_key_send.sh 'alt+a'
                case class
                    xdg-open "https://generalassembly.zoom.us/j/98267579615?pwd=UC9QQm0rR2VVZ21DalZCQ0YrSGdIUT09"
                case outcomes
                     xdg-open "https://generalassembly.zoom.us/j/98569949670?pwd=WjV4WDJBTEIzeVB0YkRCcVJISEc0QT09"
        end

end
