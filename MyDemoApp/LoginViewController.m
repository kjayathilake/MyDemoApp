//
//  LoginViewController.m
//  MyDemoApp
//
//  Created by Krishantha Jayathilake on 1/12/14.
//  Copyright (c) 2014 Krishantha Jayathilake. All rights reserved.
//

#import "LoginViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "Colors.h"

@interface LoginViewController ()

@property (nonatomic) UIView *backgroudView;
@property (nonatomic) UITextField *txtUsername;
@property (nonatomic) UITextField *txtPassword;
@property (nonatomic) UIButton *btnSignIn;
@property (nonatomic) UIButton *btnSignUp;

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    
    self.view.backgroundColor = [Colors background];
    self.backgroudView = [[UIView alloc]init];
    self.backgroudView.backgroundColor = [UIColor clearColor];
    //self.backgroudView.layer.cornerRadius = 6.0;
    //self.backgroudView.layer.shadowColor = [Colors orangeShadow].CGColor;
    //self.backgroudView.layer.shadowOpacity = 0.7;
    //self.backgroudView.layer.shadowRadius = 0.0;
    //self.backgroudView.layer.shadowOffset = CGSizeMake(0.0f, 5.0f);
    [self.view addSubview:self.backgroudView];
    
    
    UIView *paddingUser = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    self.txtUsername = [[UITextField alloc]init];
    self.txtUsername.placeholder = @"Username";
    self.txtUsername.backgroundColor = [UIColor whiteColor];
    self.txtUsername.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.txtUsername.leftView = paddingUser;
    self.txtUsername.leftViewMode = UITextFieldViewModeAlways;
    self.txtUsername.borderStyle = UITextBorderStyleRoundedRect;
    self.txtUsername.layer.shadowColor = [UIColor groupTableViewBackgroundColor].CGColor;
    self.txtUsername.layer.shadowOpacity = 0.7;
    self.txtUsername.layer.shadowRadius = 0.0;
    self.txtUsername.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    [self.backgroudView addSubview:self.txtUsername];
    
    UIView *paddingPass = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    self.txtPassword = [[UITextField alloc]init];
    self.txtPassword.placeholder = @"Password";
    self.txtPassword.backgroundColor = [UIColor whiteColor];
    self.txtPassword.secureTextEntry = YES;
    self.txtPassword.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.txtPassword.borderStyle = UITextBorderStyleRoundedRect;
    self.txtPassword.leftView = paddingPass;
    self.txtPassword.leftViewMode = UITextFieldViewModeAlways;
    [self.backgroudView addSubview:self.txtPassword];
    
    self.btnSignIn = [[UIButton alloc]init];
    self.btnSignUp = [[UIButton alloc]init];
    
    
    
}

- (void)viewWillLayoutSubviews
{
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height;
    
    self.backgroudView.frame = CGRectMake(10, 100, 300, 300);
    self.txtUsername.frame = CGRectMake(5, 10, 290, 50);
    self.txtPassword.frame = CGRectMake(5, 70, 290, 50);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
