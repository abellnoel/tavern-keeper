/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 71DC8B5E
/// @DnDArgument : "code" "/// @desc Customer spawning$(13_10)for (var i = 0; i < packSpawn; i++) { $(13_10)	color = ds_queue_dequeue(spawner);$(13_10)	tempCustomer = instance_create_layer(320, 760, "Instances", obj_customer);$(13_10)	tempCustomer.color = color;$(13_10)}$(13_10)spawnQueued = false; //reset to false so another spawn may be queued"
/// @desc Customer spawning
for (var i = 0; i < packSpawn; i++) { 
	color = ds_queue_dequeue(spawner);
	tempCustomer = instance_create_layer(320, 760, "Instances", obj_customer);
	tempCustomer.color = color;
}
spawnQueued = false; //reset to false so another spawn may be queued