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

-- Set the program title
windowTitle("Project 2 Barn Quilt")
background(255)
drawMiddleRectangle()
drawMiddleDiamond()
diamondShapeOne = true

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

    for i = 1, 9, 1 do
    for j = 1, 9, 1 do
      currentColor = random(colorChoices)
      currentAlpha = random(alphaChoices)
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
     
      currentColor = random(colorChoices)
      currentAlpha = random(alphaChoices)
      if currentColor == "blue" then
        fill(risoBlueR,risoBlueG,risoBlueB,currentAlpha)
      elseif currentColor == "pink" then
        fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
      else
        fill(risoYellowR,risoYellowG, risoYellowB, currentAlpha)
      end
    end
    noStroke()
    triangle (298, 230, 242, 285, 350, 285)
    triangle (298, 340, 242, 285, 350, 285)
  end 
end

function drawFirstLayer()
    background(255)
    random (drawMiddleDiamond(), drawMiddleRectangle())
  end


  
  

 





 
