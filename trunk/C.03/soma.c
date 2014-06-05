
#include "./DSPHeaders/soma.h"
void soma_intri(const unsigned char * /*restrict*/ a, unsigned char * /*restrict*/ b, const int n){
/*
	unsigned int a1_a0, a3_a2, b1_b0, b3_b2;
	unsigned int c1_c0, c3_c2, i;
	#pragma MUST_ITERATE (512/8, 1024/8, 8)
	for ( i = 0; i < n/8; i+=8){
		a3_a2 = _hi(_amemd8_const(&a[i])); //4 bytes mais altos de 8 ???
		a1_a0 = _lo(_amemd8_const(&a[i])); //4 bytes mais baxos de 8???
		b3_b2 = _hi(_amemd8_const(&b[i]));
		b1_b0 = _lo(_amemd8_const(&b[i]));
		c3_c2 = _saddu4(a3_a2, b3_b2); // soma 4 bytes sem sinal
		c1_c0 = _saddu4(a1_a0, b1_b0);
		_amemd8(&b[i]) = _itod(c3_c2, c1_c0); //empacote dois inteiros sem sinal
											  //em um double
	}
*/
}

void soma_info(const unsigned char * /*restrict*/ a, unsigned char * /*restrict*/ b, const int n){
	
	int i;
	#pragma MUST_ITERATE(512, 1024, 8)
	for(i = 0; i < n; i++){
		b[i] = a[i] + b[i];
	}
}
