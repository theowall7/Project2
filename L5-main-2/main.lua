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
alpha4 = 120
alpha5 = 150
alpha6 = 180
alpha7 = 210
alpha8 = 240

--color option array
colorChoices = {"blue","pink", "yellow"}

--alpha option array
alphaChoices = {alpha1, alpha2, alpha3, alpha4, alpha5, alpha6, alpha7, alpha8}

function setup()
size(600, 600)

shapeOneChoices = {"big diamond", "little border", "octagon"}
shapeTwoChoices = {"bunch of triangles"}

-- Set the program title
windowTitle("Project 2 Barn Quilt")
save('myBarnQuilt.png')
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

-- main draw function 
function draw()
  background(255)

  -- backgroud Square
  if currentColor == "blue" then
    fill(risoBlueR,risoBlueG,risoBlueB,currentAlpha)
  elseif currentColor == "pink" then
     fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
  else
    fill(risoYellowR,risoYellowG, risoYellowB, currentAlpha)
      end
    noStroke()
    rect(20, 20, 560, 560)

    -- boder base
    if currentColor == "blue" then
    fill(risoYellowR,risoYellowG,risoYellowB)
  elseif currentColor == "pink" then
     fill(risoBlueR,risoBlueG,risoBlueB)
  else
    fill(risoPinkR,risoPinkG, risoPinkB)
      end
    rect(53, 70, 50, 483)
    rect(53, 510, 480, 50)
    rect(53, 40, 483, 50)
    rect (510, 40, 50, 520)
 
    -- side squares
     for i = 1, 7, 1 do
      noStroke()
      if currentColor == "blue" then
    fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
    elseif currentColor == "pink" then
     fill(risoYellowR,risoYellowG,risoYellowB,currentAlpha)
    else
    fill(risoBlueR,risoBlueG, risoBlueB, currentAlpha)
      end
      rect(60, 45 +i*60, 35, 35)
     end
     for i = 1, 7, 1 do
      noStroke()
      if currentColor == "blue" then
    fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
  elseif currentColor == "pink" then
     fill(risoYellowR,risoYellowG,risoYellowB,currentAlpha)
  else
    fill(risoBlueR,risoBlueG, risoBlueB, currentAlpha)
      end
      rect(519, 45 +i*60, 35, 35)
     end
     for i = 1, 7, 1 do
      noStroke()
      if currentColor == "blue" then
    fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
  elseif currentColor == "pink" then
     fill(risoYellowR,risoYellowG,risoYellowB,currentAlpha)
  else
    fill(risoBlueR,risoBlueG, risoBlueB, currentAlpha)
      end
      rect(45 +i*60, 47, 35, 35)
     end
      for i = 1, 7, 1 do
      noStroke()
      if currentColor == "blue" then
    fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
  elseif currentColor == "pink" then
     fill(risoYellowR,risoYellowG,risoYellowB,currentAlpha)
  else
    fill(risoBlueR,risoBlueG, risoBlueB, currentAlpha)
      end
      rect(45 +i*60, 518, 35, 35)
     end



    -- corner triangles 
    if currentColor == "blue" then
    fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
  elseif currentColor == "pink" then
     fill(risoYellowR,risoYellowG,risoYellowB,currentAlpha)
  else
    fill(risoBlueR,risoBlueG, risoBlueB, currentAlpha)
      end
      triangle(236, 158, 156, 237, 157, 160)
      triangle (355, 158, 434, 239, 435, 160)
      triangle (155, 356, 245, 438, 156, 439)
      triangle (356, 435, 435, 354, 437, 439 )
    

    -- big diamond, little border, or octagon 
  if currentShapeOne == "big diamond" then
    fill (0, currentAlpha)
    noStroke()
    triangle(300, 160, 157, 300, 435, 300)
    triangle (157, 300, 435, 300, 300, 436)
  elseif currentShapeOne == "little border" then
    fill(0, currentAlpha)
     noStroke()
    rect(156, 159, 280, 280)
  else
    fill(0, currentAlpha)
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

   -- second rectangle
  drawRectTwo()

  -- star-shaped corner triangles
  drawCornerTriangles()
    
  -- middle diamond or middle rectangle
  if diamondShapeOne then
  drawMiddleDiamond()
      else
drawMiddleRectangle()
  end



-- middle diamond or rectangle timer
if frameCount % 400 == 0 then
if diamondShapeOne then
diamondShapeOne = false
elseif not diamondShapeOne then
diamondShapeOne = true
end

-- current color, alpha, shape 
currentColor = random(colorChoices)
currentAlpha = random(alphaChoices)
currentShapeOne = random(shapeOneChoices)
end
end


-- big diamond function
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

-- little border function
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

-- octagon function
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

-- star shaped corner triangles function
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

-- second rectangle function
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

-- middle rectangle fucntion
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

-- middle diamond function
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

function keyPressed()
  if (key == "s")
  then save ("Barn Quilt")
  end
end
