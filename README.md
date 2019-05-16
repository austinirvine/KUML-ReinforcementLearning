# REIN-FOREST
## Austin Irvine and Jakob Wulf-Eck

This is our final Reinforcement Learning project for EECS 738 at the University of Kansas.

## Task

The reinforcement learning task is a single level of a simple platformer game we created using the Godot game engine.
As such, all code is written in Godot's Python-esque GDScript language.

The goal of the main character is to collect all 6 'books' within the level and reach the end without dying due to contact with enemies.
The player may move left, move right, and jump. Jumping on the heads of enemies does not deal damage.

Users can play the game using manual input using the 'Play' option on the title screen, or can choose to let the RL algorithm play.

Dying or reaching the goal simply resets the game state, so that play (or reinforcement learning) can continue.

We hypothesized that a very simple RL algorithm could be trained to play this game by rewarding rightward movement and book collection, and penalizing leftward movement and receiving damage.

## RL

The reinforcement learning algorithm is a very simple, 1-state q-learning algorithm. The actor explores (makes a random move) 1/20th of the time.
The rest of the time, the actor chooses the highest-scored move from a q-learning matrix of the three possible moves. 

The q-learning values are updated every frame using a high reward for moving right, no reward for moving left, a bonus for collecting a book within the frame, and a punishment for losing health.

We discovered that penalizing the agent for moving left was counterproductive - as the reward for moving right still incentivizes it to to advance in the level, we are free to take a neutral position (0 reward)on whether the agent moves left, allowing it to move left to avoid the punishment for taking enemy damage.

## Results

The agent immediately prioritizes moving right. Within a few attempts, it learns to jump constantly to avoid enemies and attempt to reach the books on raised platforms.
This jumping becomes more precise over time, up to a point.
