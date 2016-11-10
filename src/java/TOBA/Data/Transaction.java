/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TOBA.Data;

import java.io.Serializable;
import java.util.ArrayList;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Transaction implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int transactionoID;
    private double amt;
    private TransactionType type;
    
    public enum TransactionType {
        DEBIT, CREDIT, TRANSFER
    }
    
    public Transaction(){}
    
    public Transaction(double amt, TransactionType type) {
        this.amt = amt;
        this.type = type;
    }

}
