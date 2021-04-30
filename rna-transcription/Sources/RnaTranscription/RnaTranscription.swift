//Solution goes in Sources
import Foundation

enum TranscriptionError: Error {
    case invalidNucleotide(message: String)
}


class Nucleotide {
    
    let rna: String
    
    
    func complementOfDNA() throws -> String {
        var dna: String = ""
        try rna.forEach { (c) in
            switch c {
            case "G":
                dna += "C"
            case "C":
                dna +=  "G"
            case "T":
                dna += "A"
            case "A":
                dna += "U"
            default:
                throw TranscriptionError.invalidNucleotide(message: "\(c) is not a valid Nucleotide")
            }
        }
        return dna
    }
    
    init(_ rna: String) {
        self.rna = rna.uppercased()
    }
}
