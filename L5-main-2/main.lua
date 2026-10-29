require("L5")

function setup()
  size(600, 600)

  -- Set the program title
  windowTitle("Project 2 Barn Quilt")
  background(255)
  drawMiddleRectangle()
  drawMiddleDiamond()
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
  triangle (298, 350, 242, 285, 350, 285)
 
  end 
  
  function mousePressed()
    drawMiddleRectangle()
    drawMiddleDiamond()
  end
  

 





 
