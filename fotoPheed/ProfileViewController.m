//
//  ProfileViewController.m
//  fotoPheed
//
//  Created by Jon-Paul Lussier on 11/5/13.
//  Copyright (c) 2013 Jon-Paul Lussier. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Profile";
        self.tabBarItem.image= [UIImage imageNamed:@"111-user"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320,590);
    
    UIImageView *higgieView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"kittens.jpg"]];
    higgieView.frame = CGRectMake(20,20,100,114);
    
    [self.scrollView addSubview:higgieView];
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,140,280,40)];
    nameLabel.text = @"Name: Jon-Paul Lussier Jr.";
    [self.scrollView addSubview:nameLabel];
    
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,200,280,40)];
    cityLabel.text = @"From: Clearwater, FL";
    [self.scrollView addSubview:cityLabel];
    
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(12,260,300,180)];
    biography.font = [UIFont fontWithName:@"Helvetica" size:15];
    biography.editable = NO;
    biography.text = @"Jon-Paul Lussier is a software engineer at ThreatTrack Security. He enjoys developing new products, working in new technology and inventing ways to use existing software in intersting new ways. Jon-Paul is a loving husband and father to an adorable dog named Rosco. When he's not learning a cool new way to solve problems, he enjoys sports and outdoor activities.";
    [self.scrollView addSubview:biography];
    
    UILabel *memberSinceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,440,280,40)];
    memberSinceLabel.text = @"Member since November 2012";
    [self.scrollView addSubview:memberSinceLabel];
    
  	UILabel *twitterName = [[UILabel alloc] initWithFrame:CGRectMake(20, 500, 280, 40)];
    twitterName.text = @"@jonpaullussier";
    [self.scrollView addSubview:twitterName];
    
    [self.view addSubview:_scrollView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
