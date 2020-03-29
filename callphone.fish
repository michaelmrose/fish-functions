# Defined in /home/michael/.config/fish/buffer/callphone.fish @ line 2
function callphone
    set url '
   https://hangouts.google.com/?ht=0&hcb=0&lm1=1585465372245&hs=79&hmv=1&ssc=WyIiLDAsbnVsbCxudWxsLG51bGwsW10sbnVsbCxudWxsLG51bGwsbnVsbCxudWxsLDc5LG51bGwsbnVsbCxudWxsLFsxNTg1NDY1MzcyMjQ1XSxudWxsLG51bGwsW1tudWxsLG51bGwsW251bGwsIisxMzYwNTI1ODg3OSJdXV0sbnVsbCxudWxsLHRydWUsbnVsbCxudWxsLG51bGwsbnVsbCxudWxsLG51bGwsW10sW10sbnVsbCxudWxsLG51bGwsW10sbnVsbCxudWxsLG51bGwsW10sbnVsbCxudWxsLFtdXQ..&action=chat&pn=%2B1'
    
   set phonenumber $argv[1]
   xdg-open $url$phonenumber
end
