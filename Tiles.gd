extends TileMap

export(Vector2) var tilesSize = Vector2()
export(int) var defaultTiles = 0

func _ready():
	for x in tilesSize.x:
		for y in tilesSize.y:
			set_cell(x,y,defaultTiles)
			set_cell(-x,-y,defaultTiles)
			set_cell(x,-y,defaultTiles)
			set_cell(-x,y,defaultTiles)

