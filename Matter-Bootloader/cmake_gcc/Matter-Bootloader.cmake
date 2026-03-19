####################################################################
# Automatically-generated file. Do not edit!                       #
####################################################################

set(SDK_PATH "C:/Users/alji/.silabs/slt/installs/conan/p/simpl1a11563c2e399/p")
set(COPIED_SDK_PATH "simplicity_sdk_2025.12.1")
set(PKG_PATH "C:/Users/alji/.silabs/slt/installs")

add_library(slc OBJECT
    "${SDK_PATH}/../../mattecce5da49b7e37/p/third_party/matter_sdk/examples/platform/silabs/syscalls_stubs.cpp"
    "${SDK_PATH}/bootloader/platform/bootloader/core/btl_bootload.c"
    "${SDK_PATH}/bootloader/platform/bootloader/core/btl_core.c"
    "${SDK_PATH}/bootloader/platform/bootloader/core/btl_main.c"
    "${SDK_PATH}/bootloader/platform/bootloader/core/btl_parse.c"
    "${SDK_PATH}/bootloader/platform/bootloader/core/btl_reset.c"
    "${SDK_PATH}/bootloader/platform/bootloader/core/flash/btl_internal_flash.c"
    "${SDK_PATH}/bootloader/platform/bootloader/debug/btl_debug.c"
    "${SDK_PATH}/bootloader/platform/bootloader/debug/btl_debug_swo.c"
    "${SDK_PATH}/bootloader/platform/bootloader/driver/btl_driver_delay.c"
    "${SDK_PATH}/bootloader/platform/bootloader/driver/btl_driver_spi_controller_usart.c"
    "${SDK_PATH}/bootloader/platform/bootloader/driver/btl_driver_util.c"
    "${SDK_PATH}/bootloader/platform/bootloader/parser/compression/btl_decompress_lz4.c"
    "${SDK_PATH}/bootloader/platform/bootloader/parser/compression/btl_decompress_lzma.c"
    "${SDK_PATH}/bootloader/platform/bootloader/parser/compression/lzma/LzmaDec.c"
    "${SDK_PATH}/bootloader/platform/bootloader/parser/gbl/btl_gbl_custom_tags.c"
    "${SDK_PATH}/bootloader/platform/bootloader/parser/gbl/btl_gbl_format.c"
    "${SDK_PATH}/bootloader/platform/bootloader/parser/gbl/btl_gbl_parser.c"
    "${SDK_PATH}/bootloader/platform/bootloader/security/btl_crc16.c"
    "${SDK_PATH}/bootloader/platform/bootloader/security/btl_crc32.c"
    "${SDK_PATH}/bootloader/platform/bootloader/security/btl_security_aes.c"
    "${SDK_PATH}/bootloader/platform/bootloader/security/btl_security_ecdsa.c"
    "${SDK_PATH}/bootloader/platform/bootloader/security/btl_security_sha256.c"
    "${SDK_PATH}/bootloader/platform/bootloader/security/btl_security_tokens.c"
    "${SDK_PATH}/bootloader/platform/bootloader/security/ecc/ecc.c"
    "${SDK_PATH}/bootloader/platform/bootloader/security/sha/btl_sha256.c"
    "${SDK_PATH}/bootloader/platform/bootloader/security/sha/crypto_sha.c"
    "${SDK_PATH}/bootloader/platform/bootloader/security/sha/cryptoacc_sha.c"
    "${SDK_PATH}/bootloader/platform/bootloader/security/sha/se_sha.c"
    "${SDK_PATH}/bootloader/platform/bootloader/storage/bootloadinfo/btl_storage_bootloadinfo_single.c"
    "${SDK_PATH}/bootloader/platform/bootloader/storage/btl_callbacks_stub.c"
    "${SDK_PATH}/bootloader/platform/bootloader/storage/btl_storage.c"
    "${SDK_PATH}/bootloader/platform/bootloader/storage/btl_storage_library.c"
    "${SDK_PATH}/bootloader/platform/bootloader/storage/spiflash/btl_storage_spiflash.c"
    "${SDK_PATH}/devices/platform/Device/SiliconLabs/EFR32MG26/Source/startup_efr32mg26.c"
    "${SDK_PATH}/devices/platform/Device/SiliconLabs/EFR32MG26/Source/system_efr32mg26.c"
    "${SDK_PATH}/platform_common/platform/common/src/sl_assert.c"
    "${SDK_PATH}/platform_common/platform/common/src/sl_syscalls.c"
    "${SDK_PATH}/platform_core/platform/common/src/sl_core_cortexm.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_acmp.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_burtc.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_cmu.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_dbg.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_emu.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_eusart.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_gpcrc.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_gpio.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_i2c.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_iadc.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_lcd.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_ldma.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_letimer.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_msc.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_opamp.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_pcnt.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_prs.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_rmu.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_system.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_timer.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_usart.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_vdac.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_wdog.c"
    "${SDK_PATH}/platform_core/platform/service/memory_manager/src/sl_memory_manager.c"
    "${SDK_PATH}/platform_core/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c"
    "${SDK_PATH}/platform_core/platform/service/memory_manager/src/sl_memory_manager_pool.c"
    "${SDK_PATH}/platform_core/platform/service/memory_manager/src/sl_memory_manager_pool_common.c"
    "${SDK_PATH}/platform_core/platform/service/memory_manager/src/sl_memory_manager_region.c"
    "${SDK_PATH}/platform_core/platform/service/memory_manager/src/sl_memory_manager_retarget.c"
    "${SDK_PATH}/platform_core/platform/service/memory_manager/src/sli_memory_manager_common.c"
    "${SDK_PATH}/platform_core/platform/service/udelay/src/sl_udelay.c"
    "${SDK_PATH}/platform_core/platform/service/udelay/src/sl_udelay_armv6m_gcc.S"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_mbedtls_support/src/se_aes.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c"
    "${SDK_PATH}/security_mbedtls_source/library/aes.c"
    "${SDK_PATH}/security_mbedtls_source/library/constant_time.c"
    "${SDK_PATH}/security_mbedtls_source/library/platform.c"
    "${SDK_PATH}/security_mbedtls_source/library/platform_util.c"
    "${SDK_PATH}/security_mbedtls_source/library/psa_crypto_client.c"
    "${SDK_PATH}/security_mbedtls_source/library/psa_util.c"
    "${SDK_PATH}/security_mbedtls_source/library/threading.c"
    "${SDK_PATH}/security_se_manager/platform/security/sl_component/se_manager/src/sl_se_manager.c"
    "${SDK_PATH}/security_se_manager/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c"
    "${SDK_PATH}/security_se_manager/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c"
    "${SDK_PATH}/security_se_manager/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c"
    "${SDK_PATH}/security_se_manager/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c"
    "${SDK_PATH}/security_se_manager/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c"
    "${SDK_PATH}/security_se_manager/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c"
    "${SDK_PATH}/security_se_manager/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c"
    "${SDK_PATH}/security_se_manager/platform/security/sl_component/se_manager/src/sl_se_manager_util.c"
    "${SDK_PATH}/security_se_manager/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c"
    "${SDK_PATH}/security_tfm/lib/fih/src/fih.c"
    "${SDK_PATH}/security_tfm/platform/ext/target/siliconlabs/hse/sli_se.c"
)

target_include_directories(slc PUBLIC
   "../config"
   "../autogen"
    "${SDK_PATH}/devices/platform/Device/SiliconLabs/EFR32MG26/Include"
    "${SDK_PATH}/platform_common/platform/common/inc"
    "${SDK_PATH}/bootloader/platform/bootloader"
    "${SDK_PATH}/bootloader/platform/bootloader/api"
    "${SDK_PATH}/bootloader/platform/bootloader/parser/compression"
    "${SDK_PATH}/bootloader/platform/bootloader/debug"
    "${SDK_PATH}/bootloader/platform/bootloader/parser"
    "${SDK_PATH}/bootloader/platform/bootloader/driver"
    "${SDK_PATH}/bootloader/platform/bootloader/storage/spiflash"
    "${SDK_PATH}/bootloader/platform/bootloader/security"
    "${SDK_PATH}/cmsis/Core/Include"
    "${SDK_PATH}/platform_core/platform/emlib/inc"
    "${SDK_PATH}/platform_core/platform/common/errno_error_codes/inc"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_mbedtls_support/config"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_mbedtls_support/config/preset"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_mbedtls_support/inc"
    "${SDK_PATH}/security_mbedtls_source/include"
    "${SDK_PATH}/security_mbedtls_source/library"
    "${SDK_PATH}/platform_core/platform/service/memory_manager/inc"
    "${SDK_PATH}/platform_core/platform/service/memory_manager/src"
    "${SDK_PATH}/security_mbedtls/platform/security/sl_component/sl_psa_driver/inc"
    "${SDK_PATH}/security_se_manager/platform/security/sl_component/se_manager/inc"
    "${SDK_PATH}/platform_core/platform/common/inc"
    "${SDK_PATH}/security_tfm/lib/fih/inc"
    "${SDK_PATH}/security_tfm/platform/include"
    "${SDK_PATH}/security_se_manager/platform/security/sl_component/sli_psec_osal/inc"
    "${SDK_PATH}/platform_core/platform/service/udelay/inc"
)

target_compile_definitions(slc PUBLIC
    "EFR32MG26B510F3200IL136=1"
    "SL_CODE_COMPONENT_SYSTEM=system"
    "SE_MANAGER_CONFIG_FILE=\"btl_aes_ctr_stream_block_cfg.h\""
    "BTL_PARSER_SUPPORT_CUSTOM_TAGS=1"
    "BTL_PARSER_SUPPORT_LZMA=1"
    "_LZMA_SIZE_OPT=1"
    "BOOTLOADER_ENABLE=1"
    "BOOTLOADER_SECOND_STAGE=1"
    "SL_RAMFUNC_DISABLE=1"
    "__START=main"
    "__STARTUP_CLEAR_BSS=1"
    "SYSTEM_NO_STATIC_MEMORY=1"
    "BTL_PARSER_SUPPORT_LZ4=1"
    "BTL_SPI_USART_ENABLE=1"
    "BOOTLOADER_SUPPORT_EXTERNAL_STORAGE=1"
    "BOOTLOADER_SUPPORT_STORAGE=1"
    "SL_BOARD_NAME=\"BRD4118A\""
    "SL_BOARD_REV=\"A03\""
    "HARDWARE_BOARD_DEFAULT_RF_BAND_2400=1"
    "HARDWARE_BOARD_SUPPORTS_1_RF_BAND=1"
    "HARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1"
    "HFXO_FREQ=39000000"
    "SL_COMPONENT_CATALOG_PRESENT=1"
    "MBEDTLS_CONFIG_FILE=<sl_mbedtls_trustzone_config.h>"
    "SL_CODE_COMPONENT_MEMORY_MANAGER=memory_manager"
    "MBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>"
    "SL_CODE_COMPONENT_SE_MANAGER=se_manager"
    "SL_CODE_COMPONENT_CORE=core"
    "SL_CODE_COMPONENT_PSEC_OSAL=psec_osal"
    "SL_TRUSTZONE_SECURE=1"
)

target_link_libraries(slc PUBLIC
    "-Wl,--start-group"
    "gcc"
    "c"
    "m"
    "nosys"
    "-Wl,--end-group"
)
target_compile_options(slc PUBLIC
    $<$<COMPILE_LANGUAGE:C>:-mcpu=cortex-m33>
    $<$<COMPILE_LANGUAGE:C>:-mthumb>
    $<$<COMPILE_LANGUAGE:C>:-mfpu=fpv5-sp-d16>
    $<$<COMPILE_LANGUAGE:C>:-mfloat-abi=hard>
    $<$<COMPILE_LANGUAGE:C>:-mcmse>
    $<$<COMPILE_LANGUAGE:C>:-Wall>
    $<$<COMPILE_LANGUAGE:C>:-Wextra>
    $<$<COMPILE_LANGUAGE:C>:-Os>
    $<$<COMPILE_LANGUAGE:C>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:C>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:C>:-fomit-frame-pointer>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:C>:-Wno-ignored-qualifiers>
    $<$<COMPILE_LANGUAGE:C>:-Wno-sign-compare>
    $<$<COMPILE_LANGUAGE:C>:-fno-lto>
    $<$<COMPILE_LANGUAGE:CXX>:-mcpu=cortex-m33>
    $<$<COMPILE_LANGUAGE:CXX>:-mthumb>
    $<$<COMPILE_LANGUAGE:CXX>:-mfpu=fpv5-sp-d16>
    $<$<COMPILE_LANGUAGE:CXX>:-mfloat-abi=hard>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
    $<$<COMPILE_LANGUAGE:CXX>:-mcmse>
    $<$<COMPILE_LANGUAGE:CXX>:-Wall>
    $<$<COMPILE_LANGUAGE:CXX>:-Wextra>
    $<$<COMPILE_LANGUAGE:CXX>:-Os>
    $<$<COMPILE_LANGUAGE:CXX>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-fomit-frame-pointer>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-ignored-qualifiers>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-sign-compare>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-lto>
    $<$<COMPILE_LANGUAGE:ASM>:-mcpu=cortex-m33>
    $<$<COMPILE_LANGUAGE:ASM>:-mthumb>
    $<$<COMPILE_LANGUAGE:ASM>:-mfpu=fpv5-sp-d16>
    $<$<COMPILE_LANGUAGE:ASM>:-mfloat-abi=hard>
    "$<$<COMPILE_LANGUAGE:ASM>:SHELL:-x assembler-with-cpp>"
)

set(post_build_command ${POST_BUILD_EXE} postbuild "./Matter-Bootloader.slpb" --parameter build_dir:"$<TARGET_FILE_DIR:Matter-Bootloader>")
set_property(TARGET slc PROPERTY C_STANDARD 17)
set_property(TARGET slc PROPERTY CXX_STANDARD 17)
set_property(TARGET slc PROPERTY CXX_EXTENSIONS OFF)

target_link_options(slc INTERFACE
    -mcpu=cortex-m33
    -mthumb
    -mfpu=fpv5-sp-d16
    -mfloat-abi=hard
    -T${CMAKE_CURRENT_LIST_DIR}/../autogen/linkerfile.ld
    --specs=nano.specs
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:Matter-Bootloader>/Matter-Bootloader.map"
    -Wl,--no-warn-rwx-segment
    "SHELL:-Wl,--wrap=_free_r -Wl,--wrap=_malloc_r -Wl,--wrap=_calloc_r -Wl,--wrap=_realloc_r"
    -fno-lto
    -Wl,--gc-sections
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA