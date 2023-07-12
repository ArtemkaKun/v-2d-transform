<h1 align="center">v-2d-transform</h1>

A 2D transform library written in the [V programming language](https://vlang.io/).

## Overview

This library provides various utilities for manipulating 2D vectors and positions,
which can be used for game development, simulations, or any application that requires handling of
2D transformations. It includes functions for normalizing vectors, calculating the magnitude of
vectors, calculating the distance between vectors, and moving positions based on vectors.

## Usage

First, install package from [vpm](https://vpm.vlang.io/packages/ArtemkaKun.trnsfrm2d):

```
v install ArtemkaKun.trnsfrm2d
```

Then, import the module into your V code:

```v
import artemkakun.trnsfrm2d
```

## Features

### Vector

Normalizing a Vector

```v
import artemkakun.trnsfrm2d

v := trnsfrm2d.Vector{1.0, 1.0}
normalized_vector := trnsfrm2d.normalize_vector(v) // returns Vector{0.707106782, 0.707106782}
```

Calculating distance between Vectors

```v
import artemkakun.trnsfrm2d

v1 := trnsfrm2d.Vector{1.0, 1.0}
v2 := trnsfrm2d.Vector{2.0, 2.0}
distance := trnsfrm2d.calculate_distance_between_vectors(v1, v2) // returns 1.414213562
```

### Position

Calculating a move Vector

```v
import artemkakun.trnsfrm2d

direction := trnsfrm2d.Vector{0, 1}
speed := 2.0
delta_time := 1.0
move_vec := trnsfrm2d.calculate_move_vector(direction, speed, delta_time)! // returns Vector{x: 0, y: 2}
```

Moving a Position

```v
import artemkakun.trnsfrm2d

pos := trnsfrm2d.Position{
    x: 0
    y: 0
}

move_vec := trnsfrm2d.Vector{
    x: 1
    y: 0
}

new_pos := trnsfrm2d.move_position(pos, move_vec) // returns Position{ x: 1, y: 0 }
```

Calculating distance between Vectors

```v
import artemkakun.trnsfrm2d

p1 := trnsfrm2d.Position{
    x: 1.0
    y: 1.0
}

p2 := trnsfrm2d.Position{
    x: 2.0
    y: 2.0
}

distance := trnsfrm2d.calculate_distance_between_positions(p1, p2) // returns 1.414213562
```

## Contributing

Please feel free to open an issue or submit a pull request with your bug fixes or enhancements.

## Donations

If you like this project, please consider donating to me or the V language project.
Your donations will help me to continue to develop this project and the V language.

## More about my projects

Subscribe to my Mastodon account to find more info about my projects.
