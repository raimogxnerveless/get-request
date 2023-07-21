import Foundation

let url = URL(string: "http://www.example.com/")!
let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
    guard let data = data else { return }
    print(String(data: data, encoding: .utf8)!)
}

task.resume()
