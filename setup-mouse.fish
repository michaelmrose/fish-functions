# Defined in /home/michael/.config/fish/buffer/setup-mouse.fish @ line 2
function setup-mouse
	mouse-set smooth-scroll on
    mouse-set dpi 900
    xset m 3/2
    # set id (xinput list | gr M510 | nth 5 | cut -d = -f2)
    set id (xinput list |nav /madcatz n8 c=2)
    xinput --set-prop $id 'Device Accel Adaptive Deceleration' 1.0 
    xinput --set-prop $id 'Device Accel Constant Deceleration' 0.5
    xinput --set-prop $id 'Device Accel Velocity Scaling' 9
end
