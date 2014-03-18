ECE281_Lab3
===========
Laboratory Exercise 3 for ECE 281

C3C Jasper Arneberg  
M6A ECE 281  
Dr. Neebel  

## Prelab

### Schematic
The schematic can be seen below.
![alt text](https://github.com/JasperArneberg/ECE281_Lab3/blob/master/schematic.jpg?raw=true "Schematic")

## Main Lab
#### Bad Code
```
entity MooreElevatorController_Shell is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           stop : in  STD_LOGIC;
           up_down : in  STD_LOGIC;
           floor : out  STD_LOGIC_VECTOR (3 downto 0));
end MooreElevatorController_Shell;

```

This module only allows for one clock input. This is a problem when trying to implement things such as flashing lights and different speeds.

#### Good Code
```
entity MooreElevatorController_Shell is
    Port ( clockbus : in  STD_LOGIC_VECTOR (26 downto 0);
           reset : in  STD_LOGIC;
           stop : in  STD_LOGIC;
           up_down : in  STD_LOGIC;
           floor : out  STD_LOGIC_VECTOR (3 downto 0));
end MooreElevatorController_Shell;

```

This module is improved because it takes in 27 different clocks. These clocks can then be used in different parts of the design.


### Demonstrations
I demonstrated basic functionality of the Moore Elevator Controller to Dr. Neebel on 13 March 2014 at 1330.
I demonstrated basic functionality of Mealy Elevator Controllor to C3C El-Saawy on 13 March 2014 at 1400.
I demonstrated prime number functionality to Dr. Neebel on 13 March 2014 at 1430.
I demonstrated switch input functionality to Dr. Neebel 13 March 2014 at 1530.
I demonstrated light indicator functionality to...

## Documentation
C3C El-Saawy guided me get started using all of the modules together. I periodically asked him questions while in class.
