--  
--   ////\\\\
--   ////\\\\  TUTORIAL
--   ////\\\\  PART 2
--   \\\\////
--   \\\\////  INTERFACE
--   \\\\////
--

local viewport = { width = 128, height = 64 }
local focus = { x = 0, y = 0 }

-- Main

function init()
  -- Render Style
  screen.level(15)
  screen.aa(0)
  screen.line_width(1)
  -- Center focus
  focus.x = viewport.width/2
  focus.y = viewport.height/2
  -- Render
  redraw()
end

-- Render

function draw_frame()
  screen.rect(1, 1, viewport.width-1, viewport.height-1)
  screen.stroke()
end

function draw_crosshair()
  screen.move(focus.x,focus.y - 4)
  screen.line(focus.x,focus.y - 2)
  screen.move(focus.x - 4,focus.y)
  screen.line(focus.x - 2,focus.y)
  screen.move(focus.x,focus.y + 3)
  screen.line(focus.x,focus.y + 1)
  screen.move(focus.x + 3,focus.y)
  screen.line(focus.x + 1,focus.y)
  screen.stroke()
end

function redraw()
  screen.clear()
  draw_frame()
  draw_crosshair()
  screen.update()
end
