//
//  NetworkRequestErrorModel.swift
//  thinkit
//

import Foundation

enum NetworkRequestError: Error {
    case unknown
    case requestError
    case serverError(error: String)
}
