//
//  BaseViewController.h
//  SFDANewVerison
//
//  Created by kunyuan liu on 2019/4/12.
//  Copyright © 2019 kunyuan liu. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "NMPAConstHeader.h"
NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    NMPALevelFirst = 0,
    NMPALevelDetail,
} PageTagNMPA;

@interface BaseViewController : UIViewController
//页面属性
@property (nonatomic, assign)PageTagNMPA pageTagNMPA;

@end

NS_ASSUME_NONNULL_END
