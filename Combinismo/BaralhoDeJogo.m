//
//  BaralhoDeJogo.m
//  Combinismo
//
//  Created by George Villasboas on 9/10/14.
//  Copyright (c) 2014 CocoaHeads Goiania. All rights reserved.
//

#import "BaralhoDeJogo.h"
#import "CartaDeJogo.h"

@implementation BaralhoDeJogo

- (instancetype)init
{
    self = [super init];
    
    if (self){
        for (NSString *naipe in [CartaDeJogo naipesValidos]){
            for (NSUInteger numero = 1; numero < [CartaDeJogo numeroMaximo]; numero++){
                CartaDeJogo *carta = [[CartaDeJogo alloc] init];
                carta.numero = numero;
                carta.naipe = naipe;
                [self adicionarCarta:carta emCima:YES];
            }
        }
    }
    
    return self;
    
}

@end
