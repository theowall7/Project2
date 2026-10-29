require("L5")

function setup()
  size(600, 600)

  -- Set the program title
  windowTitle("Project 2 Barn Quilt")
  background(255)
  drawMiddleRectangle()
  end

  function draw()
  background(255)

  drawMiddleRectangle()
  fill(0)
  text("X: "..mouseX.."  Y: "..mouseY, mouseX+5,mouseY+30)
  end

  function drawMiddleRectangle()
  noStroke()
  fill(random (255, 72, 176), random (0, 120, 191), random (255, 232, 0),random (255, 72, 176, 75), random (0, 120, 191, 75), random (255, 232, 0, 75))
  fill(random (255, 72, 176), random (0, 120, 191), random (255, 232, 0),random (255, 72, 176, 75), random (0, 120, 191, 75), random (255, 232, 0, 75))
  rect(260, 260, 70, 70)
  end 
  
  function mousePressed()
    drawMiddleRectangle ()
  end
  

 





 
