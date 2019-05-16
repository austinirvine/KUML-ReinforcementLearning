# REIN-FOREST
## Austin Irvine and Jakob Wulf-Eck

This is our final Reinforcement Learning project for EECS 738 at the University of Kansas.

## Task

The reinforcement learning task is a single level of a simple platformer game we created using the Godot game engine.
As such, all code is written in Godot's Python-esque GDScript language.

The goal of the main character is to collect all 6 'books' within the level and reach the end without dying due to contact with enemies.
The player may move left, move right, and jump. Jumping on the heads of enemies does not deal damage.
Dying or reaching the goal simply resets the game state, so that reinforcement learning can continue.

Users can play the game using manual input using the 'Play' option on the title screen, or can choose to let the RL algorithm play.

## RL

The reinforcement learning algorithm is a very simple, 1-state q-learning algorithm. The actor explores (makes a random move) 1/20th of the time.
The rest of the time, the actor chooses the highest-scored move from a q-learning matrix of the three possible moves. 

The q-learning values are updated every frame using a high reward for moving right, an equally high punishment for moving left, and a bonus for collecting books.

## Results

The agent immediately prioritizes moving right. Within a few attempts, it learns to jump constantly to avoid enemies and attempt to reach the books on raised platforms.
This jumping becomes more precise over time, up to a point.
