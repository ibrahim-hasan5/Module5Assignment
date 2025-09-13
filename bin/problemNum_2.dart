class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print("Name: $name");
    print("Salary: \$${salary.toStringAsFixed(2)}");
  }
}

class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  @override
  void displayInfo() {
    super.displayInfo(); // call base method
    print("Department: $department");
    print("---------------------------------");
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  @override
  void displayInfo() {
    super.displayInfo(); // call base method
    print("Programming Language: $programmingLanguage");
    print("---------------------------------");
  }
}

void main() {
  Manager manager = Manager("Ibrahim", 80000, "Human Resources");
  Developer developer = Developer("Faizun Nesa", 70000, "Dart");

  manager.displayInfo();
  developer.displayInfo();
}
