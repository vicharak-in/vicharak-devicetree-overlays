# Vicharak Vaaman Device Tree Blob Overlays (DTBOs)

## Overview

Contained within this directory is the source code for Device Tree Blob Overlays (DTBOs) designed for the Vicharak Vaaman board. DTBOs offer the flexibility to dynamically modify the device tree of a running system without the need to recompile the kernel.

These DTBOs serve the purpose of enabling several key features on the Vicharak Vaaman board:

1. Activation of the CDN DP display as a substitute for HDMI.
2. Support for the Waveshare 4-inch DSI display.
3. Integration of MIPI CSI cameras (OV5467 and IMX219).
4. Switching USB 3.0 OTG to Host mode.
5. Switching USB 3.0 OTG back to OTG mode.
6. Activation of I2C-2 on the 40-pin header.
7. Activation of I2C-6 on the 40-pin header.
8. Facilitation of FPGA communication.
9. Activation of PWM-0 on the 40-pin header.
10. Activation of PWM-1 on the 40-pin header.

## Compilation Procedure

### Repository Cloning

Begin by cloning the repository from Vicharak's GitHub repository using the following command:

```bash
git clone https://github.com/vicharak-in/vicharak-devicetree-overlays
```

### Building the DTBOs

DTBO compilation is carried out within the `vicharak-devicetree-overlays` directory.
Navigate to this directory and run the `make` command:

```bash
cd vicharak-devicetree-overlays
make
```

## Usage Instructions

### Prerequisites

To make use of these DTBOs, you will need the following:

1. A Vicharak Vaaman board.
2. The Vaaman board should have the latest Vicharak firmware flashed onto it.

### Steps for Applying DTBOs

1. Begin by booting into the Vicharak firmware.
2. If the DTBOs are not already present, copy them to the `/boot/overlays` directory.
3. Launch the **Vicharak Linux configuration** utility from the terminal using the following command:

```bash
sudo vicharak-config
```

4. Select **Overlays** from the menu.
5. Acknowledge any warning messages by selecting **YES** Option.
6. Now, choose the specific DTBOs you wish to activate and press **OK**.
7. Reboot the system to apply the changes.

## License

[GPLv2](./LICENSE)
