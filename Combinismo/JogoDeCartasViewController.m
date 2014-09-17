//
//  JogoDeCartasViewController.m
//  Combinismo
//
//  Created by Swift Dojo on 06/09/14.
//  Copyright (c) 2014 CocoaHeads Goiania. All rights reserved.
//

#import "JogoDeCartasViewController.h"
#import "BaralhoDeJogo.h"

@interface JogoDeCartasViewController ()

// Model
@property (nonatomic) NSUInteger tentativas;
@property (strong, nonatomic) Baralho *baralho;

// View
@property (weak, nonatomic) IBOutlet UILabel *tentativasLabel;

@end

@implementation JogoDeCartasViewController

#pragma mark - Getters overriders

- (Baralho *)baralho
{
    if (!_baralho) _baralho = [[BaralhoDeJogo alloc] init];
    
    return _baralho;
}

#pragma mark - Setters overriders

- (void)setTentativas:(NSUInteger)tentativas
{
    _tentativas = tentativas;
    self.tentativasLabel.text = [NSString stringWithFormat:@"Tentativas: %d", (int)self.tentativas];
}

#pragma mark - Designated initializers

#pragma mark - Public methods

#pragma mark - Private methods

#pragma mark - ViewController life cycle

#pragma mark - Overriden methods

#pragma mark - Target/Actions

- (IBAction)virarCarta:(UIButton *)carta
{
    if ([carta.currentTitle isEqualToString:@""] || !carta.currentTitle) {
        
        // sorteia uma carta
        Carta *cartaSorteada = [self.baralho tirarCartaAleatoria];
        [carta setTitle:cartaSorteada.conteudo forState:UIControlStateNormal];
        
        [cartaSorteada combinar:@[]];
        
        // incrementa
        self.tentativas++;
    }
    else{
        [carta setTitle:@"" forState:UIControlStateNormal];
    }
}

#pragma mark - Delegates

#pragma mark - Notification center







@end
