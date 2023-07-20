// MARK: - Task conditions
//
// 1. Define an enumeration named `HttpStatus` that represents HTTP status codes.
//    It should have the options:
//    - `success` with a raw value of 200
//    - `notFound` with a raw value of 404
//    - `serverError` with a raw value of 500
// 2. Create a variable named `responseStatus` with the value `success'.
// 3. Use the switch-case and put the raw value of `responseStatus` to the `statusCode` variable.

// MARK: - Solution

// The beginning of the solution

enum HttpStatus: Int{
    case success = 200
    case notFound = 404
    case serverError = 500
}

let responseStatus = HttpStatus.success

func getStatusCode(_ status: HttpStatus) -> Int{
    switch status {
    case HttpStatus.success:
        return HttpStatus.success.rawValue
    case HttpStatus.notFound:
        return HttpStatus.notFound.rawValue
    case HttpStatus.serverError:
        return HttpStatus.serverError.rawValue
    }
}

let statusCode = getStatusCode(responseStatus)
print(statusCode)
// Completion of the solution
