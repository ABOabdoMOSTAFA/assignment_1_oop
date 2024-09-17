class BankAccount{
  int accountID;
  int balance;
  BankAccount({this.accountID, this.balance});
  BankAccount.balance(this.accountID){
    balance=0;
  }
  void withDraw(int balance){
    if(this.balance!=0){
      this.balance-=balance;
    }else{
      print(" the account is sufficient");}
  }
  void deposit(int balance){
    // balance+=this.balance;
    this.balance+=balance;
  }
  void printBalanceAccount(){
    print("the account balance :${this.balance}");
  }
}
void main(){
  BankAccount account=BankAccount(accountID: 202020127,balance: 20);
  account.deposit(80);
  account.withDraw(80);
  account.printBalanceAccount();
}
