//
//  Shield.m
//  ChainOfResponsibilty
//
//  Created by Yiqi Wang on 26/11/2016.
//  Copyright © 2016 Melody5417. All rights reserved.
//

#import "Shield.h"

@implementation Shield

- (void)handleMonstor:(Monstor *)monstor {
    NSLog(@"%s, monstor:%@", __FUNCTION__, [monstor class]);
    [self.nextHandler handleMonstor:monstor];
}

@end

@implementation ShieldA

- (void)handleMonstor:(Monstor *)monstor {
    if ([monstor isKindOfClass:[MonstorA class]]) {
        NSLog(@" %s I have handled MonstorA", __FUNCTION__);
    } else {
        NSLog(@"%s, monstor:%@", __FUNCTION__, [monstor class]);
        [super handleMonstor:monstor];
    }
}

@end

@implementation ShieldB

- (void)handleMonstor:(Monstor *)monstor {
    if ([monstor isKindOfClass:[MonstorB class]]) {
        NSLog(@" %s I have handled MonstorB", __FUNCTION__);
    } else {
        NSLog(@"%s, monstor:%@", __FUNCTION__, [monstor class]);
        [super handleMonstor:monstor];
    }
}

@end

@implementation ShieldC

- (void)handleMonstor:(Monstor *)monstor {
    if ([monstor isKindOfClass:[MonstorC class]]) {
        NSLog(@" %s I have handled MonstorC", __FUNCTION__);
    } else {
        NSLog(@"%s, monstor:%@", __FUNCTION__, [monstor class]);
        [super handleMonstor:monstor];
    }
}

@end

@implementation ShieldD

- (void)handleMonstor:(Monstor *)monstor {
    if ([monstor isKindOfClass:[MonstorD class]]) {
        NSLog(@" %s I have handled MonstorD", __FUNCTION__);
    } else {
        NSLog(@"%s, monstor:%@", __FUNCTION__, [monstor class]);
        [super handleMonstor:monstor];
    }
}

@end

