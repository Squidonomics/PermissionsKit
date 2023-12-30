import class Foundation.Bundle

extension Foundation.Bundle {
    static let module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("PermissionsKit_PermissionsKit.bundle").path
        let buildPath = "/Users/bnh/git/PermissionsKit/.build/arm64-apple-macosx/debug/PermissionsKit_PermissionsKit.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}