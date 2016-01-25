//
//  ViewController.m
//  AcronymFinder
//
//  Created by Vinodha Sundaramoorthy on 1/19/16.
//  Copyright © 2016 Vinodha Sundaramoorthy. All rights reserved.
//

#import "ViewController.h"
//#import <AFNetworking/AFNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)searchAcronymns:(id)sender {
    //Start progress Indicator
    NSLog(@"Search text is :%@",self.wordText.text);
    [self.wordText resignFirstResponder];
    
    //Validate the input string and show corresponding alerts
    
    NSError *fetchRequestError = [[NSError alloc] init];
    //Call the search API
  /*  AFHTTPRequestSerializer *fectchRequest = [[AFHTTPRequestSerializer alloc] init];
    [fectchRequest requestWithMethod:@"GET" URLString:@"http://www.nactem.ac.uk/software/acromine/rest.html" parameters:@"sf=hello" error:&fetchRequestError];*/
}

//Table view Delegates

- (NSInteger)numberOfSectionsInTableView:(UITableView *)iTableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)iTableView numberOfRowsInSection:(NSInteger)iSection {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)iTableView cellForRowAtIndexPath:(NSIndexPath *)iIndexPath {
    
    UITableViewCell *testTableCellView = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    testTableCellView.textLabel.text = @"Test Value";
    return testTableCellView;
}

//Text Feild Delegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.wordText resignFirstResponder];
    return YES;
}

@end
