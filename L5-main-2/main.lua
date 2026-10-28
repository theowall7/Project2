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
  fill(0)
  rect(277, 280, 70, 70)
  end 

 





 
