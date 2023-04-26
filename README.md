#  PackageStringsBug

This repo demonstrates a bug in how NSLocalizedString does not load the expected localized string in the context of a SwiftUI preview or snapshot test, but does work as expected when running in the context of a final app.
