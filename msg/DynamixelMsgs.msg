# Command for one motor. Same fields as the team's previous DYNAMIXEL node message, plus `id`.
# The receiver (kid_rl) finds the motor by `id`. Array order has no meaning, and a message
# that contains an unknown or duplicate id is dropped as a whole.

std_msgs/Header header
uint8 id                        # DYNAMIXEL ID
float32 goal_position           # rad
float32 profile_acceleration    # rad/s^2, 0 = no limit
float32 profile_velocity        # rad/s,   0 = no limit
