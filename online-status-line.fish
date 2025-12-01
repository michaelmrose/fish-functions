function online-status-line
    if online?
        echo '{"state":"Info", "text": "online"}'
    else
        echo '{"state":"Warning", "text": "offline"}'
    end
end
