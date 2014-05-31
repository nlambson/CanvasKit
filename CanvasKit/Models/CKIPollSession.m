//
//  CKIPollSession.m
//  CanvasKit
//
//  Created by Rick Roberts on 5/22/14.
//  Copyright (c) 2014 Instructure. All rights reserved.
//

#import "CKIPollSession.h"
#import "NSDictionary+DictionaryByAddingObjectsFromDictionary.h"
#import "NSValueTransformer+CKIPredefinedTransformerAdditions.h"

@implementation CKIPollSession

+ (NSString *)keyForJSONAPIContent
{
    return @"poll_sessions";
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    NSDictionary *keyPaths = @{
                               @"hasSubmitted":@"has_submitted",
                               @"courseID": @"course_id",
                               @"sectionID": @"course_section_id",
                               @"isPublished": @"is_published",
                               @"hasPublicResults": @"has_public_results",
                               @"pollID": @"poll_id",
                               };
    NSDictionary *superPaths = [super JSONKeyPathsByPropertyKey];
    return [superPaths dictionaryByAddingObjectsFromDictionary:keyPaths];
}

+ (NSValueTransformer *)idJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithBlock:^id(id stringID) {
        return stringID;
    }];
}

- (NSString *)path
{
    return [[self.context.path stringByAppendingPathComponent:@"poll_sessions"] stringByAppendingPathComponent:self.id];
}

- (NSValueTransformer *)courseIDJSONTransformer
{
    return [NSValueTransformer valueTransformerForName:CKINumberStringTransformerName];
}

@end