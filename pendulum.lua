function MissionSetup()
  PlayerSetPosXYZArea(270,-110,6,0)
  PedSetEffectedByGravity(0, false)
  DisablePunishmentSystem(true)
  CameraFollowPed(0)
  PauseGameClock(true)
  HUDClearAllElements()
  PlayerSwapModel("PunchBag")
end

function main()
  x0 = 270
  y0 = -110
  z0 = 90
  i = 0
  l = 30
  g = 3
  a = 365
  av = 0
  Wait(5000)
  j = 0
  repeat
    if j == 0 then
      px, py, pz = PlayerGetPosXYZ()
      CameraSetXYZ(px, py+90, pz+80)
      CameraLookAtXYZ(px, py, pz+70)
    end  
    acc = (g/l)*math.sin(a)*0.1
    av = av + acc
    av = av * 1
    a = a + av
    cx = x0 + (l*math.sin(a))
    cy = 40+l + (l*math.cos(a))

    PlayerSetPosXYZArea(cx,-110,cy,0)

    i = i + 0.1
    j = j + 1
    Wait(1)
  until not Alive
end
