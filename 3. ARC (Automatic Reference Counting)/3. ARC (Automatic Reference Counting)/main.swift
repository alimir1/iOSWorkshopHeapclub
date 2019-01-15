class School {
    var name: String
    var student: Student? = nil // Optional Student

    init(name: String) {
        self.name = name
    }

    deinit {
        print("\(name) deallocated")
    }
}

class Student {
    var name: String

    // To avoid reference cycle (also known as retain cycle), you declare school to be 'weak'
    weak var school: School? = nil // Optional School

    init(name: String) {
        self.name = name
    }

    deinit {
        print("\(name) deallocated")
    }
}


var bob: Student? = Student(name: "Bob Smith")
var stanford: School? = School(name: "Stanford University")

bob?.school = stanford
stanford?.student = bob

bob = nil
stanford = nil



