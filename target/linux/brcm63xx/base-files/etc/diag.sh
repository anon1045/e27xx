#!/bin/sh
# Copyright (C) 2007-2013 OpenWrt.org

. /lib/functions.sh
. /lib/functions/leds.sh

set_state() {
	case "$(board_name)" in
	a4001n1)
		status_led="A4001N1:green:power"
		;;
	a4001n)
		status_led="A4001N:green:power"
		;;
	ad1018-nor)
		status_led="AD1018:green:power"
		;;
	ar-5315u)
		status_led="AR-5315u:green:power"
		;;
	ar-5381u)
		status_led="AR-5381u:green:power"
		;;
	ar-5387un)
		status_led="AR-5387un:green:power"
		;;
	av4202n)
		status_led="AV4202N:white:power"
		;;
	bcm96348gw)
		status_led="96348GW:green:power"
		;;
	bcm963281tan)
		status_led="963281TAN::power"
		;;
	bcm96328avng)
		status_led="96328avng::power"
		;;
	bcm96348gw-11)
		status_led="96348GW-11:green:power"
		;;
	spw303v)
		status_led="spw303v:green:power+adsl"
		;;
	vh4032n)
		status_led="VH4032N:blue:power"
		;;
	vr-3025un)
		status_led="VR-3025un:green:power"
		;;
	vr-3025u)
		status_led="VR-3025u:green:power"
		;;
	vr-3026e)
		status_led="VR-3026e:green:power"
		;;
	wap-5813n)
		status_led="WAP-5813n:green:power"
		;;
	ar1004g)
		status_led="AR1004G:green:power"
		;;
	dsl-274xb-c|\
	dsl-274xb-f)
		status_led="dsl-274xb:green:power"
		;;
	dsl-2750u-c1)
		status_led="dsl-2750u-c1:green:power"
		;;
	dsl-275xb-d)
		status_led="dsl-275xb:green:power"
		;;
	cpva642)
		status_led="CPVA642:green:power:"
		;;
	ct-536p_5621t)
		status_led="CT536_CT5621:green:power"
		;;
	cvg834g)
		status_led="CVG834G:green:power"
		;;
	dsl-2640b-b)
		status_led="D-4P-W:green:power"
		;;
	dgnd3700v1_dgnd3800b)
		status_led="DGND3700v1_3800B:green:power"
		;;
	evg2000)
		status_led="EVG2000:green:power"
		;;
	fast2504n)
		status_led="fast2504n:green:ok"
		;;
	fast2704n)
		status_led2="F@ST2704N:red:power"
		;;
	fast2704v2)
		status_led="F@ST2704V2:green:power"
		;;
	homehub2a)
		status_led="HOMEHUB2A:green:upgrading"
		status_led2="HOMEHUB2A:blue:upgrading"
		;;
	gw6200)
		status_led="GW6200:green:line1"
		status_led2="GW6200:green:tel"
		;;
	hg553)
		status_led="HW553:blue:power"
		;;
	hg556a_*)
		status_led="HW556:red:power"
		;;
	hg520)
		status_led="HW520:green:net"
		;;
	hg655b)
		status_led="HW65x:green:power"
		;;
	livebox1)
		status_led="Livebox1:red:adsl-fail-power"
		;;
	p870hw-51a_v2)
		status_led="P870HW-51a:green:power"
		;;
	r1000h)
		status_led="R1000H:green:power"
		;;
	r5010un_v2)
		status_led="R5010UNv2:green:power"
		;;
	rta770bw)
		status_led="RTA770BW:green:diag"
		;;
	rta770w)
		status_led="RTA770W:green:diag"
		;;
	sr102)
		status_led="SR102:white:power"
		status_led2="SR102:red:power"
		;;
	spw500v)
		status_led="SPW500V:green:power"
		;;
	v2110)
		status_led="V2110:power:green"
		;;
	esac

	case "$1" in
	preinit)
		status_led_blink_preinit
		;;
	failsafe)
		status_led_blink_failsafe
		;;
	preinit_regular)
		status_led_blink_preinit_regular
		;;
	done)
		if [ "${status_led/power}" != "$status_led" ]; then
			status_led_on
		else
			status_led_off
		fi
		;;
	esac
}
