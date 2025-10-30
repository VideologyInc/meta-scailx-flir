#!/bin/bash

# FLIR_BOSON Sensor Configuration Script
# This script contains FLIR_BOSON-specific functions and configurations

# Sensor information
SENSOR_TYPE="flir_boson"
SENSOR_NAME="flir_boson"
DRIVER_FILE="flir_boson.drv"
MODE_FILE="FLIR_BOSON_MODES.txt"

# Write default mode file for FLIR_BOSON
write_default_modes() {
    echo "Writing FLIR_BOSON default modes..."
    echo -n "" > FLIR_BOSON_MODES.txt
    echo "[mode.0]" >> FLIR_BOSON_MODES.txt
    echo "xml = \"boson_mono.xml\"" >> FLIR_BOSON_MODES.txt
    echo "dwe = \"dewarp_config/sensor_dwe_boson_config.json\"" >> FLIR_BOSON_MODES.txt
}

# Load modules specific to FLIR_BOSON - returns module string
load_modules() {
    echo "flir_boson_vvcam"
}

# Main function to handle commands
main() {
    case "$1" in
        "write_default_modes")
            write_default_modes
            ;;
        "get_1080p_mode")
            echo "0"  # FLIR_BOSON_Basic_1920x1080.xml
            ;;
        "get_4k_mode")
            echo "0"  # FLIR_BOSON_Basic_1920x1080.xml (no 4K available)
            ;;
        "get_driver_file")
            echo "flir_boson.drv"
            ;;
        "get_mode_file")
            echo "FLIR_BOSON_MODES.txt"
            ;;
        "get_sensor_modules"|"load_modules")
            load_modules
            ;;
        "get_camera_name")
            echo "flir_boson"
            ;;
        "needs_isp_setup")
            return 0  # FLIR_BOSON needs ISP setup
            ;;
        *)
            echo "Usage: $0 {write_default_modes|get_1080p_mode|get_4k_mode|get_driver_file|get_mode_file|get_sensor_modules|get_camera_name|needs_isp_setup|load_modules}"
            exit 1
            ;;
    esac
}

# If script is executed directly, run main function
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main "$@"
fi
