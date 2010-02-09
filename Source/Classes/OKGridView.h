//  Copyright 2010 Tyler Stromberg
//  
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//  
//    http://www.apache.org/licenses/LICENSE-2.0
//  
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//  
//  OKGridView
//  TODO: Insert brief class description here

#import <UIKit/UIKit.h>

#import "OKGridViewCell.h"

@protocol OKGridViewDataSource, OKGridViewDelegate;

@interface OKGridView : UIScrollView
{
   id<OKGridViewDataSource> mDataSource;
   id<OKGridViewDelegate> mDelegate;
   
   // Sizing
   CGFloat mRowHeight;
   CGFloat mColumnWidth;
   
   // Cell reuse
   NSMutableDictionary *mReusableGridCells;
}

@property (nonatomic, assign) id<OKGridViewDataSource> dataSource;
@property (nonatomic, assign) id<OKGridViewDelegate> delegate;

@property (nonatomic, assign) CGFloat rowHeight;
@property (nonatomic, assign) CGFloat columnWidth;

@end


#pragma mark -
// -----------------------------------------------------------------------------

@protocol OKGridViewDataSource<NSObject>

@required

- (NSInteger)gridView:(OKGridView *)gridView numberOfRowsInSection:(NSInteger)section;
- (NSInteger)gridView:(OKGridView *)gridView numberOfColumnsInRow:(NSInteger)row;
- (OKGridViewCell *)gridView:(OKGridView *)gridView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@optional

// Defaults to 1 if this method is not implemented by the dataSource
- (NSInteger)numberOfSectionsInGridView:(OKGridView *)gridView;

@end


#pragma mark -
// -----------------------------------------------------------------------------

@protocol OKGridViewDelegate<NSObject, UIScrollViewDelegate>

@optional

// Cell sizing
// For simplicity's sake, we require uniform sizing across rows and columns
- (CGFloat)gridView:(OKGridView *)gridView heightForRowAtIndex:(NSUInteger)rowIndex;
- (CGFloat)gridView:(OKGridView *)gridView widthForColumnAtIndex:(NSUInteger)columnIndex;

@end
