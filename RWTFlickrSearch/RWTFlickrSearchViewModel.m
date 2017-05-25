//
//  RWTFlickrSearchViewModel.m
//  RWTFlickrSearch
//
//  Created by Feargal Walsh on 5/24/17.
//  Copyright © 2017 Colin Eberhardt. All rights reserved.
//

#import "RWTFlickrSearchViewModel.h"

@implementation RWTFlickrSearchViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        [self initialize];
    }
    return self;
}

-(void)initialize {
    self.searchText = @"search text";
    self.title = @"Flickr Search";
}

@end
