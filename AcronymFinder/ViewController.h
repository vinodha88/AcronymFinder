//
//  ViewController.h
//  AcronymFinder
//
//  Created by Vinodha Sundaramoorthy on 1/19/16.
//  Copyright © 2016 Vinodha Sundaramoorthy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDataSource>

@property (nonatomic,strong) IBOutlet UITextField *wordText;

//Methods
-(IBAction)searchAcronymns:(id)sender;

@end

