//
//  Constant.h
//  LocalLanguageChange
//
//  Created by chenchen on 16/8/19.
//  Copyright © 2016年 chenchen. All rights reserved.
//

#ifndef Constant_h
#define Constant_h

static NSString * const LanguageKey = @"appLanguage";
static NSString * const Chinese = @"zh-Hans";
static NSString * const English = @"en";
static NSString * const LanguageFileName = @"Language";

#define Localized(key)  [[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:LanguageKey]] ofType:@"lproj"]] localizedStringForKey:(key) value:nil table:LanguageFileName]

#endif /* Constant_h */
