/**
 * \file
 *
 * \brief ADC Basic driver implementation.
 *
 (c) 2018 Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms,you may use this software and
    any derivatives exclusively with Microchip products.It is your responsibility
    to comply with third party license terms applicable to your use of third party
    software (including open source software) that may accompany Microchip software.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 */

/**
 * \defgroup doc_driver_adc_basic ADC Basic Driver
 * \ingroup doc_driver_adc
 *
 * \section doc_driver_adc_rev Revision History
 * - v0.0.0.1 Initial Commit
 *
 *@{
 */
#include <adc_basic.h>

/** Function pointer to callback function called by IRQ.
    NULL=default value: No callback function is to be used.
*/
adc_irq_cb_t PWR_MON_cb = NULL; /**
                                 * \brief Initialize ADC interface
                                 * If module is configured to disabled state, the clock to the ADC is disabled
                                 * if this is supported by the device's clock system.
                                 *
                                 * \return Initialization status.
                                 * \retval 0 the ADC init was successful
                                 * \retval 1 the ADC init was not successful
                                 */
int8_t PWR_MON_init()
{

	// ADC0.CALIB = ADC_DUTYCYC_DUTY50_gc; /* 50% Duty cycle */

	// ADC0.CTRLB = ADC_SAMPNUM_ACC1_gc; /* 1 ADC sample */

	ADC0.CTRLC = ADC_PRESC_DIV2_gc      /* CLK_PER divided by 2 */
	             | ADC_REFSEL_VDDREF_gc /* VDD */
	             | 0 << ADC_SAMPCAP_bp; /* Sample Capacitance Selection: disabled */

	// ADC0.CTRLD = 0 << ADC_ASDV_bp /* Automatic Sampling Delay Variation: disabled */
	//		 | 0x0 << ADC_SAMPDLY_gp /* Sampling Delay Selection: 0x0 */
	//		 | ADC_INITDLY_DLY0_gc; /* Delay 0 CLK_ADC cycles */

	// ADC0.CTRLE = ADC_WINCM_NONE_gc; /* No Window Comparison */

	// ADC0.DBGCTRL = 0 << ADC_DBGRUN_bp; /* Debug run: disabled */

	// ADC0.EVCTRL = 0 << ADC_STARTEI_bp; /* Start Event Input Enable: disabled */

	ADC0.INTCTRL = 1 << ADC_RESRDY_bp  /* Result Ready Interrupt Enable: enabled */
	               | 0 << ADC_WCMP_bp; /* Window Comparator Interrupt Enable: disabled */

	ADC0.MUXPOS = ADC_MUXPOS_AIN11_gc; /* ADC input pin 11 */

	// ADC0.SAMPCTRL = 0x0 << ADC_SAMPLEN_gp; /* Sample length: 0x0 */

	// ADC0.WINHT = 0x0; /* Window Comparator High Threshold: 0x0 */

	// ADC0.WINLT = 0x0; /* Window Comparator Low Threshold: 0x0 */

	ADC0.CTRLA = 1 << ADC_ENABLE_bp     /* ADC Enable: enabled */
	             | 0 << ADC_FREERUN_bp  /* ADC Free-run mode: disabled */
	             | ADC_RESSEL_10BIT_gc  /* 10-bit mode */
	             | 0 << ADC_RUNSTBY_bp; /* Run standby mode: disabled */

	return 0;
}

/**
 * \brief Enable PWR_MON
 * 1. If supported by the clock system, enables the clock to the ADC
 * 2. Enables the ADC module by setting the enable-bit in the ADC control register
 *
 * \return Nothing
 */
void PWR_MON_enable()
{
	ADC0.CTRLA |= ADC_ENABLE_bm;
}
/**
 * \brief Disable PWR_MON
 * 1. Disables the ADC module by clearing the enable-bit in the ADC control register
 * 2. If supported by the clock system, disables the clock to the ADC
 *
 * \return Nothing
 */
void PWR_MON_disable()
{
	ADC0.CTRLA &= ~ADC_ENABLE_bm;
}

/**
 * \brief Start a conversion on PWR_MON
 *
 * \param[in] channel The ADC channel to start conversion on
 *
 * \return Nothing
 */
void PWR_MON_start_conversion(adc_0_channel_t channel)
{
	ADC0.MUXPOS  = channel;
	ADC0.COMMAND = ADC_STCONV_bm;
}

/**
 * \brief Check if the ADC conversion is done
 *
 * \return The status of ADC conversion done check
 * \retval true The ADC conversion is done
 * \retval false The ADC conversion is not done
 */
bool PWR_MON_is_conversion_done()
{
	return (ADC0.INTFLAGS & ADC_RESRDY_bm);
}

/**
 * \brief Read a conversion result from PWR_MON
 *
 * \return Conversion result read from the PWR_MON ADC module
 */
adc_result_t PWR_MON_get_conversion_result(void)
{
	return (ADC0.RES);
}

/**
 * \brief Start a conversion, wait until ready, and return the conversion result
 *
 * \return Conversion result read from the PWR_MON ADC module
 */
adc_result_t PWR_MON_get_conversion(adc_0_channel_t channel)
{
	adc_result_t res;

	PWR_MON_start_conversion(channel);
	while (!PWR_MON_is_conversion_done())
		;
	res = PWR_MON_get_conversion_result();
	ADC0.INTFLAGS |= ADC_RESRDY_bm;
	return res;
}

/**
 * \brief Return the number of bits in the ADC conversion result
 *
 * \return The number of bits in the ADC conversion result
 */
uint8_t PWR_MON_get_resolution()
{
	return (ADC0.CTRLA & ADC_RESSEL_bm) ? 8 : 10;
}

/**
 * \brief Register a callback function to be called at the end of the ADC ISR.
 *
 * \param[in] f Pointer to function to be called
 *
 * \return Nothing.
 */
void PWR_MON_register_callback(adc_irq_cb_t f)
{
	PWR_MON_cb = f;
}

ISR(ADC0_RESRDY_vect)
{
	// Clear the interrupt flag
	ADC0.INTFLAGS |= ADC_RESRDY_bm;

	if (PWR_MON_cb != NULL) {
		PWR_MON_cb();
	}
}

/**
 * \brief Initialize ADC interface
 * If module is configured to disabled state, the clock to the ADC is disabled
 * if this is supported by the device's clock system.
 *
 * \return Initialization status.
 * \retval 0 the ADC init was successful
 * \retval 1 the ADC init was not successful
 */
int8_t INTERNAL_TEMP_init()
{
	// ADC1.CALIB = ADC_DUTYCYC_DUTY50_gc; /* 50% Duty cycle */

	// ADC1.CTRLB = ADC_SAMPNUM_ACC1_gc; /* 1 ADC sample */

	ADC1.CTRLC = ADC_PRESC_DIV2_gc      /* CLK_PER divided by 2 */
	| ADC_REFSEL_INTREF_gc /* Internal reference */
	| 0 << ADC_SAMPCAP_bp; /* Sample Capacitance Selection: enabled */

	ADC1.CTRLD = 0 << ADC_ASDV_bp        /* Automatic Sampling Delay Variation: disabled */
	| 0x02 << ADC_SAMPDLY_gp /* Sampling Delay Selection: 0x2 */
	| ADC_INITDLY_DLY32_gc; /* Delay 32 CLK_ADC cycles */

	// ADC1.CTRLE = ADC_WINCM_NONE_gc; /* No Window Comparison */

	ADC1.DBGCTRL = 0 << ADC_DBGRUN_bp; /* Debug run: disabled */

	// ADC1.EVCTRL = 0 << ADC_STARTEI_bp; /* Start Event Input Enable: disabled */

	ADC1.INTCTRL = 1 << ADC_RESRDY_bp  /* Result Ready Interrupt Enable: enabled */
	| 0 << ADC_WCMP_bp; /* Window Comparator Interrupt Enable: disabled */

	ADC1.MUXPOS = ADC_MUXPOS_TEMPSENSE_gc; /* Temp sensor/DAC1 */

	// ADC1.SAMPCTRL = 0x2 << ADC_SAMPLEN_gp; /* Sample length: 0x2 */

	// ADC1.WINHT = 0x0; /* Window Comparator High Threshold: 0x0 */

	// ADC1.WINLT = 0x0; /* Window Comparator Low Threshold: 0x0 */

	ADC1.CTRLA = 1 << ADC_ENABLE_bp     /* ADC Enable: enabled */
	| 0 << ADC_FREERUN_bp  /* ADC Freerun mode: disabled */
	| ADC_RESSEL_10BIT_gc  /* 10-bit mode */
	| 0 << ADC_RUNSTBY_bp; /* Run standby mode: disabled */

	return 0;
}

/**
 * \brief Enable INTERNAL_TEMP
 * 1. If supported by the clock system, enables the clock to the ADC
 * 2. Enables the ADC module by setting the enable-bit in the ADC control register
 *
 * \return Nothing
 */
void INTERNAL_TEMP_enable()
{
	ADC1.CTRLA |= ADC_ENABLE_bm;
}
/**
 * \brief Disable INTERNAL_TEMP
 * 1. Disables the ADC module by clearing the enable-bit in the ADC control register
 * 2. If supported by the clock system, disables the clock to the ADC
 *
 * \return Nothing
 */
void INTERNAL_TEMP_disable()
{
	ADC1.CTRLA &= ~ADC_ENABLE_bm;
}

/**
 * \brief Start a conversion on INTERNAL_TEMP
 *
 * \param[in] channel The ADC channel to start conversion on
 *
 * \return Nothing
 */
void INTERNAL_TEMP_start_conversion(adc_1_channel_t channel)
{
	ADC1.MUXPOS  = channel;
	ADC1.COMMAND = ADC_STCONV_bm;
}

/**
 * \brief Check if the ADC conversion is done
 *
 * \return The status of ADC conversion done check
 * \retval true The ADC conversion is done
 * \retval false The ADC conversion is not done
 */
bool INTERNAL_TEMP_is_conversion_done()
{
	return (ADC1.INTFLAGS & ADC_RESRDY_bm);
}

/**
 * \brief Read a conversion result from INTERNAL_TEMP
 *
 * \return Conversion result read from the INTERNAL_TEMP ADC module
 */
adc_result_t INTERNAL_TEMP_get_conversion_result(void)
{
	return (ADC1.RES);
}

/**
 * \brief Start a conversion, wait until ready, and return the conversion result
 *
 * \return Conversion result read from the INTERNAL_TEMP ADC module
 */
adc_result_t INTERNAL_TEMP_get_conversion(adc_1_channel_t channel)
{
	adc_result_t res;

	INTERNAL_TEMP_start_conversion(channel);
	while (!INTERNAL_TEMP_is_conversion_done())
		;
	res = INTERNAL_TEMP_get_conversion_result();
	ADC1.INTFLAGS |= ADC_RESRDY_bm;
	return res;
}

/**
 * \brief Return the number of bits in the ADC conversion result
 *
 * \return The number of bits in the ADC conversion result
 */
uint8_t INTERNAL_TEMP_get_resolution()
{
	return (ADC1.CTRLA & ADC_RESSEL_bm) ? 8 : 10;
}