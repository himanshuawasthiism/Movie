//
//  AppDelegate.h
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Film.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) IBOutlet UINavigationController *navigationController;

- (void)getFilmWithCallback:(void (^)(Film *film))callback;

@end

