//
//  VZInspectorOverview.h
//  VZInspector
//
//  Created by Tao Xu on 14-11-26.
//  Copyright (c) 2014年 VizLab. All rights reserved.
//

#import "VZInspectorView.h"


@interface VZInspectorOverview : VZInspectorView

@property(nonatomic,assign) BOOL memoryWarning;

- (void)updateGlobalInfo;

- (void)startTimer;

- (void)stopTimer;

@end
