//
//  TFY_AutoLayout.h
//  TFY_AutoLayout
//
//  Created by 田风有 on 2019/5/23.
//  Copyright © 2019 恋机科技. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for WHC_AutoLayout.
FOUNDATION_EXPORT double TFY_AutoLayoutVersionNumber;

//! Project version string for WHC_AutoLayout.
FOUNDATION_EXPORT const unsigned char TFY_AutoLayoutVersionString[];

#define TFY_AutoLayoutKitRelease 0

#if TFY_AutoLayoutKitRelease

#import <TFY_AutoLayout/CALayer+TFY_Frame.h>
#import <TFY_AutoLayout/UIView+TFY_Frame.h>
#import <TFY_AutoLayout/UIView+TFY_AutoLayout.h>
#import <TFY_AutoLayout/UILayoutGuide+TFY_AutoLayout.h>
#import <TFY_AutoLayout/UITableView+TFY_LayoutCell.h>
#import <TFY_AutoLayout/UITableViewCell+TFY_AutoHeightForCell.h>

#else

#import "CALayer+TFY_Frame.h"
#import "UIView+TFY_Frame.h"
#import "UIView+TFY_AutoLayout.h"
#import "UILayoutGuide+TFY_AutoLayout.h"
#import "UITableView+TFY_LayoutCell.h"
#import "UITableViewCell+TFY_AutoHeightForCell.h"

#endif





