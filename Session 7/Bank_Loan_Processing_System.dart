// Bank Loan Processing System
void main() {
  
}
/*
Create an abstract class Loan with the following properties and methods:
- borrowerName (String)
- loanAmount (double)
- interestRate (double)
- Abstract method: double calculateMonthlyInstallment(int months).
*/
abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;

  Loan ({
    required this.borrowerName,
    required this.loanAmount,
    required this.interestRate});

  double calculateMonthlyInstallment(int months);
}
/*
Loan Subclasses
- PersonalLoan: Has a fixed 10% interest rate.
*/
class PersonalLoan extends Loan{
  PersonalLoan({
    required super.borrowerName,
    required super.loanAmount,
    super.interestRate = 0.1});

  double calculateMonthlyInstallment(int months) {
    double monthlyInstallment = (super.loanAmount * (1 + super.interestRate)) / months;
    return monthlyInstallment;
  }
}
/*
Loan Subclasses
- HomeLoan: Has a base 8% interest rate, but if loanAmount > 500,000, the rate increases to 9.5%.
*/
class HomeLoan extends Loan{
  HomeLoan({
    required super.borrowerName,
    required super.loanAmount,
    super.interestRate = 0.08});

  double calculateMonthlyInstallment(int months) {
    if (super.loanAmount > 500000) {
      super.interestRate = 0.095;
    }
    double monthlyInstallment = (super.loanAmount * (1 + super.interestRate)) / months;
    return monthlyInstallment;
  }
}
/*
Loan Subclasses
- CarLoan: Has a 7% interest rate, but if loanAmount > 50,000, it applies an additional 2% processing fee.
*/
class CarLoan extends Loan{
  CarLoan({
    required super.borrowerName,
    required super.loanAmount,
    super.interestRate = 0.07});

  double calculateMonthlyInstallment(int months) {
    double additionalFees = 0;
    if (super.loanAmount > 50000) {
      additionalFees = 0.02 * loanAmount;
    }
    double monthlyInstallment = ((super.loanAmount * (1 + super.interestRate)) / months);
    return monthlyInstallment + additionalFees;
  }
}
/*
LoanProcessingSystem Class
Create a LoanProcessingSystem class that:
- Stores a list of loans.
- Provides methods to:
- applyLoan(Loan loan): Adds a loan application to the system.
- calculateInstallments(int months): Calculates the monthly installment for all loans.
*/
class LoanProcessingSystem {
  List<Loan> _loans = [];
  
  void applyLoan (Loan loan) {
    this._loans.add(loan);
  }

  void calculateInstallments (int months) {
    for (var element in _loans) {
      print(element.calculateMonthlyInstallment(months));
    }
  }
}