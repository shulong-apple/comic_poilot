//
//  OpenAIResponse.swift
//  Hackathon
//
//  Created by zy on 2023/7/11.
//

import Foundation

struct ResponseData: Decodable {
    let id: String
    let object: String
    let created: Int
    let model: String
    let usage: Usage
    let choices: [Choice]

    struct Usage: Decodable {
        let prompt_tokens: Int
        let completion_tokens: Int
        let total_tokens: Int
    }

    struct Choice: Decodable {
        let message: Message
        let finish_reason: String
        let index: Int

        struct Message: Decodable {
            let role: String
            let content: String
        }
    }
}
