//
//  PreviewCreator.swift
//
//  Created by Mark Hardwick on 20/01/2020.
//  Copyright © 2020 Designibl. MIT License. See License File.
//

import SwiftUI

struct PreviewCreator: ViewModifier {
    var standardPreview = true
    var darkMode = true
    var accessibilityXXXLText = false
    var iPhoneSE = false
    var iPhoneMax = false
    var iPad = false
    
    func body(content: Content) -> some View {
        Group {
            if standardPreview {
                Group {
                    content
                        .environment(\.sizeCategory, accessibilityXXXLText ? .accessibilityExtraExtraExtraLarge : .medium)
                    if darkMode {
                        content
                            .environment(\.colorScheme, .dark)
                            .environment(\.sizeCategory, accessibilityXXXLText ? .accessibilityExtraExtraExtraLarge : .medium)
                    }
                }
            }
            
            if iPhoneSE {
                Group {
                    content
                        .previewDevice("iPhone SE")
                        .environment(\.sizeCategory, accessibilityXXXLText ? .accessibilityExtraExtraExtraLarge : .medium)
                     if darkMode {
                        content
                            .environment(\.colorScheme, .dark)
                            .previewDevice("iPhone SE")
                            .environment(\.sizeCategory, accessibilityXXXLText ? .accessibilityExtraExtraExtraLarge : .medium)
                    }
                }
            }
            
            if iPhoneMax {
                Group {
                    content
                        .previewDevice("iPhone 11 Pro Max")
                        .environment(\.sizeCategory, accessibilityXXXLText ? .accessibilityExtraExtraExtraLarge : .medium)
                     if darkMode {
                        content
                            .environment(\.colorScheme, .dark)
                            .previewDevice("iPhone 11 Pro Max")
                            .environment(\.sizeCategory, accessibilityXXXLText ? .accessibilityExtraExtraExtraLarge : .medium)
                    }
                }
            }
            
            if iPad {
                Group {
                    content
                        .previewDevice("iPad Pro (9.7-inch)")
                        .environment(\.sizeCategory, accessibilityXXXLText ? .accessibilityExtraExtraExtraLarge : .medium)
                     if darkMode {
                        content
                            .environment(\.colorScheme, .dark)
                            .previewDevice("iPad Pro (9.7-inch)")
                            .environment(\.sizeCategory, accessibilityXXXLText ? .accessibilityExtraExtraExtraLarge : .medium)
                    }
                }
            }
        }
    }
}
