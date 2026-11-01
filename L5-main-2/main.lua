require("L5")

--riso blue
risoBlueR = 0
risoBlueG = 120
risoBlueB = 191

--riso pink
risoPinkR = 255
risoPinkG = 72
risoPinkB = 176

--riso yellow
risoYellowR = 255
risoYellowG = 232
risoYellowB = 0

--alpha values
alpha1 = 30
alpha2 = 60
alpha3 = 90


--color option array
colorChoices = {"blue","pink", "yellow"}

--alpha option array
alphaChoices = {alpha1, alpha2, alpha3, alpha4, alpha5, alpha6, alpha7, alpha8}

function setup()
size(600, 600)

shapeOneChoices = {"big diamond", "little border",}

-- Set the program title
windowTitle("Project 2 Barn Quilt")
background(255)
drawMiddleRectangle()
drawMiddleDiamond()
drawRectTwo()
drawCornerTriangles()
drawOctagon()
drawLittleBorder()
drawBigDiamond()
diamondShapeOne = true
octagonShapeOne = true
end

function draw()
  background(255)


  if currentShapeOne == "big diamond" then
    noStroke()
    triangle(300, 160, 157, 300, 435, 300)
    triangle (157, 300, 435, 300, 300, 436)
  elseif currentShapeOne == "little border" then
     noStroke()
    rect(156, 159, 280, 280)
  else
    noStroke()
    triangle (238, 158, 156, 236, 236, 238)
    triangle(238, 158,295, 237, 354, 159)
    triangle (354, 159, 355, 237, 435, 237)
    triangle (435, 237, 355, 298, 436, 352)
    triangle(436, 352, 354, 356, 355, 434)
    triangle (355, 434, 297, 352, 236, 434)
    triangle (236, 434, 238, 355, 157, 355)
    triangle(157, 355, 238, 302, 157, 238)
      end

  drawRectTwo()

  drawCornerTriangles()

  if currentColor == "blue" then
    fill(risoBlueR,risoBlueG,risoBlueB,currentAlpha)
  elseif currentColor == "pink" then
     fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
  else
    fill(risoYellowR,risoYellowG, risoYellowB, currentAlpha)
      end

    noStroke()
    rect(20, 20, 560, 560)

    
  if diamondShapeOne then
  drawMiddleDiamond()
      else
drawMiddleRectangle()
  end

fill(0)
text("X: " .. mouseX .. " Y: " .. mouseY, mouseX + 5, mouseY + 30)


if frameCount % 400 == 0 then
if diamondShapeOne then
diamondShapeOne = false
elseif not diamondShapeOne then
diamondShapeOne = true
end

if frameCount % 400 == 0 then
if octagonShapeOne then
octagonShapeOne = false
elseif not octagonShapeOne then
octagonShapeOne = true
end

currentColor = random(colorChoices)
currentAlpha = random(alphaChoices)
currentShapeOne = random(shapeOneChoices)
end
end
end

function drawBigDiamond()
  for i = 1, 9, 1 do
    for j = 1, 9, 1 do
      if currentColor == "blue" then
        fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
      elseif currentColor == "pink" then
        fill(risoYellowR,risoYellowG,risoYellowB,currentAlpha)
      else
        fill(risoBlueR,risoBlueG, risoBlueB, currentAlpha)
      end
    noStroke()
    triangle(300, 160, 157, 300, 435, 300)
    triangle (157, 300, 435, 300, 300, 436)
    
  end 
end
end

function drawLittleBorder()
  for i = 1, 9, 1 do
    for j = 1, 9, 1 do
      if currentColor == "blue" then
        fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
      elseif currentColor == "pink" then
        fill(risoYellowR,risoYellowG,risoYellowB,currentAlpha)
      else
        fill(risoBlueR,risoBlueG, risoBlueB, currentAlpha)
      end
    noStroke()
    rect(156, 159, 280, 280)
    
  end 
end
end

function drawOctagon()
  for i = 1, 9, 1 do
    for j = 1, 9, 1 do
      if currentColor == "blue" then
        fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
      elseif currentColor == "pink" then
        fill(risoYellowR,risoYellowG,risoYellowB,currentAlpha)
      else
        fill(risoBlueR,risoBlueG, risoBlueB, currentAlpha)
      end
    noStroke()
    triangle (238, 158, 156, 236, 236, 238)
    triangle(238, 158,295, 237, 354, 159)
    triangle (354, 159, 355, 237, 435, 237)
    triangle (435, 237, 355, 298, 436, 352)
    triangle(436, 352, 354, 356, 355, 434)
    triangle (355, 434, 297, 352, 236, 434)
    triangle (236, 434, 238, 355, 157, 355)
    triangle(157, 355, 238, 302, 157, 238)
  end 
end
end

function drawCornerTriangles()
  for i = 1, 9, 1 do
    for j = 1, 9, 1 do
      if currentColor == "blue" then
        fill(risoYellowR,risoYellowG,risoYellowB,currentAlpha)
      elseif currentColor == "pink" then
        fill(risoBlueR,risoBlueG,risoBlueB,currentAlpha)
      else
        fill(risoPinkR,risoPinkG, risoPinkB, currentAlpha)
      end
    noStroke()
    triangle(236, 236, 295, 235, 236, 156)
    triangle(236, 236, 235, 300, 155, 236)
    triangle (294, 236, 355, 237, 355, 156)
    triangle (355, 237, 355, 299, 436, 236)
    triangle (355, 299,355, 356, 436, 352)
    triangle (355, 355, 295, 355, 355, 436)
    triangle (295, 355, 236, 355, 236, 436)
    triangle (236, 355, 235, 300, 155, 355)
    
  end 
end
end

function drawRectTwo()
  for i = 1, 9, 1 do
    for j = 1, 9, 1 do
      if currentColor == "blue" then
        fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
      elseif currentColor == "pink" then
        fill(risoYellowR,risoYellowG,risoYellowB,currentAlpha)
      else
        fill(risoBlueR,risoBlueG, risoBlueB, currentAlpha)
      end
    noStroke()
    rect(235, 235, 120, 120)
  end 
end
end

function drawMiddleRectangle()

    for i = 1, 9, 1 do
    for j = 1, 9, 1 do
      if currentColor == "blue" then
        fill(risoBlueR,risoBlueG,risoBlueB,currentAlpha)
      elseif currentColor == "pink" then
        fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
      else
        fill(risoYellowR,risoYellowG, risoYellowB, currentAlpha)
      end
    noStroke()
    rect(260, 260, 70, 70)
  end 
end
end

function drawMiddleDiamond()
  for i = 1, 9, 1 do
    for j = 1, 9, 1 do
      if currentColor == "blue" then
        fill(risoBlueR,risoBlueG,risoBlueB,currentAlpha)
      elseif currentColor == "pink" then
        fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
      else
        fill(risoYellowR,risoYellowG, risoYellowB, currentAlpha)
      end
    end
    noStroke()
    triangle (295, 235, 235, 300, 355, 300)
    triangle (295, 355, 235, 300, 355, 300)
end
end
