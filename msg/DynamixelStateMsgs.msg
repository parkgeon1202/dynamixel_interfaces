# State of several motors (/motor_status).
# header.stamp is the control tick that read these states; receivers can drop stale ones with now - stamp.
# Array order has no meaning (the sender fills it in ascending ID order). Find motors by id.
std_msgs/Header header
DynamixelMotorState[] motor_state
