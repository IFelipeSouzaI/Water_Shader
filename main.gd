extends Node2D

export var num_particles = 0
var particle_mat = CanvasItemMaterial.new()

func _ready():
	particle_mat.blend_mode = particle_mat.BLEND_MODE_ADD
	
	for _i in range(num_particles):
		var waterdraw = Sprite.new()
		waterdraw.texture = preload("res://particle.png")
		waterdraw.material = particle_mat
		$View.add_child(waterdraw)
	
	set_physics_process(true)
	
	pass

func _physics_process(_delta):
	for i in range(num_particles):
		var particle = $View.get_child(i)
		particle.position = get_node("particles/object_particle"+str(i+1)).position
	pass
