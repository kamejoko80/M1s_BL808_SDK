#ifndef JERRYSCRIPT_MACRO_H
#define JERRYSCRIPT_MACRO_H
#include "jerryscript.h"

/* Jerryscript native C function register definition */
#define JERRY_REG_FUNC_DEF(function,handler) \
    static void jerry_register_##function(void) { \
        jerry_value_t global_object = jerry_current_realm(); \
        jerry_value_t property_name = jerry_string_sz(#function); \
        jerry_value_t property_value = jerry_function_external(handler); \
        jerry_value_t set_result = jerry_object_set(global_object, property_name, property_value); \
        if(jerry_value_is_exception(set_result)) { \
            printf("Failed register %s function\n", #function); \
        } \
        jerry_value_free(set_result); \
        jerry_value_free(property_value); \
        jerry_value_free(property_name); \
        jerry_value_free(global_object); \
    }

/* Jerryscript native C function register prototype */
#define JERRY_REG_FUNC_PROTOTYPE(function) \
    static void jerry_register_##function(void);

/* Jerryscript native C function register call */
#define JERRY_REG_FUNC_CALL(function) \
    jerry_register_##function();

#endif /* !JERRYSCRIPT_MACRO_H */