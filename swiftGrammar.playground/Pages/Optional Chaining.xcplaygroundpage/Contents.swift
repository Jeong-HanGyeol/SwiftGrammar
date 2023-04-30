import Foundation

struct Developer {
    let name: String
}

struct Company {
    let name: String
    var developer: Developer?
}

var developer = Developer(name: "Gyeol")
var company = Company(name: "Han", developer: developer)
print(company.developer) //출력 Optional(__lldb_expr_256.Developer(name: "Gyeol"))
print(company.developer!.name) //출력 Gyeol
