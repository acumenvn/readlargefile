//
//  ViewController.h
//  testReadLargeFile
//
//  Created by Tri Vo on 9/10/13.
//  Copyright (c) 2013 Tri Vo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FileReader.h"

@interface ViewController : UIViewController {
    
    IBOutlet UITextView *myTextView;
    FileReader *m_thousandReader;
    FileReader *m_millionReader;
    FileReader *m_currentReader;
    IBOutlet UILabel *m_lblRandomLine;
    int currentTag;
}

- (IBAction) btnRead_Clicked:(id)sender;

- (IBAction) swithTo:(id)sender;

@end
