//
//  CartaDeJogo.h
//  Combinismo
//
//  Created by George Villasboas on 9/10/14.
//  Copyright (c) 2014 CocoaHeads Goiania. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Carta.h"

@interface CartaDeJogo : Carta

@property (strong, nonatomic) NSString *naipe;
@property (nonatomic) NSUInteger numero;

+ (NSArray *)naipesValidos;
+ (NSUInteger)numeroMaximo;

@end
