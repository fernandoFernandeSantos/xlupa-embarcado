/* 
 * File:   tableCreate.h
 * Author: fernandofernandes
 *
 * Created on 3 de Junho de 2014, 18:33
 */

#ifndef TABLECREATE_H
#define	TABLECREATE_H
#include <stdlib.h> 
#ifdef	__cplusplus
extern "C" {
#endif
float vetR[256], vetB[256], vetG[256];
unsigned char ***matValores;
unsigned char naiveTable();
unsigned char expertTableCreate();
unsigned char expertTableLoad();
unsigned char expertTableDestroy();


#ifdef	__cplusplus
}
#endif

#endif	/* TABLECREATE_H */

