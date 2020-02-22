extends RigidBody

const ROTATE_V = Vector3(0, 0, -50)


func _physics_process(delta):
	if Input.is_action_pressed("ui_accept"):
		apply_torque_impulse(ROTATE_V)
		

func _integrate_forces(state):
	var z_vel = state.angular_velocity.z
	if z_vel < -0:
		apply_torque_impulse(Vector3(0, 0, z_vel * -1 * friction))
