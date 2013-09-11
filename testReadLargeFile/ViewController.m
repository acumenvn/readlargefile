//
//  ViewController.m
//  testReadLargeFile
//
//  Created by Tri Vo on 9/10/13.
//  Copyright (c) 2013 Tri Vo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    m_currentReader = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)btnRead_Clicked:(id)sender {
    [myTextView setText:[m_currentReader readLine]];
}

- (void)dealloc {
    [myTextView release];
    [m_lblRandomLine release];
    [super dealloc];
}

- (void)swithTo:(id)sender {
    UIButton *btn = (UIButton *)sender;
    int tag = btn.tag;
    if (tag == currentTag) {
        return;
    }
    currentTag = tag;
    switch (currentTag) {
        case 1:
        {
            if (m_thousandReader == nil) {
                NSString *filePath = [[NSBundle mainBundle] pathForResource:@"tenthousand" ofType:@"dat"];
                m_thousandReader = [[FileReader alloc] initWithFilePath:filePath];
            }
            m_currentReader = m_thousandReader;
//            [m_lblRandomLine setText:[m_thousandReader readRandomLine]];
            
        }
            break;
        case 2:
        {
            if (m_millionReader == nil) {
                NSString *filePath = [[NSBundle mainBundle] pathForResource:@"threemiliion" ofType:@"dat"];
                m_millionReader = [[FileReader alloc] initWithFilePath:filePath];
            }
            m_currentReader = m_millionReader;
//            [m_lblRandomLine setText:[m_millionReader readRandomLine]];
        }
            break;
        default:
            break;
    }
}
@end
