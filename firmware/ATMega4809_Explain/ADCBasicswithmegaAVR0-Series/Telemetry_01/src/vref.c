/**
 * \file
 *
 * \brief VREF related functionality implementation.
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
 * \defgroup doc_driver_vref_init VREF Init Driver
 * \ingroup doc_driver_vref
 *
 * \section doc_driver_vref_rev Revision History
 * - v0.0.0.1 Initial Commit
 *
 *@{
 */
#include <vref.h>

/**
 * \brief Initialize vref interface
 * \return Initialization status.
 */
int8_t VREF_0_init()
{

	VREF_CTRLA = VREF_AC0REFSEL_4V34_gc     /* Voltage reference at 4.34V */
	             | VREF_ADC0REFSEL_4V34_gc; /* Voltage reference at 4.34V */

	VREF_CTRLB = 1 << VREF_ADC0REFEN_bp   /* ADC0 reference enable: enabled */
	             | 0 << VREF_AC0REFEN_bp; /* AC0 DACREF reference enable: disabled */

	return 0;
}
