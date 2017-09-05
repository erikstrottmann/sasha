//
//  Copyright © 2017 Artem Novichkov. All rights reserved.
//

import Foundation
import Files

public final class Sasha {
    
    private let arguments: [String]
    private let folderService = FolderService()
    private let fileSystem = FileSystem()
    
    public init(arguments: [String] = CommandLine.arguments) {
        self.arguments = arguments
    }
    
    public func run() throws {
        let iconService = IconService()
        let url = URL(fileURLWithPath: "/Users/artemnovichkov/Library/Developer/Xcode/DerivedData/Sasha-hasywgxoyhtmrwcgkrbczvzshcbj/Build/Products/Debug/logo.png")
        try! iconService.generateIcons(for: url)
        try! iconService.generateAndroidIcons(for: url)
//        guard arguments.count > 1 else {
//            throw Error.missingProjectName
//        }
//        let projectName = arguments[1]
//
//        do {
//            let projectFile = try fileSystem.currentFolder.file(named: "project.sasha")
//            let projectString = try projectFile.readAsString()
//
//            let paths = folderService.paths(fromString: projectString)
//            try paths.forEach { path in
//                let finalPath = projectName + FolderService.Keys.slash + path
//                try fileSystem.createFolder(at: finalPath)
//            }
//            print("✅ Project \(projectName) was successfully added.")
//        }
//        catch {
//            throw Error.main
//        }
    }
}

public extension Sasha {
    
    enum Error: Swift.Error {
        case main
        case missingProjectName
    }
}

extension Sasha.Error: LocalizedError {
    
    public var errorDescription: String? {
        switch self {
        case .main: return "Project creation error. Please check that project.sasha file exists and has correct structure"
        case .missingProjectName: return "Can't find project name. Please add it as parameter, for example: sasha ProjectName"
        }
    }
}
