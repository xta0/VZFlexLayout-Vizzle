//
//  VZFNodeListItem.h
//  VZFlexLayoutAdapter
//
//  Created by moxin on 9/20/18.
//  Copyright © 2018 Tao Xu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Vizzle/VZListItem.h>
#import <VZFlexLayout/VZFNodeListItemRecycler.h>
#import <VZFlexLayout/VZFNodeProvider.h>
#import <VZFlexLayout/VZFNodeRequiredMethods.h>


@class VZFluxStore;
@interface VZFNodeListItem : VZListItem <VZFNodeProvider>

@property(nonatomic,assign) float contentWidth;
@property(nonatomic,assign) float contentHeight;
@property(nonatomic,readonly,strong) UIView* attachedView;

- (void)updateModelWithConstrainedSize:(CGSize)sz context:(id)context;
- (void)updateState;
- (void)attachToView:(UIView *)view;
- (void)detachFromView;

@end

@interface VZFNodeListItem(SubclassingHooks)

+ (VZFNode<VZFNodeRequiredMethods>* )nodeWithProps:(VZFNodeListItem* )props Store:(VZFluxStore* )store;

@end
