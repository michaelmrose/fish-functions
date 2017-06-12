function setup-mouse
	mouse-set smooth-scroll on
    mouse-set dpi 900
    xset m 3/2
    set id (xinput list | gr M510 | nth 5 | cut -d = -f2)
    xinput --set-prop $id 'Device Accel Constant Deceleration' 0.5
    xinput --set-prop $id 'Device Accel Velocity Scaling' 9
end
