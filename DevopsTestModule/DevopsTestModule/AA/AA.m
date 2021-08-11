//
//  AA.m
//  DevopsTestModule
//
//  Created by demo on 2020/12/28.
//

#import "AA.h"
#define IS_LITE
@implementation AA
- (void)testAA {
    NSLog(@"test aa");
}
#ifdef IS_LITE
- (void)testLiteAA {
    NSLog(@"test lite aa");
}
#endif
@end

