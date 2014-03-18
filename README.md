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
| Functionality | Witness | Date | Time |
| :--: | :--: | :--: | :----: |
| Moore basic | Dr. Neebel | 13 MAR 14 | 1330 |
| Mealy basic | C3C El-Saawy | 13 MAR 14 | 1400 |
| Prime number | Dr. Neebel | 13 MAR 14 | 1430 |
| Switch input | Dr. Neebel | 13 MAR 14 | 1530 |
| Light Indicator | Dr. Neebel | 18 MAR 14 | ??? |



## Documentation
C3C El-Saawy guided me get started using all of the modules together. I periodically asked him questions while in class.
