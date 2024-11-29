# Component Makefile
#
## These include paths would be exported to project level

# For Jerryscript version please refer to jerryscript/jerry-core/include/jerryscript.h
# Jerryscript version: 3.0.0

#JERRYSCRIPT_VERSION := 2.4.0

ifeq ($(JERRYSCRIPT_VERSION), 2.4.0)
    # Stable 2.4.0
    JERRY_SCRIPT := jerryscript-2.4.0
    JERRY_PORT   := jerry-port-2.4.0
else
    # Mainline 3.0.0
    JERRY_SCRIPT := jerryscript
    JERRY_PORT   := jerry-port
endif

# Jerryscript c header file path
COMPONENT_ADD_INCLUDEDIRS := .
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core/api
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core/debugger
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core/ecma/base
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core/ecma/builtin-objects
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core/ecma/builtin-objects/typedarray
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core/ecma/operations
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core/include
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core/jcontext
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core/jmem
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core/jrt
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core/lit
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core/parser/js
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core/parser/regexp
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-core/vm

COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-ext/arg
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-ext/common
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-ext/debugger
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-ext/handle-scope
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-ext/include
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-math/include

COMPONENT_ADD_INCLUDEDIRS += $(JERRY_PORT)/include
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-port/default
COMPONENT_ADD_INCLUDEDIRS += $(JERRY_SCRIPT)/jerry-port/default/include

# Jerryscript source include
COMPONENT_SRCDIRS := .
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core/api
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core/debugger
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core/ecma/base
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core/ecma/builtin-objects
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core/ecma/builtin-objects/typedarray
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core/ecma/operations
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core/include
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core/jcontext
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core/jmem
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core/jrt
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core/lit
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core/parser/js
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core/parser/regexp
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-core/vm

COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-ext/arg
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-ext/common
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-ext/debugger
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-ext/handler
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-ext/handle-scope
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-ext/module
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-ext/util
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-math

COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-port/common
COMPONENT_SRCDIRS += $(JERRY_SCRIPT)/jerry-port/default

COMPONENT_SRCDIRS += $(JERRY_PORT)/targets/baremetal-sdk/bouffalo

# Jerryscript config
# CFLAGS += -DJERRY_CPOINTER_32_BIT="1"
# CFLAGS += -DJERRY_DEBUGGER="1"
# CFLAGS += -DJERRY_ERROR_MESSAGES="1"
# CFLAGS += -DJERRY_LINE_INFO="1"

# CFLAGS += -DLV_LVGL_H_INCLUDE_SIMPLE
# CPP_DEFINE += -DCFG_STA_MAX="1"
# CPPFLAGS += -DCFG_STA_MAX="1"
# ASMFLAGS += -DportasmHANDLE_INTERRUPT=interrupt_entry