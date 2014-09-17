//
//  Carta.m
//  Combinismo
//
//  Created by George Villasboas on 9/10/14.
//  Copyright (c) 2014 CocoaHeads Goiania. All rights reserved.
//

#import "Carta.h"

@implementation Carta

- (int)combinar:(NSArray *)outrasCartas
{
    int score = 0;
    
    for (Carta *carta in outrasCartas){
        if ([carta.conteudo isEqualToString:self.conteudo]){
            score = 1;
        }
    }
    
    return score;
}

@end
