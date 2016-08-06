//
//  BOXFolderCollaborationsRequestTests.m
//  BoxContentSDK
//
//  Created by Clement Rousselle on 1/5/15.
//  Copyright (c) 2015 Box. All rights reserved.
//

@import BoxContentSDK;

#import "BOXFolderCollaborationsRequest.h"
#import "BOXRequestTestCase.h"

@interface BOXFolderCollaborationsRequestTests : BOXRequestTestCase
@end

@implementation BOXFolderCollaborationsRequestTests

- (void)test_request_has_expected_URLRequest
{
    NSString *folderID = @"123";
    
    BOXFolderCollaborationsRequest *request = [[BOXFolderCollaborationsRequest alloc] initWithFolderID:folderID];
    NSURLRequest *URLRequest = request.urlRequest;
    
    // URL assertions
    NSURL *expectedURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@/%@/folders/%@/collaborations", BOXAPIBaseURL, BOXAPIVersion,folderID]];
    XCTAssertEqualObjects(expectedURL, URLRequest.URL);
    XCTAssertEqualObjects(@"GET", URLRequest.HTTPMethod);
}

@end
