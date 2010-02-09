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

#import "OKGridView.h"

@interface OKGridView(PrivateMethods)

- (void)commonSetup;

@end


#pragma mark -

@implementation OKGridView

@synthesize dataSource = mDataSource;
@synthesize delegate = mDelegate;

@synthesize rowHeight = mRowHeight;
@synthesize columnWidth = mColumnWidth;


#pragma mark Object Lifecycle

- (id)initWithFrame:(CGRect)frame
{
   if(self = [super initWithFrame:frame])
   {
      [self commonSetup];
   }
   
   return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
   if(self = [super initWithCoder:aDecoder])
   {
      [self commonSetup];
   }
   
   return self;
}

- (void)dealloc
{
   [mReusableGridCells release];
   mReusableGridCells = nil;
   
   [super dealloc];
}


#pragma mark -

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end


#pragma mark -

@implementation OKGridView(PrivateMethods)

- (void)commonSetup
{
   // Set the default dimensions
   mRowHeight = 44.0f;
   mColumnWidth = 120.0f;
   
   // Set up cell reuse
   mReusableGridCells = [[NSMutableDictionary alloc] init];
}

@end

