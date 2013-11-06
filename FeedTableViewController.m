//
//  FeedTableViewController.m
//  fotoPheed
//
//  Created by Jon-Paul Lussier on 11/5/13.
//  Copyright (c) 2013 Jon-Paul Lussier. All rights reserved.
//

#import "FeedTableViewController.h"

@interface FeedTableViewController ()

@end

@implementation FeedTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Feed";
        self.tabBarItem.image = [UIImage imageNamed:@"98-palette"];
        self.imageTitleArray = @[@"Image 1",@"Image 2",@"Image 3",@"Image 4", @"Image 5"];
        self.imageFileNameArray = @[@"image1.png", @"image2.png", @"image3.png", @"image4.png", @"image5.png"];

    }
    return self;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSLog(@"Did select %@", _imageFileNameArray[indexPath.row]);
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return _imageTitleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = _imageTitleArray[indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

