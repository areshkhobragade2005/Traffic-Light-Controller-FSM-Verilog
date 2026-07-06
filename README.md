# Traffic-Light-Controller-FSM-Verilog

## Overview
This project implements a Traffic Light Controller using a Moore Finite State Machine (FSM) in Verilog HDL. The design was developed and verified using Xilinx Vivado. It demonstrates sequential digital logic design, FSM implementation, behavioral simulation, RTL synthesis, and waveform analysis.

## Features
- Moore FSM implementation
- Three traffic light states: RED, GREEN, and YELLOW
- Verilog HDL RTL design
- Behavioral simulation
- RTL schematic generation
- Synthesis using Vivado
- Easy-to-understand testbench

## Tools Used
- Xilinx Vivado
- Verilog HDL

## Project Structure
```
Traffic-Light-Controller/
│── traffic_light_controller.v
│── traffic_light_controller_tb.v
│── README.md
│── Project_Report.pdf
│── images/
│   ├── waveform.png
│   ├── rtl_schematic.png
│   └── synthesis.png
```

## State Sequence
```
RED → GREEN → YELLOW → RED
```

## Output Encoding

| State | Binary Output |
|-------|---------------|
| RED | 100 |
| GREEN | 001 |
| YELLOW | 010 |

## How to Run
1. Open Xilinx Vivado.
2. Create a new RTL project.
3. Add `traffic_light_controller.v` and `traffic_light_controller_tb.v`.
4. Set `traffic_light_controller_tb` as the simulation top module.
5. Run **Behavioral Simulation**.
6. Observe the waveform.
7. Run **Synthesis** and inspect the RTL schematic.

## Simulation Result
The simulation confirms that the FSM transitions correctly:

```
RED → GREEN → YELLOW → RED
```

Only one traffic light is active at any given time.

## Applications
- Traffic signal systems
- Digital control systems
- Embedded systems
- FPGA learning projects

## Future Improvements
- Add pedestrian crossing signals
- Support multiple road intersections
- Add configurable timing using counters
- Implement on an FPGA development board

## Author
Aresh Khobragade

## License
This project is for educational and internship purposes.

## Simulation Waveform

![Waveform](https://github.com/areshkhobragade2005/Traffic-Light-Controller-FSM-Verilog/blob/main/trafic%20simulation.png)

## RTL Schematic

![RTL](https://github.com/areshkhobragade2005/Traffic-Light-Controller-FSM-Verilog/blob/main/trafic%20scimatic.png)

## Synthesis

![Synthesis](images/synthesis.png)

## License

This project is licensed under the MIT License. See the LICENSE file for details.
