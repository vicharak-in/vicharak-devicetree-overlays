# SPDX-License-Identifier: GPL-2.0
dtb-$(CONFIG_ARCH_ROCKCHIP) += \
	rk3399-vaaman-cdn-dp.dtbo \
	rk3399-vaaman-camera-imx219.dtbo \
	rk3399-vaaman-camera-ov5647.dtbo \
	rk3399-vaaman-dsi-waveshare.dtbo \
	rk3399-vaaman-dwc3-0-host.dtbo \
	rk3399-vaaman-dwc3-0-otg.dtbo \
	rk3399-vaaman-fpga-communication.dtbo \
	rk3399-vaaman-i2c2.dtbo \
	rk3399-vaaman-i2c6.dtbo \
	rk3399-vaaman-pwm0.dtbo \
	rk3399-vaaman-pwm1.dtbo

dtbotxt-$(CONFIG_ARCH_ROCKCHIP) += \
	README.rockchip-overlays

targets += $(dtb-y) $(dtbotxt-y)

always			:= $(dtb-y) $(dtbotxt-y)
clean-files		:= *.dtbo.disabled
