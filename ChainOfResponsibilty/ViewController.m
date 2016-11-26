//
//  ViewController.m
//  ChainOfResponsibilty
//
//  Created by Yiqi Wang on 26/11/2016.
//  Copyright © 2016 Melody5417. All rights reserved.
//

#import "ViewController.h"
#import "Shield.h"

@interface ViewController ()

@property (weak) IBOutlet NSButton *monstorA;
@property (weak) IBOutlet NSButton *monstorB;
@property (weak) IBOutlet NSButton *monstorC;
@property (weak) IBOutlet NSButton *monstorD;

@property (weak) IBOutlet NSButton *shieldA;
@property (weak) IBOutlet NSButton *shieldB;
@property (weak) IBOutlet NSButton *shieldC;
@property (weak) IBOutlet NSButton *shieldD;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

#pragma mark - monstors

- (NSArray *)selectedMonstor {
    NSMutableArray *monstors = [[NSMutableArray alloc] init];
    
    if (self.monstorA.state == NSOnState) {
        MonstorA *A = [[MonstorA alloc] init];
        [monstors addObject:A];
    }
    
    if (self.monstorB.state == NSOnState) {
        MonstorB *B = [[MonstorB alloc] init];
        [monstors addObject:B];
    }
    
    if (self.monstorC.state == NSOnState) {
        MonstorC *C = [[MonstorC alloc] init];
        [monstors addObject:C];
    }
    
    if (self.monstorD.state == NSOnState) {
        MonstorD *D = [[MonstorD alloc] init];
        [monstors addObject:D];
    }
    
    return monstors;
}

#pragma mark - shields


- (Shield *)selectedShield {
    ShieldA *A = [[ShieldA alloc] init];
    ShieldB *B = [[ShieldB alloc] init];
    ShieldC *C = [[ShieldC alloc] init];
    ShieldD *D = [[ShieldD alloc] init];
    
    [A setNextHandler:B];
    [B setNextHandler:C];
    [C setNextHandler:D];
    
    return A;
}

#pragma mark - actions

- (IBAction)fightAction:(NSButton *)sender {
    Shield *shield = [self selectedShield];
    NSArray *monstors = [self selectedMonstor];
    
    for (Monstor *monstor in monstors) {
        [shield handleMonstor:monstor];
    }
}





@end
