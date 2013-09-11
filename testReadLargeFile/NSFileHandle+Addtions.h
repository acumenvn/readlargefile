//
//  NSFileHandle+Addtions.h
//  testReadLargeFile
//
//  Created by Tri Vo on 9/11/13.
//  Copyright (c) 2013 Tri Vo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileHandle (Addtions)

- (NSData *)readLineWithDelimiter:(NSString *)theDelimiter;

@end
