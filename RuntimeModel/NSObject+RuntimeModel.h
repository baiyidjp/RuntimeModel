//
//  NSObject+RuntimeModel.h
//  RuntimeModel
//
//  Created by tztddong on 16/9/27.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (RuntimeModel)

+ (instancetype)toModelWithDict:(NSDictionary *)dict;

+ (NSArray *)toModelWithDictArray:(NSArray *)array;

@end
