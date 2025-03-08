extends Node
var enemies_data: Dictionary = {}

# Add or update an enemy's entry in the journal
func update_enemy_data(enemy_id: String, description: String):
	# Check if the enemy already has an entry
	if not enemies_data.has(enemy_id):
		enemies_data[enemy_id] = {
			"description": description,
			"kill_count": 0
		}
	# Increment kill count
	enemies_data[enemy_id]["kill_count"] += 1
	
	print("Updated journal entry for: " + enemy_id)  # Debug print

# Fetch data for a specific enemy by ID
func get_enemy_info(id: String) -> Dictionary:
	return enemies_data.get(id, {})

# Check if an enemy has been encountered
func has_encountered(id: String) -> bool:
	return enemies_data.has(id)
