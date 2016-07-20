//
//  Message+CoreDataProperties.h
//  SlapChat
//
//  Created by Flatiron School on 7/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Message.h"

NS_ASSUME_NONNULL_BEGIN

@interface Message (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *content;
@property (nullable, nonatomic, retain) NSDate *createdAt;

@end

NS_ASSUME_NONNULL_END
