extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var explorationFreq = .2
var actions = []
var q=[]
var gamma = .8
var lr = .5



# Called when the node enters the scene tree for the first time.
func _ready():
	var states = 1
	var numActions = 3

#	for x in range(states):
#    	q[x]=[]
#    	for y in range(actions):
#        	q[x][y]=0
	for i in range(numActions):
		actions.append(i)
		q.append(0)
		
func arrMax(arr):
	var maxVal = -9999999
	for i in range(arr.size()):
		maxVal = max(i, maxVal)
	return maxVal
	
		
func learn():
	var exploreRand = randf()
	var actionToTake = -1
	if(exploreRand<explorationFreq):
		actionToTake = actions[randi() % actions.size()]
	else:
		var maxIndex = -1
		var maxVal = -1
		for i in range(3):
			if(q[i]>maxVal):
				maxIndex = i
				maxVal = q[i]
		actionToTake = maxIndex
	var player = get_node("../player spawn/Player")
	var prevPlayerPosX = player.get_position().x
	var prevPlayerPosY = player.get_position().y
	var prevBookCount = player.book_count
	var prevHealth = player.health
	player.moveRL(actionToTake)
	var reward = 0
	var currPlayerPosX = player.get_position().x
	var currPlayerPosY = player.get_position().y
	var currBookCount = player.book_count
	var currHealth = player.health
	if(currPlayerPosX>prevPlayerPosX):
		reward+= 100
	elif (prevPlayerPosX>currPlayerPosX):
		reward-=100
	if (currBookCount>prevBookCount):
		reward+=50
	if (currHealth<prevHealth):
		reward-=50
	#if char has moved left, give reward
	#if char has moved right, give negative
	#if char got a book or finished level, give bonus
	q[actionToTake] = q[actionToTake] + lr * (reward + gamma * arrMax(q)) - q[actionToTake]
	print(q[0])
	print(q[1])
	print(q[2])
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(get_node("../player spawn/Player") != null):
		learn()
	else:
		print("Player null")