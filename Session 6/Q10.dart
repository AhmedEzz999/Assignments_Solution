// Q10: Implement an employee payroll system.
// Create a base Employee class with properties: name, id, and salary.
// Implement a method calculateSalary() in the base class.
// Create two subclasses:
// FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.
// PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary() to compute salary based on hours worked.

void main() {
  Employee AhmedEzz =
  FullTimeEmployee(name: 'Ahmed Ezz', id: 'AE', worksDays: 22, bonusPercent: 1.3);
  print(AhmedEzz.calculateSalary());  // Output is 25300

  Employee MohamedAhmed =
  PartTimeEmployee(name: 'Mohamed Ahmed', id: 'MA', hoursWorked: 5, hourlyRate: 150);
  print(MohamedAhmed.calculateSalary());  // 16500
}

class Employee {
  String? name;
  String? id;
  int? salary;

  Employee
  ({required this.name, required this.id});
  calculateSalary () {}
}

class FullTimeEmployee extends Employee{
  double? bonusPercent;
  int? worksDays;  // I added an extra attribute "worksDays" To make the process more accurate.

  FullTimeEmployee
  ({required super.name, required super.id, required this.worksDays, required this.bonusPercent});

  @override
  int calculateSalary () {
    double salary = (this.worksDays! * 500) * (1 + this.bonusPercent!);
    return salary.ceil();
  }
}

class PartTimeEmployee extends Employee{
  double? hoursWorked;
  double? hourlyRate;
  
  PartTimeEmployee
  ({required super.name, required super.id, required this.hoursWorked, required this.hourlyRate});

  @override
  int calculateSalary () {
    double salary = this.hoursWorked! * this.hourlyRate! * 22;
    return salary.ceil();
  }
}