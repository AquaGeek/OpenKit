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
//  NSIndexPath(OKGridViewAdditions)

#import "NSIndexPath+OKGridViewAdditions.h"

@implementation NSIndexPath(OKGridViewAdditions)

@dynamic column;

- (NSUInteger)column
{
   // Make sure the index path contains exactly three indexes
   if(self.length != 3)
   {
      // Throw an exception
      NSString *description = @"Invalid index path for use with OKGridView. " \
      "Index paths passed to the grid view must contain exactly three indices specifying " \
      "the section, row, and column.  Please use the category on NSIndexPath.";
      
      [NSException raise:@"NSInternalInconsistencyException" format:description];
   }
   
   // Grab the third index, the column (zero-based numbering)
   NSUInteger column = [self indexAtPosition:2];
   
   return column;
}

+ (NSIndexPath *)indexPathForColumn:(NSUInteger)column
                                row:(NSUInteger)row
                          inSection:(NSUInteger)section
{
   // Create the index path with the given section, row, and column
   NSUInteger indexes[3] = { section, row, column };
   return [NSIndexPath indexPathWithIndexes:indexes length:3];
}

@end
