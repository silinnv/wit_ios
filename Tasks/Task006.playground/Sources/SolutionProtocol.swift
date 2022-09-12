import Foundation

// MARK: - Solution protocol
//
// This file declares a protocol with a requirement for a solution
// Do not make changes to the code below

public protocol SolutionProtocol {
	func semaphore(isSemaphoreGreen: Bool) -> (Bool, String)
}
