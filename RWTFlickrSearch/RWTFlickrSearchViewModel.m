//
//  RWTFlickrSearchViewModel.m
//  RWTFlickrSearch
//
//  Created by Feargal Walsh on 5/24/17.
//  Copyright © 2017 Colin Eberhardt. All rights reserved.
//

#import "RWTFlickrSearchViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@implementation RWTFlickrSearchViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        [self initialize];
    }
    return self;
}

-(void)initialize {
    self.title = @"Flickr Search";
    
    RACSignal *validSearchSignal =
    [[RACObserve(self, searchText)
      map:^id(NSString *text) {
          return @(text.length > 3);
          NSLog(@"RacSignal");
      }]
     distinctUntilChanged];
    [validSearchSignal subscribeNext:^(id x){
        NSLog(@"search text is valid %@", x);
    }];
}

@end
