# HaHa FPGA SRAM LED Display

This project demonstrates how to read SRAM values from a HaHa FPGA board and display the stored bits using onboard LEDs. The design interfaces with the SRAM, retrieves data, and visualizes the binary values in real time.

## Features
- Reads data from the onboard SRAM.
- Displays the binary representation of stored values using LEDs.
- Verilog-based design for easy FPGA synthesis and deployment.

### 1. Open Project in Vivado
- Launch **Vivado** and create a new project.
- Add the Verilog source files from the `src/` directory.
- Configure constraints using `haha_fpga.xdc`.

### 2. Synthesize and Implement the Design
- Run **Synthesis**.
- Perform **Implementation**.
- Generate **Bitstream**.

### 3. Upload to HaHa FPGA
- Use **Vivado Hardware Manager** to program the FPGA.
- Monitor LED outputs to observe SRAM values.
