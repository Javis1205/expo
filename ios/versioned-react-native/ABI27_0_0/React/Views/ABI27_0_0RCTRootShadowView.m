/**
 * Copyright (c) 2015-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "ABI27_0_0RCTRootShadowView.h"

#import "ABI27_0_0RCTI18nUtil.h"
#import "ABI27_0_0RCTShadowView+Layout.h"

@implementation ABI27_0_0RCTRootShadowView

- (instancetype)init
{
  if (self = [super init]) {
    _baseDirection = [[ABI27_0_0RCTI18nUtil sharedInstance] isRTL] ? ABI27_0_0YGDirectionRTL : ABI27_0_0YGDirectionLTR;
    _availableSize = CGSizeMake(INFINITY, INFINITY);
  }

  return self;
}

- (void)layoutWithAffectedShadowViews:(NSHashTable<ABI27_0_0RCTShadowView *> *)affectedShadowViews
{
  NSHashTable<NSString *> *other = [NSHashTable new];

  ABI27_0_0RCTLayoutContext layoutContext = {};
  layoutContext.absolutePosition = CGPointZero;
  layoutContext.affectedShadowViews = affectedShadowViews;
  layoutContext.other = other;

  [self layoutWithMinimumSize:CGSizeZero
                  maximumSize:_availableSize
              layoutDirection:ABI27_0_0RCTUIKitLayoutDirectionFromYogaLayoutDirection(_baseDirection)
                layoutContext:layoutContext];
}

@end
