//
//  692.swift : Top K Frequent Words
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 19/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

enum P692 {
  class Solution {
    func topKFrequent(_ words: [String], _ kFreq: Int) -> [String] {
      var map: [String: Int] = [:]

      for word in words {
        map[word] = map[word, default: 0] + 1
      }

      var sorted = map.sorted { aWord, bWord in
        if aWord.value == bWord.value {
          return aWord > bWord
        } else {
          return aWord.value < bWord.value
        }
      }

      var result: [String] = []
      sorted = sorted.reversed()

      for i in 0 ..< kFreq {
        let (key, _) = sorted[i]
        result.append(key)
      }

      return result
    }
  }
}
