/*
 * Copyright (c) 2016-2022 Bouffalolab.
 *
 * This file is part of
 *     *** Bouffalolab Software Dev Kit ***
 *      (see www.bouffalolab.com).
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *   1. Redistributions of source code must retain the above copyright notice,
 *      this list of conditions and the following disclaimer.
 *   2. Redistributions in binary form must reproduce the above copyright notice,
 *      this list of conditions and the following disclaimer in the documentation
 *      and/or other materials provided with the distribution.
 *   3. Neither the name of Bouffalo Lab nor the names of its contributors
 *      may be used to endorse or promote products derived from this software
 *      without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#include "jpeg_head.h"

static const uint8_t tableQy[] = {
	16, 11, 12, 14, 12, 10, 16, 14,
	13, 14, 18, 17, 16, 19, 24, 40,
	26, 24, 22, 22, 24, 49, 35, 37,
	29, 40, 58, 51, 61, 60, 57, 51,
	56, 55, 64, 72, 92, 78, 64, 68,
	87, 69, 55, 56, 80, 109, 81, 87,
	95, 98, 103, 104, 103, 62, 77, 113,
	121, 112, 100, 120, 92, 101, 103, 99
};

static const uint8_t tableQuv[] = {
	17, 18, 18, 24, 21, 24, 47, 26,
	26, 47, 99, 66, 56, 66, 99, 99,
	99, 99, 99, 99, 99, 99, 99, 99,
	99, 99, 99, 99, 99, 99, 99, 99,
	99, 99, 99, 99, 99, 99, 99, 99,
	99, 99, 99, 99, 99, 99, 99, 99,
	99, 99, 99, 99, 99, 99, 99, 99,
	99, 99, 99, 99, 99, 99, 99, 99
};

static const uint8_t tableHuffman[] = {
	0xFF, 0xC4, 0x00, 0x1F, 0x00, 0x00, 0x01, 0x05, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 
	0x0B, 

	0xFF, 0xC4, 0x00, 0xB5, 0x10, 0x00,	0x02, 0x01, 0x03, 0x03, 0x02, 0x04, 0x03, 0x05, 0x05, 0x04, 
	0x04, 0x00, 0x00, 0x01, 0x7D, 0x01,	0x02, 0x03, 0x00, 0x04, 0x11, 0x05, 0x12, 0x21, 0x31, 0x41, 
	0x06, 0x13, 0x51, 0x61, 0x07, 0x22,	0x71, 0x14, 0x32, 0x81, 0x91, 0xA1, 0x08, 0x23, 0x42, 0xB1, 
	0xC1, 0x15, 0x52, 0xD1, 0xF0, 0x24,	0x33, 0x62, 0x72, 0x82, 0x09, 0x0A, 0x16, 0x17, 0x18, 0x19, 
	0x1A, 0x25, 0x26, 0x27, 0x28, 0x29,	0x2A, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x43, 0x44, 
	0x45, 0x46, 0x47, 0x48, 0x49, 0x4A,	0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x63, 0x64, 
	0x65, 0x66, 0x67, 0x68, 0x69, 0x6A,	0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x83, 0x84, 
	0x85, 0x86, 0x87, 0x88, 0x89, 0x8A,	0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9A, 0xA2, 
	0xA3, 0xA4, 0xA5, 0xA6, 0xA7, 0xA8,	0xA9, 0xAA, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7, 0xB8, 0xB9, 
	0xBA, 0xC2, 0xC3, 0xC4, 0xC5, 0xC6,	0xC7, 0xC8, 0xC9, 0xCA, 0xD2, 0xD3, 0xD4, 0xD5, 0xD6, 0xD7, 
	0xD8, 0xD9, 0xDA, 0xE1, 0xE2, 0xE3,	0xE4, 0xE5, 0xE6, 0xE7, 0xE8, 0xE9, 0xEA, 0xF1, 0xF2, 0xF3, 
	0xF4, 0xF5, 0xF6, 0xF7, 0xF8, 0xF9,	0xFA, 

	0xFF, 0xC4, 0x00, 0x1F, 0x01, 0x00, 0x03, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 
	0x0B, 

	0xFF, 0xC4, 0x00, 0xB5, 0x11, 0x00, 0x02, 0x01, 0x02, 0x04, 0x04, 0x03, 0x04, 0x07,	0x05, 0x04, 
	0x04, 0x00, 0x01, 0x02, 0x77, 0x00, 0x01, 0x02, 0x03, 0x11, 0x04, 0x05, 0x21, 0x31,	0x06, 0x12, 
	0x41, 0x51, 0x07, 0x61, 0x71, 0x13, 0x22, 0x32, 0x81, 0x08, 0x14, 0x42, 0x91, 0xA1,	0xB1, 0xC1, 
	0x09, 0x23, 0x33, 0x52, 0xF0, 0x15, 0x62, 0x72, 0xD1, 0x0A, 0x16, 0x24, 0x34, 0xE1,	0x25, 0xF1, 
	0x17, 0x18, 0x19, 0x1A, 0x26, 0x27, 0x28, 0x29, 0X2A, 0x35, 0x36, 0x37, 0x38, 0x39,	0x3A, 0x43, 
	0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59,	0x5A, 0x63, 
	0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6A, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79,	0x7A, 0x82, 
	0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8A, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97,	0x98, 0x99, 
	0x9A, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7, 0xA8, 0xA9, 0xAA, 0xB2, 0xB3, 0xB4, 0xB5,	0xB6, 0xB7, 
	0xB8, 0xB9, 0xBA, 0xC2, 0xC3, 0xC4, 0xC5, 0xC6, 0xC7, 0xC8, 0xC9, 0xCA, 0xD2, 0xD3,	0xD4, 0xD5, 
	0xD6, 0xD7, 0xD8, 0xD9, 0xDA, 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, 0xE7, 0xE8, 0xE9, 0xEA,	0xF2, 0xF3, 
	0xF4, 0xF5, 0xF6, 0xF7, 0xF8, 0xF9, 0xFA
};

static void QCalc(const uint8_t *in, uint8_t *out, uint8_t q)
{
	float tq, result;
	int i;

	if (q < 1)
		tq = 5000.0f;
	else if (q <= 50)
		tq = 5000.0f / q;
	else if (q <= 100)
		tq = 200.0f - 2.0f * q;
	else
		tq = 0.0f;
	tq = tq / 100.0f;

	for (i = 0; i < 64; i++)
	{
		result = in[i] * tq;
		if (result > 255.0f)
			out[i] = 255;
		else if (result < 1.0f)
			out[i] = 1;
		else
			out[i] = (uint8_t)(result + 0.5f);
	}
}

uint32_t JpegHeadCreate(uint8_t type, uint8_t q, int width, int height, uint8_t *out)
{
	uint32_t index = 0;
	uint32_t i;
	/* start of jpeg file */
	out[index++] = 0xFF;
	out[index++] = 0xD8;

	/* define quality table */
	out[index++] = 0xFF;
	out[index++] = 0xDB;
	out[index++] = 0x00;
	out[index++] = 0x43;		//=3+N, N=64
	out[index++] = 0x00;
	QCalc(tableQy, out + index, q);		//Y quality table
	index += 64;
	out[index++] = 0xFF;
	out[index++] = 0xDB;
	out[index++] = 0x00;
	out[index++] = 0x43;		//=3+N, N=64
	out[index++] = 0x01;
	QCalc(tableQuv, out + index, q);	//UV quality table
	index += 64;

	/* basic information of mjpeg */
	out[index++] = 0xFF;
	out[index++] = 0xC0;
	out[index++] = 0x00;
	if(type==YUV_MODE_400)
		out[index++] = 0x0B;	//length:2 + bits:1 + height:2 + width:2 + num:1 + 3 * part=1
	else
		out[index++] = 0x11;	//length:2 + bits:1 + height:2 + width:2 + num:1 + 3 * part=3
	out[index++] = 0x08;
	out[index++] = (uint8_t)((height >> 8) & 0xFF);
	out[index++] = (uint8_t)(height & 0xFF);
	out[index++] = (uint8_t)((width >> 8) & 0xFF);
	out[index++] = (uint8_t)(width & 0xFF);
	if (type == YUV_MODE_400)
	{
		out[index++] = 0x01;	//number of part
		out[index++] = 0x01;	//the first part id
		out[index++] = 0x11;	//[0:3]vertical sample coefficient, [4:7]horizontal sample coefficient
		out[index++] = 0x00;	//id of quality tab
	}
	else if (type == YUV_MODE_420)
	{
		out[index++] = 0x03;	//number of part
		out[index++] = 0x01;	//the first part id
		out[index++] = 0x22;	//[0:3]vertical sample coefficient, [4:7]horizontal sample coefficient
		out[index++] = 0x00;	//id of quality tab
		out[index++] = 0x02;	//the second part id
		out[index++] = 0x11;	//[0:3]vertical sample coefficient, [4:7]horizontal sample coefficient
		out[index++] = 0x01;	//id of quality tab
		out[index++] = 0x03;	//the third part id
		out[index++] = 0x11;	//[0:3]vertical sample coefficient, [4:7]horizontal sample coefficient
		out[index++] = 0x01;	//id of quality tab
	}
	else if (type == YUV_MODE_422)
	{
		out[index++] = 0x03;	//number of part
		out[index++] = 0x01;	//the first part id
		out[index++] = 0x21;	//[0:3]vertical sample coefficient, [4:7]horizontal sample coefficient
		out[index++] = 0x00;	//id of quality tab
		out[index++] = 0x02;	//the second part id
		out[index++] = 0x11;	//[0:3]vertical sample coefficient, [4:7]horizontal sample coefficient
		out[index++] = 0x01;	//id of quality tab
		out[index++] = 0x03;	//the third part id
		out[index++] = 0x11;	//[0:3]vertical sample coefficient, [4:7]horizontal sample coefficient
		out[index++] = 0x01;	//id of quality tab
	}

	/* define Huffman table */
	for (i = 0; i < sizeof(tableHuffman); i++)
	{
		out[index++] = tableHuffman[i];
	}
	
	/* start of scan*/
	out[index++] = 0xFF;
	out[index++] = 0xDA;
	if (type == YUV_MODE_400)
	{
		out[index++] = 0x00;
		out[index++] = 0x08;	//length
		out[index++] = 0x01;
		out[index++] = 0x01;
		out[index++] = 0x00;
		out[index++] = 0x02;
		out[index++] = 0x3F;
		out[index++] = 0x00;
	}
	else
	{
		out[index++] = 0x00;
		out[index++] = 0x0C;	//length
		out[index++] = 0x03;
		out[index++] = 0x01;
		out[index++] = 0x00;
		out[index++] = 0x02;
		out[index++] = 0x11;
		out[index++] = 0x03;
		out[index++] = 0x11;
		out[index++] = 0x00;
		out[index++] = 0x3F;
		out[index++] = 0x00;
	}
	return index;
}