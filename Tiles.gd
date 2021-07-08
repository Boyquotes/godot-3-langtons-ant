extends TileMap

export(int) var tilesWidth = 1000
export(int) var tilesHeight = 1000
export(int) var defaultTiles = 0


# Instantiate
var noise = OpenSimplexNoise.new()

# Configure

func _ready():
	for x in tilesWidth:
		for y in tilesHeight:
			set_cell(x,y,1)
			set_cell(-x,-y,1)
			set_cell(x,-y,1)
			set_cell(-x,y,1)

