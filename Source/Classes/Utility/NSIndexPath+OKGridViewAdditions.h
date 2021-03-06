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
//  Convenience category on NSIndexPath to add support for columns

#import <Foundation/Foundation.h>

@interface NSIndexPath(OKGridViewAdditions)

@property (nonatomic, readonly) NSUInteger column;

+ (NSIndexPath *)indexPathForColumn:(NSUInteger)column
                                row:(NSUInteger)row
                          inSection:(NSUInteger)section;

@end
