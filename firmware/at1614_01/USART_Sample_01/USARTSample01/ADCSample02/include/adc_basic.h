/**
 * \file
 *
 * \brief ADC Basic driver declarations.
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

#ifndef ADC_BASIC_H_INCLUDED
#define ADC_BASIC_H_INCLUDED

#include <compiler.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*adc_irq_cb_t)(void);

/** Datatype for the result of the ADC conversion */
typedef uint16_t adc_result_t;

//* Analog channel selection */
typedef ADC_MUXPOS_t adc_0_channel_t;

int8_t PWR_MON_init();

void PWR_MON_enable();

void PWR_MON_disable();

void PWR_MON_start_conversion(adc_0_channel_t channel);

bool PWR_MON_is_conversion_done();

adc_result_t PWR_MON_get_conversion_result(void);

adc_result_t PWR_MON_get_conversion(adc_0_channel_t channel);

uint8_t PWR_MON_get_resolution();

void PWR_MON_register_callback(adc_irq_cb_t f);

//* Analog channel selection */
typedef ADC_MUXPOS_t adc_1_channel_t;

int8_t INTERNAL_TEMP_init();

void INTERNAL_TEMP_enable();

void INTERNAL_TEMP_disable();

void INTERNAL_TEMP_start_conversion(adc_1_channel_t channel);

bool INTERNAL_TEMP_is_conversion_done();

adc_result_t INTERNAL_TEMP_get_conversion_result(void);

adc_result_t INTERNAL_TEMP_get_conversion(adc_1_channel_t channel);

uint8_t INTERNAL_TEMP_get_resolution();

#ifdef __cplusplus
}
#endif

#endif /* ADC_BASIC_H_INCLUDED */
