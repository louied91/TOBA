/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TOBA.Data;

import TOBA.infrastructure.User;
import java.io.Serializable;
import java.util.ArrayList;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;


@Entity
public class Account {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int accountID;
    
    private double balance;
    @ManyToOne
    private User user;
    private AccountType type;
    
    @OneToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
    private ArrayList<Transaction> transactions;    

    public AccountType getAccountType() {
        return this.type;
    }

   
    public enum AccountType {
        CHECKING, SAVINGS
    }
    
    public Account(){}
    
    public Account (User user, double balance, AccountType type) {
        this.balance = balance;
        this.user = user;
        this.type = type;    
    }
    public void Credit(double money) {
        balance += money;
        Transaction credit = new Transaction(money, Transaction.TransactionType.CREDIT);
        this.transactions.add(credit);
    }
    public void Debit(double money) {
        balance -= money;
        Transaction debit = new Transaction(money, Transaction.TransactionType.DEBIT);
        this.transactions.add(debit);
    }
    public ArrayList<Transaction> getTransactions() {
        return transactions;
    }
    public void addTransactions(Transaction trans) {
        this.transactions.add(trans);
    }
    
    public int getAccountId() {
        return this.accountID;
    }
    
}
