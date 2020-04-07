# Defined in /home/michael/.config/fish/buffer/save-website.fish @ line 2
function save-website
    wget \
        --recursive \
        --no-clobber \
        --page-requisites \
        --html-extension \
        --convert-links \
        --restrict-file-names=windows \
        --domains cs.cornell.edu \
        --no-parent \
        $argv
end
