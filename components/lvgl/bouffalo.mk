# Component Makefile
#
## These include paths would be exported to project level

#LVGL_SRC := lvgl_8.2.0
LVGL_SRC := lvgl_8.3.2

CFLAGS += -DLV_LVGL_H_INCLUDE_SIMPLE -DLV_BUILD_TEST=1 -DLV_BUILD_TEST_NO_MAIN=1

COMPONENT_ADD_INCLUDEDIRS := .
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/core
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/draw
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/draw/arm2d
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/draw/nxp
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/draw/sdl
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/draw/stm32_dma2d
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/draw/sw
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/draw/swm341_dma2d
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/font
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/hal
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/misc
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/widgets
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/layouts/flex
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/layouts/grid
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/themes/
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/themes/basic
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/themes/default
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/themes/mono
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/animimg
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/calendar
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/chart
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/colorwheel
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/imgbtn
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/keyboard
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/led
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/list
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/menu
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/meter
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/msgbox
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/span
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/spinbox
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/spinner
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/tabview
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/tileview
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/win
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/analogclock
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/carousel
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/dclock
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/radiobtn
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/src/extra/widgets/video
COMPONENT_ADD_INCLUDEDIRS += $(LVGL_SRC)/demos
COMPONENT_ADD_INCLUDEDIRS += port

COMPONENT_SRCDIRS := .
COMPONENT_SRCDIRS := $(LVGL_SRC)
COMPONENT_SRCDIRS += $(LVGL_SRC)/src
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/core
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/draw
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/draw/arm2d
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/draw/nxp
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/draw/sdl
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/draw/stm32_dma2d
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/draw/sw
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/draw/swm341_dma2d
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/font
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/hal
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/misc
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/widgets
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/layouts/flex
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/layouts/grid
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/themes/
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/themes/basic
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/themes/default
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/themes/mono
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/animimg
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/calendar
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/chart
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/colorwheel
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/imgbtn
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/keyboard
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/led
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/list
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/menu
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/meter
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/msgbox
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/span
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/spinbox
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/spinner
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/tabview
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/tileview
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/win
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/analogclock
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/carousel
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/dclock
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/widgets/radiobtn
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/libs
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/libs/png
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/libs/gif
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/libs/bmp
#COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/libs/ffmpeg
#COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/libs/freetype
#COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/libs/rlottie
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/libs/qrcode
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/libs/sjpg
COMPONENT_SRCDIRS += $(LVGL_SRC)/src/extra/libs/fsdrv
COMPONENT_SRCDIRS += $(LVGL_SRC)/demos
COMPONENT_SRCDIRS += $(LVGL_SRC)/demos/benchmark
COMPONENT_SRCDIRS += $(LVGL_SRC)/demos/benchmark/assets
COMPONENT_SRCDIRS += $(LVGL_SRC)/demos/keypad_encoder
COMPONENT_SRCDIRS += $(LVGL_SRC)/demos/music
COMPONENT_SRCDIRS += $(LVGL_SRC)/demos/music/assets
COMPONENT_SRCDIRS += $(LVGL_SRC)/demos/stress
COMPONENT_SRCDIRS += $(LVGL_SRC)/demos/widgets
COMPONENT_SRCDIRS += $(LVGL_SRC)/demos/widgets/assets
COMPONENT_SRCDIRS += port

# CFLAGS += -DLV_LVGL_H_INCLUDE_SIMPLE
# CPP_DEFINE += -DCFG_STA_MAX="1"
# CPPFLAGS += -DCFG_STA_MAX="1"
# ASMFLAGS += -DportasmHANDLE_INTERRUPT=interrupt_entry
