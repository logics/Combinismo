//
//  Baralho.h
//  Combinismo
//
//  Created by George Villasboas on 9/10/14.
//  Copyright (c) 2014 CocoaHeads Goiania. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Carta.h"

@interface Baralho : NSObject

- (void)adicionarCarta:(Carta *)carta
                emCima:(BOOL)emCima;

- (Carta *)tirarCartaAleatoria;

@end
