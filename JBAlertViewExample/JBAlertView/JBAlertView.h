//
//  JBAlertView.h
//  JBAlertViewExample
//
//  Created by Jean-Baptiste Castro on 27/01/12.
//  Copyright (c) 2012 - jeanbaptistecastro.com - All rights reserved.
//

#import <UIKit/UIKit.h>

//All styles of alert
typedef enum
{
    JBAlertViewStyleDefault,
    JBAlertViewStyleConnection,
    JBAlertViewStyleError
    //JBAlertViewStyleTextInput,
    //JBAlertViewStyleSecureTextInput,
    //JBAlertViewStyleLoginPassword
} JBAlertViewStyle;

@interface JBAlertView : UIView

//Text for alert details
@property (nonatomic, assign) IBOutlet UILabel *alertTitle;
@property (nonatomic, assign) IBOutlet UILabel *alertDetail;

//Image for different alert
@property (nonatomic, assign) IBOutlet UIImageView *alertImage;

//Activity for JBAlertViewTypeConnection
@property (nonatomic, assign) IBOutlet UIActivityIndicatorView *activity;

#pragma mark - View methods

//With time interval
+ (JBAlertView*)alertInView:(UIView*)view 
                     ofStyle:(JBAlertViewStyle)style 
                  withTitle:(NSString*)title 
                  andDetail:(NSString*)detail 
                  hideAfter:(NSTimeInterval)interval;

//With selector
+ (JBAlertView*)alertInView:(UIView *)view 
                    ofStyle:(JBAlertViewStyle)style 
                  withTitle:(NSString *)title 
                  andDetail:(NSString *)detail 
                   hideWith:(SEL)selector;

#pragma mark - Window methods

//With time interval
+ (JBAlertView*)alertInWindow:(UIWindow*)window 
                       ofStyle:(JBAlertViewStyle)style 
                    withTitle:(NSString*)title 
                    andDetail:(NSString*)detail 
                    hideAfter:(NSTimeInterval)interval;

//With selector
+ (JBAlertView*)alertInWindow:(UIWindow*)window 
                      ofStyle:(JBAlertViewStyle)style 
                    withTitle:(NSString*)title 
                    andDetail:(NSString*)detail 
                    hideWith:(SEL)selector;

//Dismiss part
- (void)dismissTransition;
- (void)dismissAlert;

@end
