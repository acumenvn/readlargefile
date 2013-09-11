//
//  FileReader.m
//  testReadLargeFile
//
//  Created by Tri Vo on 9/10/13.
//  Copyright (c) 2013 Tri Vo. All rights reserved.
//

#import "FileReader.h"
#import "NSFileHandle+Addtions.h"



@implementation FileReader

- (id)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (void)dealloc {
    [m_fileHandle release];
    m_fileHandle = nil;
    [m_filePath release];
    m_filePath = nil;
    [super dealloc];
}

- (id)initWithFilePath:(NSString *)filePath {
    if (self = [super init]) {
        if (filePath == nil || [filePath length] == 0) {
            [self release];
            [[[[UIAlertView alloc] initWithTitle:@"Error" message:@"File does not exist or content of file is null" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil] autorelease] show];
            return nil;
        }
        m_fileHandle = [[NSFileHandle fileHandleForReadingAtPath:filePath] retain];
        if (m_fileHandle == nil) {
            [self release];
            return nil;
        }
    
        m_totalFileLength = [m_fileHandle seekToEndOfFile];
        m_currentPosition = 0ULL;
        [m_fileHandle seekToFileOffset:m_currentPosition];
    }
    return self;
}

- (NSString *)readLine {
    NSData *lineData = [m_fileHandle readLineWithDelimiter:@"\n"];
    NSString *retLine = [[NSString alloc] initWithData:lineData encoding:NSUTF8StringEncoding];
    return [retLine autorelease];
}

- (NSString *)readRandomLine {
    
}

@end
