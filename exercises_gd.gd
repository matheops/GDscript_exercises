# Exercise 1: Variables and print()

var char_name = "Dawn"
var current_HP: int = 100
var current_gold: int = 500

print(char_name + "has " + str(current_HP) + " HP and " + str(current_gold) + " gold."


# Mistakes: The print output shows that a space is missing between the character name and the word "has".

# Fixed Line:

print(char_name + " has " + str(current_HP) + " HP and " + str(current_gold) + " gold."


# Exercise 2: Simple Function

var current_gold = 0

func gain_gold(amount):
	current_gold += amount
	print("You have " + str(current_gold) + " gold.")


# Improvement: Make the current_gold variable a member variable of a node so it can be used inside any scene or attached to a node. Just declaring it like I did allows the variable to be used only at a global level.

# Added Line on top of the code:

extends Node


# Exercise 3: If Statement

var current_gold: int = 40
var item_price: int = 30

if current_gold >= 30:
	print("You bought a potion!")
else:
	print("Not enough gold.")


# Improvement: It's better to use item_price on the if statement then hardcoding the 30 value. This makes the code flexible and easier to change later.

# Improved Line:

if current_gold >= item_price:


# Exercise 4: Array Loop

var party = ["Ari", "Luna", "Kiro"]

for member_name in party:
	print(member_name)


# Feedback: A clean code with correct logic for my level.


# Exercise 5: Dictionary

var bestiary = {
"Slime": {"hp": 50, "attack": 10}, "Bat": {"hp": 40, "attack": 15}
}

print(str(bestiary[0] "attack"))


# Mistakes: I tried to access the key "Slime" on the dictionary by using its index number, like it was an array. It doesn't work because dictionaries doesn't have fixed indexes for its keys.
# I also forgot to use the [] to access the key "attack".

# Fixed Line:

print(str(bestiary["Slime"]["attack"]))


# Exercise 6: Function + Dictionary

var enemies = {
"Slime": {"hp": 50, "attack": 10}, "Bat": {"hp": 40, "attack": 15}
}

func attack(enemy_name: string):
	enemies[enemy_name] ["hp"] -= 10
	print(enemies[enemy_name] + " has " + str(enemies[enemy_name] ["hp"]) + " HP."


# Mistakes: On the print function I tried to concatenate enemies[enemy_name] with " has ". It's wrong because it's not possible to concatenate a dictionary with a string. I should've just used enemy_name, then it would work since both values are strings.

# Fixed Line:

print(enemy_name + " has " + str(enemies[enemy_name] ["hp"]) + " HP."


# Exercise 7: Signal-like Logic (manual)

func on_button_pressed():
	print("Cat: Meow")
	Global.game_state = "talking"


# Feedback: It's simple and clean, but I had to cheat since I wasn't familiar with the Global.game_state variable.


# Exercise 8: Inventory Tracker

var inventory: string = []

func add_item(item_name: string):
	inventory.append(item_name)
	print(inventory)

add_item("Gold")
add_item("Sword")
add_item("Shield")


# Mistakes: I accidentely declared the inventory variable as a string, but it's actually an array.

# Fixed Line:

var inventory = []


# Exercise 8 (bonus): Adding another function to the previous exercise

var inventory = []

func add_item(item_name: string):
	if item_name in inventory:
		print(item_name + " is already on the inventory.")
	else:
		inventory.append(item_name)
		print(inventory)
	
func remove_item(item_name: string):
	if item_name in inventory:
		inventory.pop(item_name)
		print(item_name + " was discarded.")
		print(inventory)
	else:
		print(item_name + " is not on the inventory.")

add_item("Potion")
add_item("Gold")
remove_item("Potion")


# Mistakes: I tried to use pop() on a value, but it's used for indexes. I should have used erase() in this context.

# Fixed Line:

inventory.erase(item_name)


# Exercise 9: Damage System and Return Value

func take_damage(hp, amount):
	hp -= amount
	return hp

take_damage(100, 25)

print("You have " + str(hp) + " HP.")


# Mistakes: I didn't store the take_damage(100, 25) value on a variable, so I can't use it outside of the function.

# Fixed Line:

var current_hp = take_damage(100, 25)


# Exercise 10: Random Enemy Encounter

var enemies = {"Slime": {"hp": 100, "attack": 20}, "Bat": {"hp": 80, "attack": 30}, "Wolf": {"hp": 200, "attack": 50}}

var enemy_names = enemies.keys()

randomize()

func random_enemy():
	var index = randi() % enemy_names.size()
	var chosen_enemy = enemy_names[index]
	print("You encountered a " + str(chosen_enemy) + " .")
	print("It has " + str(enemies[chosen_enemy]["hp"]) + " HP and " + str(enemies[chosen_enemy]["attack"]) + " attack.")


# Feedback: I had to cheat because I didn't know how to use the randomization functions. But I understood the logic and syntax through this exercise.


# Exercise 11: match Statements for Dialogues

func talk_to(npc_name: string):
	match npc_name:
	"John":
		print("John: Hello! What are your plans for today?")
	"Jane":
		print("Jane: Leave me alone.")
	"Carl":
		print("Carl: Good afternoon!")
	_:
		print("...")

# Mistakes: I didn't use the correct indentation on the lines inside the match statement.

# Fixed Lines:

match npc_name:
	"John":
		print("John: Hello! What are your plans for today?")
	"Jane":
		print("Jane: Leave me alone.")
	"Carl":
		print("Carl: Good afternoon!")
	_:
		print("...")

#Feedback: I had to cheat on this one too because I didn't know the how to use match statements. I was trying to write it outside of the function at first, so I had some problems understanding this exercise.
