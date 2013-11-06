//
//  Collider.m
//  Shooter
//
//  Created by Sven A. Schmidt on 06/11/2013.
//  Copyright (c) 2013 feinstruktur. All rights reserved.
//

#import "Collider.h"

#import "FloorSegment.h"
#import "Snowflake.h"


@implementation Collider

+ (void)collideSnowflake:(Snowflake *)flake withFloorSegment:(FloorSegment *)floorSegment
{
    NSParameterAssert([flake isKindOfClass:[Snowflake class]]);
    NSParameterAssert([floorSegment isKindOfClass:[FloorSegment class]]);
    
    [flake hasLanded];
    [floorSegment absorbSnowflake:flake];
}

@end
