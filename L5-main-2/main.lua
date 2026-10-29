require("L5")

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
    noStroke()
    fill(random (255, 72, 176), random (0, 120, 191), random (255, 232, 0),random (255, 72, 176, 75), random (0, 120, 191, 75), random (255, 232, 0, 75))
    fill(random (255, 72, 176), random (0, 120, 191), random (255, 232, 0),random (255, 72, 176, 75), random (0, 120, 191, 75), random (255, 232, 0, 75))
    rect(260, 260, 70, 70)
  end 

  function drawMiddleDiamond()
    noStroke()
    fill(random (255, 72, 176), random (0, 120, 191), random (255, 232, 0),random (255, 72, 176, 75), random (0, 120, 191, 75), random (255, 232, 0, 75))
    fill(random (255, 72, 176), random (0, 120, 191), random (255, 232, 0),random (255, 72, 176, 75), random (0, 120, 191, 75), random (255, 232, 0, 75))
    triangle (298, 230, 242, 285, 350, 285)
    triangle (298, 340, 242, 285, 350, 285)
  end 

  function drawFirstLayer()
    background(255)
    random (drawMiddleDiamond(), drawMiddleRectangle())
  end

  function mousePressed()
  end
  

 





 
