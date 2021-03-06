# This file was automagically generated by mbed.org. For more information, 
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

###############################################################################
# Boiler-plate

# cross-platform directory manipulation
ifeq ($(shell echo $$OS),$$OS)
    MAKEDIR = if not exist "$(1)" mkdir "$(1)"
    RM = rmdir /S /Q "$(1)"
else
    MAKEDIR = '$(SHELL)' -c "mkdir -p \"$(1)\""
    RM = '$(SHELL)' -c "rm -rf \"$(1)\""
endif

OBJDIR := BUILD
# Move to the build directory
ifeq (,$(filter $(OBJDIR),$(notdir $(CURDIR))))
.SUFFIXES:
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKETARGET = '$(MAKE)' --no-print-directory -C $(OBJDIR) -f '$(mkfile_path)' \
		'SRCDIR=$(CURDIR)' $(MAKECMDGOALS)
.PHONY: $(OBJDIR) clean
all:
	+@$(call MAKEDIR,$(OBJDIR))
	+@$(MAKETARGET)
$(OBJDIR): all
Makefile : ;
% :: $(OBJDIR) ; :
clean :
	rm -rf $(OBJDIR)/*

else

# trick rules into thinking we are in the root, when we are in the bulid dir
VPATH = ..

# Boiler-plate
###############################################################################
# Project settings

PROJECT := project


# Project settings
###############################################################################
# Objects and Paths

OBJECTS += ./main.o

MBED_OBJECTS += ./mbed-os/drivers/AnalogIn.o
MBED_OBJECTS += ./mbed-os/drivers/BusIn.o
MBED_OBJECTS += ./mbed-os/drivers/BusInOut.o
MBED_OBJECTS += ./mbed-os/drivers/BusOut.o
MBED_OBJECTS += ./mbed-os/drivers/CAN.o
MBED_OBJECTS += ./mbed-os/drivers/Ethernet.o
MBED_OBJECTS += ./mbed-os/drivers/FileBase.o
MBED_OBJECTS += ./mbed-os/drivers/FileLike.o
MBED_OBJECTS += ./mbed-os/drivers/FilePath.o
MBED_OBJECTS += ./mbed-os/drivers/FileSystemLike.o
MBED_OBJECTS += ./mbed-os/drivers/I2C.o
MBED_OBJECTS += ./mbed-os/drivers/I2CSlave.o
MBED_OBJECTS += ./mbed-os/drivers/InterruptIn.o
MBED_OBJECTS += ./mbed-os/drivers/InterruptManager.o
MBED_OBJECTS += ./mbed-os/drivers/LocalFileSystem.o
MBED_OBJECTS += ./mbed-os/drivers/RawSerial.o
MBED_OBJECTS += ./mbed-os/drivers/SPI.o
MBED_OBJECTS += ./mbed-os/drivers/SPISlave.o
MBED_OBJECTS += ./mbed-os/drivers/Serial.o
MBED_OBJECTS += ./mbed-os/drivers/SerialBase.o
MBED_OBJECTS += ./mbed-os/drivers/Stream.o
MBED_OBJECTS += ./mbed-os/drivers/Ticker.o
MBED_OBJECTS += ./mbed-os/drivers/Timeout.o
MBED_OBJECTS += ./mbed-os/drivers/Timer.o
MBED_OBJECTS += ./mbed-os/drivers/TimerEvent.o
MBED_OBJECTS += ./mbed-os/events/EventQueue.o
MBED_OBJECTS += ./mbed-os/events/equeue/equeue.o
MBED_OBJECTS += ./mbed-os/events/equeue/equeue_mbed.o
MBED_OBJECTS += ./mbed-os/events/equeue/equeue_posix.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/EthernetInterface.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/emac_lwip.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/emac_stack_lwip.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip-eth/arch/TARGET_NXP/lpc17_emac.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip-eth/arch/TARGET_NXP/lpc_phy_dp83848.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip-sys/arch/lwip_checksum.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip-sys/arch/lwip_memcpy.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip-sys/arch/lwip_sys_arch.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/api/lwip_api_lib.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/api/lwip_api_msg.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/api/lwip_err.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/api/lwip_netbuf.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/api/lwip_netdb.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/api/lwip_netifapi.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/api/lwip_sockets.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/api/lwip_tcpip.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv4/lwip_autoip.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv4/lwip_dhcp.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv4/lwip_etharp.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv4/lwip_icmp.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv4/lwip_igmp.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv4/lwip_ip4.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv4/lwip_ip4_addr.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv4/lwip_ip4_frag.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv6/lwip_dhcp6.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv6/lwip_ethip6.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv6/lwip_icmp6.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv6/lwip_inet6.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv6/lwip_ip6.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv6/lwip_ip6_addr.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv6/lwip_ip6_frag.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv6/lwip_mld6.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv6/lwip_nd6.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_def.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_dns.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_inet_chksum.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_init.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_ip.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_mem.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_memp.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_netif.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_pbuf.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_raw.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_stats.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_sys.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_tcp.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_tcp_in.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_tcp_out.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_timeouts.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/lwip_udp.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/netif/lwip_ethernet.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/netif/lwip_ethernetif.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/netif/lwip_lowpan6.o
MBED_OBJECTS += ./mbed-os/features/FEATURE_LWIP/lwip-interface/lwip_stack.o
MBED_OBJECTS += ./mbed-os/features/frameworks/greentea-client/source/greentea_metrics.o
MBED_OBJECTS += ./mbed-os/features/frameworks/greentea-client/source/greentea_serial.o
MBED_OBJECTS += ./mbed-os/features/frameworks/greentea-client/source/test_env.o
MBED_OBJECTS += ./mbed-os/features/frameworks/unity/source/unity.o
MBED_OBJECTS += ./mbed-os/features/frameworks/utest/mbed-utest-shim.o
MBED_OBJECTS += ./mbed-os/features/frameworks/utest/source/unity_handler.o
MBED_OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_case.o
MBED_OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_default_handlers.o
MBED_OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_greentea_handlers.o
MBED_OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_harness.o
MBED_OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_shim.o
MBED_OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_stack_trace.o
MBED_OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_types.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/platform/src/mbed_trng.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/aes.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/aesni.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/arc4.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/asn1parse.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/asn1write.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/base64.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/bignum.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/blowfish.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/camellia.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ccm.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/certs.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/cipher.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/cipher_wrap.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/cmac.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ctr_drbg.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/debug.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/des.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/dhm.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ecdh.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ecdsa.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ecjpake.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ecp.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ecp_curves.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/entropy.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/entropy_poll.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/error.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/gcm.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/havege.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/hmac_drbg.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/md.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/md2.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/md4.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/md5.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/md_wrap.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/memory_buffer_alloc.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/net_sockets.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/oid.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/padlock.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/pem.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/pk.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/pk_wrap.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/pkcs11.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/pkcs12.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/pkcs5.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/pkparse.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/pkwrite.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/platform.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ripemd160.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/rsa.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/sha1.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/sha256.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/sha512.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ssl_cache.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ssl_ciphersuites.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ssl_cli.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ssl_cookie.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ssl_srv.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ssl_ticket.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/ssl_tls.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/threading.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/timing.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/version.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/version_features.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/x509.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/x509_create.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/x509_crl.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/x509_crt.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/x509_csr.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/x509write_crt.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/x509write_csr.o
MBED_OBJECTS += ./mbed-os/features/mbedtls/src/xtea.o
MBED_OBJECTS += ./mbed-os/features/netsocket/NetworkInterface.o
MBED_OBJECTS += ./mbed-os/features/netsocket/NetworkStack.o
MBED_OBJECTS += ./mbed-os/features/netsocket/Socket.o
MBED_OBJECTS += ./mbed-os/features/netsocket/SocketAddress.o
MBED_OBJECTS += ./mbed-os/features/netsocket/TCPServer.o
MBED_OBJECTS += ./mbed-os/features/netsocket/TCPSocket.o
MBED_OBJECTS += ./mbed-os/features/netsocket/UDPSocket.o
MBED_OBJECTS += ./mbed-os/features/netsocket/WiFiAccessPoint.o
MBED_OBJECTS += ./mbed-os/features/netsocket/nsapi_dns.o
MBED_OBJECTS += ./mbed-os/hal/mbed_gpio.o
MBED_OBJECTS += ./mbed-os/hal/mbed_lp_ticker_api.o
MBED_OBJECTS += ./mbed-os/hal/mbed_pinmap_common.o
MBED_OBJECTS += ./mbed-os/hal/mbed_ticker_api.o
MBED_OBJECTS += ./mbed-os/hal/mbed_us_ticker_api.o
MBED_OBJECTS += ./mbed-os/platform/CallChain.o
MBED_OBJECTS += ./mbed-os/platform/mbed_alloc_wrappers.o
MBED_OBJECTS += ./mbed-os/platform/mbed_assert.o
MBED_OBJECTS += ./mbed-os/platform/mbed_board.o
MBED_OBJECTS += ./mbed-os/platform/mbed_critical.o
MBED_OBJECTS += ./mbed-os/platform/mbed_error.o
MBED_OBJECTS += ./mbed-os/platform/mbed_interface.o
MBED_OBJECTS += ./mbed-os/platform/mbed_mem_trace.o
MBED_OBJECTS += ./mbed-os/platform/mbed_rtc_time.o
MBED_OBJECTS += ./mbed-os/platform/mbed_semihost_api.o
MBED_OBJECTS += ./mbed-os/platform/mbed_stats.o
MBED_OBJECTS += ./mbed-os/platform/mbed_wait_api_no_rtos.o
MBED_OBJECTS += ./mbed-os/platform/mbed_wait_api_rtos.o
MBED_OBJECTS += ./mbed-os/platform/retarget.o
MBED_OBJECTS += ./mbed-os/rtos/Mutex.o
MBED_OBJECTS += ./mbed-os/rtos/RtosTimer.o
MBED_OBJECTS += ./mbed-os/rtos/Semaphore.o
MBED_OBJECTS += ./mbed-os/rtos/Thread.o
MBED_OBJECTS += ./mbed-os/rtos/rtos_idle.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/HAL_CM.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/RTX_Conf_CM.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/TARGET_M3/TOOLCHAIN_GCC/HAL_CM3.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/TARGET_M3/TOOLCHAIN_GCC/SVC_Table.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/rt_CMSIS.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/rt_Event.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/rt_List.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/rt_Mailbox.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/rt_MemBox.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/rt_Memory.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/rt_Mutex.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/rt_OsEventObserver.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/rt_Robin.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/rt_Semaphore.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/rt_System.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/rt_Task.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/rt_Time.o
MBED_OBJECTS += ./mbed-os/rtos/rtx/TARGET_CORTEX_M/rt_Timer.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/analogin_api.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/analogout_api.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/can_api.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/device/TOOLCHAIN_GCC_ARM/startup_LPC17xx.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/device/cmsis_nvic.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/device/system_LPC17xx.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/ethernet_api.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/gpio_api.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/gpio_irq_api.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/i2c_api.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/pinmap.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/port_api.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/pwmout_api.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/rtc_api.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/serial_api.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/sleep.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/spi_api.o
MBED_OBJECTS += ./mbed-os/targets/TARGET_NXP/TARGET_LPC176X/us_ticker.o

OBJECTS += $(MBED_OBJECTS)

INCLUDE_PATHS += -I../
INCLUDE_PATHS += -I../.
INCLUDE_PATHS += -I.././mbed-os
INCLUDE_PATHS += -I.././mbed-os/cmsis
INCLUDE_PATHS += -I.././mbed-os/cmsis/TOOLCHAIN_GCC
INCLUDE_PATHS += -I.././mbed-os/docs
INCLUDE_PATHS += -I.././mbed-os/drivers
INCLUDE_PATHS += -I.././mbed-os/events
INCLUDE_PATHS += -I.././mbed-os/events/equeue
INCLUDE_PATHS += -I.././mbed-os/features
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip-eth
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip-eth/arch
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip-eth/arch/TARGET_NXP
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip-sys
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip-sys/arch
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/api
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv4
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/core/ipv6
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/include
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/include/lwip
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/include/lwip/priv
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/include/netif
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/include/netif/ppp
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/include/netif/ppp/polarssl
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_LWIP/lwip-interface/lwip/src/netif
INCLUDE_PATHS += -I.././mbed-os/features/frameworks
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/greentea-client
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/greentea-client/greentea-client
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/greentea-client/source
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/unity
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/unity/source
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/unity/unity
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/utest
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/utest/source
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/utest/utest
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/importer
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/inc
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/inc/mbedtls
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/platform
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/platform/inc
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/platform/src
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/src
INCLUDE_PATHS += -I.././mbed-os/features/nanostack
INCLUDE_PATHS += -I.././mbed-os/features/netsocket
INCLUDE_PATHS += -I.././mbed-os/features/storage
INCLUDE_PATHS += -I.././mbed-os/hal
INCLUDE_PATHS += -I.././mbed-os/hal/storage_abstraction
INCLUDE_PATHS += -I.././mbed-os/platform
INCLUDE_PATHS += -I.././mbed-os/rtos
INCLUDE_PATHS += -I.././mbed-os/rtos/rtx
INCLUDE_PATHS += -I.././mbed-os/rtos/rtx/TARGET_CORTEX_M
INCLUDE_PATHS += -I.././mbed-os/rtos/rtx/TARGET_CORTEX_M/TARGET_M3
INCLUDE_PATHS += -I.././mbed-os/rtos/rtx/TARGET_CORTEX_M/TARGET_M3/TOOLCHAIN_GCC
INCLUDE_PATHS += -I.././mbed-os/targets
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_NXP
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_NXP/TARGET_LPC176X
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_NXP/TARGET_LPC176X/TARGET_MBED_LPC1768
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_NXP/TARGET_LPC176X/device
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_NXP/TARGET_LPC176X/device/TOOLCHAIN_GCC_ARM

LIBRARY_PATHS :=
LIBRARIES :=
LINKER_SCRIPT := .././mbed-os/targets/TARGET_NXP/TARGET_LPC176X/device/TOOLCHAIN_GCC_ARM/LPC1768.ld

# Objects and Paths
###############################################################################
# Tools and Flags

AS      = 'arm-none-eabi-gcc' '-x' 'assembler-with-cpp' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m3' '-mthumb'
CC      = 'arm-none-eabi-gcc' '-std=gnu99' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m3' '-mthumb'
CPP     = 'arm-none-eabi-g++' '-std=gnu++98' '-fno-rtti' '-Wvla' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m3' '-mthumb'
LD      = 'arm-none-eabi-gcc' '-Wl,--gc-sections' '-Wl,--wrap,main' '-Wl,--wrap,_malloc_r' '-Wl,--wrap,_free_r' '-Wl,--wrap,_realloc_r' '-Wl,--wrap,_calloc_r' '-Wl,--wrap,exit' '-Wl,--wrap,atexit' '-mcpu=cortex-m3' '-mthumb'
ELF2BIN = 'arm-none-eabi-objcopy'


C_FLAGS += -std=gnu99
C_FLAGS += -DDEVICE_ERROR_PATTERN=1
C_FLAGS += -DFEATURE_LWIP=1
C_FLAGS += -D__MBED__=1
C_FLAGS += -DDEVICE_I2CSLAVE=1
C_FLAGS += -DTARGET_LIKE_MBED
C_FLAGS += -DTARGET_NXP
C_FLAGS += -DTARGET_LPC176X
C_FLAGS += -DDEVICE_PORTIN=1
C_FLAGS += -DDEVICE_RTC=1
C_FLAGS += -DTOOLCHAIN_object
C_FLAGS += -D__CMSIS_RTOS
C_FLAGS += -DTOOLCHAIN_GCC
C_FLAGS += -DDEVICE_CAN=1
C_FLAGS += -DTARGET_LIKE_CORTEX_M3
C_FLAGS += -DTARGET_CORTEX_M
C_FLAGS += -DARM_MATH_CM3
C_FLAGS += -DDEVICE_ANALOGOUT=1
C_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
C_FLAGS += -DTARGET_M3
C_FLAGS += -DDEVICE_SERIAL=1
C_FLAGS += -DDEVICE_INTERRUPTIN=1
C_FLAGS += -DDEVICE_I2C=1
C_FLAGS += -DDEVICE_PORTOUT=1
C_FLAGS += -D__CORTEX_M3
C_FLAGS += -DDEVICE_STDIO_MESSAGES=1
C_FLAGS += -DDEVICE_PWMOUT=1
C_FLAGS += -DTARGET_LPC1768
C_FLAGS += -DTARGET_RELEASE
C_FLAGS += -DDEVICE_PORTINOUT=1
C_FLAGS += -DDEVICE_SERIAL_FC=1
C_FLAGS += -DTARGET_MBED_LPC1768
C_FLAGS += -D__MBED_CMSIS_RTOS_CM
C_FLAGS += -DDEVICE_SLEEP=1
C_FLAGS += -DTOOLCHAIN_GCC_ARM
C_FLAGS += -DDEVICE_SPI=1
C_FLAGS += -DDEVICE_ETHERNET=1
C_FLAGS += -DDEVICE_SPISLAVE=1
C_FLAGS += -DDEVICE_ANALOGIN=1
C_FLAGS += -DMBED_BUILD_TIMESTAMP=1490787007.84
C_FLAGS += -DDEVICE_SEMIHOST=1
C_FLAGS += -DDEVICE_DEBUG_AWARENESS=1
C_FLAGS += -DDEVICE_LOCALFILESYSTEM=1
C_FLAGS += -include
C_FLAGS += mbed_config.h

CXX_FLAGS += -std=gnu++11
CXX_FLAGS += -fno-rtti
CXX_FLAGS += -Wvla
CXX_FLAGS += -DDEVICE_ERROR_PATTERN=1
CXX_FLAGS += -DFEATURE_LWIP=1
CXX_FLAGS += -D__MBED__=1
CXX_FLAGS += -DDEVICE_I2CSLAVE=1
CXX_FLAGS += -DTARGET_LIKE_MBED
CXX_FLAGS += -DTARGET_NXP
CXX_FLAGS += -DTARGET_LPC176X
CXX_FLAGS += -DDEVICE_PORTIN=1
CXX_FLAGS += -DDEVICE_RTC=1
CXX_FLAGS += -DTOOLCHAIN_object
CXX_FLAGS += -D__CMSIS_RTOS
CXX_FLAGS += -DTOOLCHAIN_GCC
CXX_FLAGS += -DDEVICE_CAN=1
CXX_FLAGS += -DTARGET_LIKE_CORTEX_M3
CXX_FLAGS += -DTARGET_CORTEX_M
CXX_FLAGS += -DARM_MATH_CM3
CXX_FLAGS += -DDEVICE_ANALOGOUT=1
CXX_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
CXX_FLAGS += -DTARGET_M3
CXX_FLAGS += -DDEVICE_SERIAL=1
CXX_FLAGS += -DDEVICE_INTERRUPTIN=1
CXX_FLAGS += -DDEVICE_I2C=1
CXX_FLAGS += -DDEVICE_PORTOUT=1
CXX_FLAGS += -D__CORTEX_M3
CXX_FLAGS += -DDEVICE_STDIO_MESSAGES=1
CXX_FLAGS += -DDEVICE_PWMOUT=1
CXX_FLAGS += -DTARGET_LPC1768
CXX_FLAGS += -DTARGET_RELEASE
CXX_FLAGS += -DDEVICE_PORTINOUT=1
CXX_FLAGS += -DDEVICE_SERIAL_FC=1
CXX_FLAGS += -DTARGET_MBED_LPC1768
CXX_FLAGS += -D__MBED_CMSIS_RTOS_CM
CXX_FLAGS += -DDEVICE_SLEEP=1
CXX_FLAGS += -DTOOLCHAIN_GCC_ARM
CXX_FLAGS += -DDEVICE_SPI=1
CXX_FLAGS += -DDEVICE_ETHERNET=1
CXX_FLAGS += -DDEVICE_SPISLAVE=1
CXX_FLAGS += -DDEVICE_ANALOGIN=1
CXX_FLAGS += -DMBED_BUILD_TIMESTAMP=1490787007.84
CXX_FLAGS += -DDEVICE_SEMIHOST=1
CXX_FLAGS += -DDEVICE_DEBUG_AWARENESS=1
CXX_FLAGS += -DDEVICE_LOCALFILESYSTEM=1
CXX_FLAGS += -include
CXX_FLAGS += mbed_config.h

ASM_FLAGS += -x
ASM_FLAGS += assembler-with-cpp
ASM_FLAGS += -D__CMSIS_RTOS
ASM_FLAGS += -D__MBED_CMSIS_RTOS_CM
ASM_FLAGS += -D__CORTEX_M3
ASM_FLAGS += -DARM_MATH_CM3


LD_FLAGS :=-Wl,--gc-sections -Wl,--wrap,main -Wl,--wrap,_malloc_r -Wl,--wrap,_free_r -Wl,--wrap,_realloc_r -Wl,--wrap,_calloc_r -Wl,--wrap,exit -Wl,--wrap,atexit -mcpu=cortex-m3 -mthumb 

LD_SYS_LIBS += -lstdc++
LD_SYS_LIBS += -lsupc++
LD_SYS_LIBS += -lm
LD_SYS_LIBS += -lc
LD_SYS_LIBS += -lgcc
LD_SYS_LIBS += -lnosys


# Tools and Flags
###############################################################################
# Rules

.PHONY: all lst size


all: $(PROJECT).bin $(PROJECT).hex size


.asm.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.s.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.S.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.c.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CC) $(C_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CPP) $(CXX_FLAGS) $(INCLUDE_PATHS) -o $@ $<



$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS) $(LINKER_SCRIPT)
	+@echo "link: $(notdir $@)"
	@$(LD) $(LD_FLAGS) -T $(filter %.ld, $^) $(LIBRARY_PATHS) --output $@ $(filter %.o, $^) $(LIBRARIES) $(LD_SYS_LIBS)

	@echo ""
	@echo "*****"
	@echo "***** You must modify vector checksum value in *.bin and *.hex files."
	@echo "*****"
	@echo ""


$(PROJECT).bin: $(PROJECT).elf
	$(ELF2BIN) -O binary $< $@
	+@echo "===== bin file ready to flash: $(OBJDIR)/$@ =====" 

$(PROJECT).hex: $(PROJECT).elf
	$(ELF2BIN) -O ihex $< $@


# Rules
###############################################################################
# Dependencies

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)
endif

# Dependencies
###############################################################################
