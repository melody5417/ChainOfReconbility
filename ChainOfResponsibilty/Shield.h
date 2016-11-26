//
//  Shield.h
//  ChainOfResponsibilty
//
//  Created by Yiqi Wang on 26/11/2016.
//  Copyright © 2016 Melody5417. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Monstor.h"

@interface Shield : NSObject
@property (nonatomic, strong) Shield *nextHandler;
- (void)handleMonstor:(Monstor *)monstor;
@end

@interface ShieldA : Shield

@end

@interface ShieldB : Shield

@end

@interface ShieldC : Shield

@end

@interface ShieldD : Shield

@end
