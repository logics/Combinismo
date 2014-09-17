//
//  Carta.h
//  Combinismo
//
//  Created by George Villasboas on 9/10/14.
//  Copyright (c) 2014 CocoaHeads Goiania. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Carta : NSObject

@property (strong, nonatomic) NSString *conteudo;
@property (assign, nonatomic, getter=isEscolhida) BOOL escolhida;
@property (assign, nonatomic, getter=isCombinada) BOOL combinada;

/**
 *  Efetua a combinacao de várias cartas
 *
 *  @param outrasCartas Um array contendo uma ou mais cartas
 *
 *  @return um score da combinação
 */
- (int)combinar:(NSArray *)outrasCartas;

@end