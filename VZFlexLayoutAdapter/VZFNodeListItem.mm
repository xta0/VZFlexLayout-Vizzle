//
//  VZFNodeListItem.m
//  VZFlexLayoutAdapter
//
//  Created by moxin on 9/20/18.
//  Copyright © 2018 Tao Xu. All rights reserved.
//

#import "VZFNodeListItem.h"
#import <VZFlexLayout/VZFluxStore.h>

@interface VZFNodeListItem()
@property(nonatomic,strong) VZFNodeListItemRecycler* recycler;
@end

@implementation VZFNodeListItem

- (float) itemHeight{
    return MAX(0.0001, _recycler.layoutSize.height);
}
- (float) contentWidth{
    return _recycler.layoutSize.width;
}
- (float) contentHeight{
    return [self itemHeight];
}

- (void)updateModelWithConstrainedSize:(CGSize)sz context:(id)context{
    [self.recycler calculate:self constrainedSize:sz context:context];
}
- (void)updateState{
    [self.recycler updateState];
    
}
- (void)attachToView:(UIView *)view{
    _attachedView = view;
    [self.recycler attachToView:view];
}
- (void)detachFromView{
    [self.recycler detachFromView];
    _attachedView = nil;
}

+ (VZFNode<VZFNodeRequiredMethods>* )nodeForItem:(id)item Store:(VZFluxStore* )store Context:(id)ctx;{
    return [[self class] nodeWithProps:item Store:store ];
}
@end
