require("L5")

function setup()
size(600, 600)

-- Set the program title
windowTitle("Project 2 Barn Quilt")
background(255)
drawMiddleRectangle()
drawMiddleDiamond()
diamondShapeOne = true

risoBlueR = 0
risoBlueG = 120
risoBlueB = 191

risoPinkR = 255
risoPinkG = 72
risoPinkB = 176

risoYellowR = 255
risoYellowG = 232
risoYellowB = 0

end

function draw()
background(255)
if diamondShapeOne then
drawMiddleDiamond()
else
drawMiddleRectangle()
end
fill(0)
text("X: " .. mouseX .. " Y: " .. mouseY, mouseX + 5, mouseY + 30)

if frameCount % 280 == 0 then
if diamondShapeOne then
diamondShapeOne = false
elseif not diamondShapeOne then
diamondShapeOne = true
end
end
end

  function drawMiddleRectangle()
    noStroke()
    fill(random (risoBlueR, risoBlueG, risoBlueB,risoPinkR,risoPinkG, risoPinkB, risoYellowR, risoYellowG, risoYellowB))
    fill(random (risoBlueR, risoBlueG, risoBlueB,risoPinkR,risoPinkG, risoPinkB, risoYellowR, risoYellowG, risoYellowB))
    rect(260, 260, 70, 70)
  end 

  function drawMiddleDiamond()
    noStroke()
    fill(random (risoBlueR, risoBlueG, risoBlueB,risoPinkR,risoPinkG, risoPinkB, risoYellowR, risoYellowG, risoYellowB))
    fill(random (risoBlueR, risoBlueG, risoBlueB,risoPinkR,risoPinkG, risoPinkB, risoYellowR, risoYellowG, risoYellowB))
    triangle (298, 230, 242, 285, 350, 285)
    triangle (298, 340, 242, 285, 350, 285)
  end 

  function drawFirstLayer()
    background(255)
    random (drawMiddleDiamond(), drawMiddleRectangle())
  end

  function mousePressed()
  end
  

 





 
