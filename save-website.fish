# Defined in /home/michael/.config/fish/buffer/save-website.fish @ line 1
function save-website
    wget \
        --recursive \
        --no-clobber \
        --page-requisites \
        --html-extension \
        --convert-links \
        --restrict-file-names=windows \
        --domains website.org \
        --no-parent \
        $argv
end
