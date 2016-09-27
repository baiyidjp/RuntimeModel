//
//  NSObject+RuntimeModel.m
//  RuntimeModel
//
//  Created by tztddong on 16/9/27.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

#import "NSObject+RuntimeModel.h"
#import <objc/runtime.h>

typedef struct property_t {
    const char *name;
    const char *attributes;
} *propertyStruct;

@implementation NSObject (JPModel)

+ (instancetype)toModelWithDict:(NSDictionary *)dict{
    
    if (!dict) {
        return nil;
    }
    
    return [[[self alloc]init] setDict:dict];
}

- (instancetype)setDict:(NSDictionary *)dict{
    
    //1.获取所有的属性
    unsigned int outCount = 0;
    objc_property_t *propertes = class_copyPropertyList([self class], &outCount);
    for (int i = 0; i < outCount; i++) {
        objc_property_t property = propertes[i];
        NSString *name = @(property_getName(property));
        //赋值KVO
        [self setValue:[dict objectForKey:name] forKey:name];
    }
    return self;
}

+ (NSArray *)toModelWithDictArray:(NSArray *)array{
    
    if (!array.count) {
        return nil;
    }
    
    NSMutableArray *arrM = [NSMutableArray arrayWithCapacity:array.count];
    
    for (int i = 0; i < array.count; i++) {
        NSDictionary *dict = array[i];
        id model = [[[self alloc] init] setDict:dict];
        [arrM addObject:model];
    }
    
    return [arrM copy];
}


@end
