//
//  FileReader.h
//  testReadLargeFile
//
//  Created by Tri Vo on 9/10/13.
//  Copyright (c) 2013 Tri Vo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileReader : NSObject {
    NSString*			m_filePath;				/**< File path. */
	NSFileHandle*		m_fileHandle;			/**< File handle. */
    unsigned long long  m_totalFileLength;
    unsigned long long  m_currentPosition;
}


- (id) initWithFilePath:(NSString *)filePath;


- (NSString *) readLine;
- (NSString *)readRandomLine;

@end
