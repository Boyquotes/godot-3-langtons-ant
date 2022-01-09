# Langton's Ant

Langton's ant is a two-dimensional universal Turing machine with a very simple set of rules but complex emergent behavior. It was invented by Chris Langton in 1986 and runs on a square lattice of black and white cells.

The trick of this ant, is that during it's proccess it will change through 3 phases:
Simplicity: During the first few hundred steps, the ant creates simple and often symmetrical patterns.
Chaos: After several hundred steps, a large, irregular pattern appears. The ant follows a seemingly hazardous path up to 10,000 steps.
Emergent order: finally the ant begins to build an "avenue", a pattern of 104 steps that is repeated indefinitely.

This project tries to duplicate the machine in Godot Engine 3.3.2 (But surely it's also compatible with higher versions of 3.X)

## Movement Rules
- At a white square, turn 90° clockwise, flip the color of the square, move forward one unit

- At a black square, turn 90° counter-clockwise, flip the color of the square, move forward one unit

(Yes, I copied this from Wikipedia.)


## Installation

1. Download Godot Engine 3.3.2 (Or Higher 3.X version) from its [Website](https://godotengine.org) or [Steam](https://store.steampowered.com/app/404790/Godot_Engine/)

2. Once the program is open, go to your Documents folder and move the project folder in there

3. In the projects list, press import and then examine

4. Find the project folder and find an archive that's called "project.godot"

5. And done, just press continue to start editing.

## Controls

- `Left/Right Arrows` Change Speed(Left increases while Right decreases)
- `Up/Down Arrows` Zoom
- `R` Changes ants color

##EXTRA
The game can handle more than one ant
In the editor you can change the canvas size where the ants will move
