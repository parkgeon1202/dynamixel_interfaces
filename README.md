# dynamixel_interfaces (kid_rl fork)

> **This is an unofficial, modified fork of [ROBOTIS-GIT/dynamixel_interfaces](https://github.com/ROBOTIS-GIT/dynamixel_interfaces)**, based on the `jazzy` branch.
> ROBOTIS does not maintain or endorse it. DYNAMIXEL is a trademark of ROBOTIS.
> The original code is licensed under the Apache License 2.0 (see [LICENSE](LICENSE)), and the modifications are released under the same license.

This fork adds five messages used by the IRC competition branches of **[kid_rl](https://github.com/parkgeon1202/kid_rl)** (`for_irc_contest`, `irc_hurdle`) to exchange motor commands and motor states with the other competition packages. The upstream messages and services are unchanged. The [hardware interface fork](https://github.com/parkgeon1202/dynamixel_hardware_interface/tree/kid-rl#5-extra-dynamixel_interfaces-messages-for-the-irc-competition) does not use the new messages; they are only for kid_rl's topics.

| Message | Topic | From → To | Purpose |
|---|---|---|---|
| `DynamixelControlMsgs` (array of `DynamixelMsgs`) | `/dynamixel_control` | motion_operator, humanoid_manipulation → kid_rl | Goal positions, with profile velocity / acceleration, for scripted motions and manipulation |
| `DynamixelMsgs` | `/gripper_control` | humanoid_manipulation → kid_rl | Gripper goal position |
| `PanTilt` | `/RealsensePanTilt` | irc_vision `pan_tilt` node → kid_rl | Camera tilt [degree] |
| `DynamixelStateMsgs` (array of `DynamixelMotorState`) | `/motor_status` | kid_rl → motion_operator, humanoid_manipulation | Position and velocity of every servo at 50 Hz |

They keep the fields of the messages that the team's previous DYNAMIXEL node used, and add a servo `id` to every motor element, so that the receiver matches motors by `id` instead of by array position.

```bash
git clone -b kid-rl https://github.com/parkgeon1202/dynamixel_interfaces.git
```

The rest of this page is the upstream README.

---

## **1. Introduction**

Provides **interfaces (msgs)** for the [dynamixel_hardware_interface](https://github.com/ROBOTIS-GIT/dynamixel_hardware_interface).


## **2. Contributing**

We welcome contributions! Please follow the guidelines in [CONTRIBUTING.md](CONTRIBUTING.md) to submit issues or pull requests.


## **3. License**

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
