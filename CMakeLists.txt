cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)
project(pio_ws2812 C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_BUILD_TYPE Debug)

pico_sdk_init()

add_executable(c-pico-project)

pico_generate_pio_header(c-pico-project ${CMAKE_CURRENT_LIST_DIR}/ws2812.pio OUTPUT_DIR ${CMAKE_CURRENT_LIST_DIR}/generated)

target_sources(c-pico-project PRIVATE main.c)

target_link_libraries(c-pico-project PRIVATE pico_stdlib hardware_pio)

pico_enable_stdio_usb(c-pico-project 1)
pico_enable_stdio_uart(c-pico-project 1)

pico_add_extra_outputs(c-pico-project)
