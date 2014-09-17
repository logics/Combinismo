//
//  JogoDeCartasViewController.m
//  Combinismo
//
//  Created by Swift Dojo on 06/09/14.
//  Copyright (c) 2014 CocoaHeads Goiania. All rights reserved.
//

#import "JogoDeCartasViewController.h"
#import "JogoDeCombinacaoDeCartas.h"
#import "BaralhoDeJogo.h"

@interface JogoDeCartasViewController ()

// Model
@property (strong, nonatomic) JogoDeCombinacaoDeCartas *jogo;

// View
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cartasButton;
@property (weak, nonatomic) IBOutlet UILabel *pontuacaoLabel;


@end

@implementation JogoDeCartasViewController

#pragma mark - Getters overriders

- (JogoDeCombinacaoDeCartas *)jogo
{
    if (_jogo) _jogo = [[JogoDeCombinacaoDeCartas alloc] initComContagemDeCartas:12 usandoBaralho:[self criarBaralho]];
    
    return _jogo;
}

#pragma mark - Setters overriders

#pragma mark - Designated initializers

#pragma mark - Public methods

#pragma mark - Private methods

- (BaralhoDeJogo *)criarBaralho
{
    return [[BaralhoDeJogo alloc] init];
}


#pragma mark - ViewController life cycle

#pragma mark - Overriden methods

#pragma mark - Target/Actions

- (IBAction)virarCarta:(UIButton *)carta
{
    NSUInteger cartaIndex = [self.cartasButton indexOfObject:carta];
    [self.jogo escolherCartaNoIndex:cartaIndex];
    
    [self atualizarUI];
}

- (void)atualizarUI
{

}

#pragma mark - Delegates

#pragma mark - Notification center

@end
