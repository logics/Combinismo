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
    if (!_jogo) _jogo = [[JogoDeCombinacaoDeCartas alloc] initComContagemDeCartas:16 usandoBaralho:[self criarBaralho]];
    
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
    for (UIButton *cartaButton in self.cartasButton) {
        NSUInteger cartaIndex = [self.cartasButton indexOfObject:cartaButton];
        Carta *carta = [self.jogo cartaNoIndex:cartaIndex];
        
        [cartaButton setTitle:[self tituloParaACarta:carta] forState:UIControlStateNormal];
        [cartaButton setBackgroundImage:[self imagemParaACarta:carta] forState:UIControlStateNormal];
        
        cartaButton.enabled = !carta.isCombinada;
        
    }
    
    self.pontuacaoLabel.text = [NSString stringWithFormat:@"Pontuação: %ld", (long)self.jogo.pontuacao];
}

- (NSString *)tituloParaACarta:(Carta *)carta
{
    return carta.isEscolhida ? carta.conteudo : @"";
}

- (UIImage *)imagemParaACarta:(Carta *)carta
{
    return [UIImage imageNamed: carta.isEscolhida ? @"cartaFrente" : @"cartaVerso"];
}

#pragma mark - Delegates

#pragma mark - Notification center

@end
