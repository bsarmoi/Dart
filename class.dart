class BankAccount {
  //properties of class BankAccount
  late String customer_name;
  late int Acc_number;
  late double balance;
  void display() {
    print("$customer_name");
    print("$Acc_number");
    print("$balance");
  }
}

void main() {
  //object to access class properties
  var Account = BankAccount();
  Account.customer_name = "Sarmoi";
  Account.Acc_number = 204070911045;
  Account.balance = 456000;
  Account.display();
}
