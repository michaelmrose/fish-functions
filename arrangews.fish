# Defined in /home/michael/.config/fish/buffer/arrangews.fish @ line 2
function arrangews
  switch $argv
      case tabbed
      i3-msg layout tabbed
    case splith
      i3-msg layout splith
    case splitv
      i3-msg layout splitv
    case stacked
      i3-msg layout stacked
  end
end
