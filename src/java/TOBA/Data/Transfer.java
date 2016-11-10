/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TOBA.Data;


public class Transfer extends Transaction{
    private Account from;
    private Account to;
    
    public Transfer(Account src, Account dest, double amt, TransactionType type) {
        super(amt, type);
        this.from = src;
        this.to = dest;
    }
}
