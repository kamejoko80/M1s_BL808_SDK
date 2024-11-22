# Component Makefile
#
## These include paths would be exported to project level

# For Jerryscript version please refer to jerryscript/jerry-core/include/jerryscript.h
# Jerryscript version: 3.0.0

# Jerryscript c header file path
COMPONENT_ADD_INCLUDEDIRS := .
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core/api
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core/debugger
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core/ecma/base
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core/ecma/builtin-objects
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core/ecma/builtin-objects/typedarray
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core/ecma/operations
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core/include
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core/jcontext
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core/jmem
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core/jrt
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core/lit
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core/parser/js
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core/parser/regexp
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-core/vm

COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-ext/arg
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-ext/common
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-ext/debugger
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-ext/handle-scope
COMPONENT_ADD_INCLUDEDIRS += jerryscript/jerry-ext/include

# Jerryscript source include
COMPONENT_SRCDIRS := .
COMPONENT_SRCDIRS += jerryscript/jerry-core
COMPONENT_SRCDIRS += jerryscript/jerry-core/api
COMPONENT_SRCDIRS += jerryscript/jerry-core/debugger
COMPONENT_SRCDIRS += jerryscript/jerry-core/ecma/base
COMPONENT_SRCDIRS += jerryscript/jerry-core/ecma/builtin-objects
COMPONENT_SRCDIRS += jerryscript/jerry-core/ecma/builtin-objects/typedarray
COMPONENT_SRCDIRS += jerryscript/jerry-core/ecma/operations
COMPONENT_SRCDIRS += jerryscript/jerry-core/include
COMPONENT_SRCDIRS += jerryscript/jerry-core/jcontext
COMPONENT_SRCDIRS += jerryscript/jerry-core/jmem
COMPONENT_SRCDIRS += jerryscript/jerry-core/jrt
COMPONENT_SRCDIRS += jerryscript/jerry-core/lit
COMPONENT_SRCDIRS += jerryscript/jerry-core/parser/js
COMPONENT_SRCDIRS += jerryscript/jerry-core/parser/regexp
COMPONENT_SRCDIRS += jerryscript/jerry-core/vm

COMPONENT_SRCDIRS += jerryscript/jerry-ext/arg
COMPONENT_SRCDIRS += jerryscript/jerry-ext/common
COMPONENT_SRCDIRS += jerryscript/jerry-ext/debugger
COMPONENT_SRCDIRS += jerryscript/jerry-ext/handle-scope
COMPONENT_SRCDIRS += jerryscript/jerry-ext/module
COMPONENT_SRCDIRS += jerryscript/jerry-ext/util

COMPONENT_SRCDIRS += jerryscript/jerry-port/common
COMPONENT_SRCDIRS += jerry-port/targets/baremetal-sdk/bouffalo

# Jerryscript config
# CFLAGS += -DJERRY_CPOINTER_32_BIT="1"
# CFLAGS += -DJERRY_DEBUGGER="1"
# CFLAGS += -DJERRY_ERROR_MESSAGES="1"
# CFLAGS += -DJERRY_LINE_INFO="1"

# CFLAGS += -DLV_LVGL_H_INCLUDE_SIMPLE
# CPP_DEFINE += -DCFG_STA_MAX="1"
# CPPFLAGS += -DCFG_STA_MAX="1"
# ASMFLAGS += -DportasmHANDLE_INTERRUPT=interrupt_entry