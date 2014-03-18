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

#### Bad Code
```
floor_state_machine: process(clk)
begin
	if clk'event and clk='1' then
		if reset='1' then
			floor_state <= floor1;
		--next state logic
		else
			case floor_state is
```

This code is bad because the next state logic is intertwined with the register process of mapping the nextstate to the state.

#### Good Code
```
--registry process
floor_state_machine: process(clockbus(26))
begin
	if clk'event and clk='1' then
		if reset='1' then
			floor_state <= floor1;
		else
		    floor_state <= next_floor;
		end if;
	end if;
end process;

--next state logic
process(up_down, stop)
begin
    case next_floor is
        when floor1 => ...

```

This code is better because it splits up the next state logic from the registry process. The next state logic has no reliance on the clock in this case, which makes things cleaner and easier to analyze.



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
