KERNEL_HEADER_VERSION ?= $(shell uname -r)

CONFIG_ARCH_ROCKCHIP ?= rockchip
DTC_FLAGS := -@

# Include overlays Makefile
include overlays/Makefile

DTBO			:=	$(addprefix overlays/,$(dtb-rockchip))
DISABLED		:=	$(addsuffix .disabled,$(DTBO))

.PHONY: all
all: build

# Build rule for DTBO files
build: $(DTBO)
%.dtbo: %.dts
	cpp -nostdinc -undef -x assembler-with-cpp -E -I "/usr/src/linux-headers-$(KERNEL_HEADER_VERSION)/include" -I "/usr/lib/modules/$(KERNEL_HEADER_VERSION)/build/include" "$<" "$@.disabled"
	dtc -q -@ -I dts -O dtb -o "$@" "$@.disabled"

# Clean rule
.PHONY: distclean
distclean: clean

.PHONY: clean
clean:
	rm -rf $(DTBO) $(TMP)
