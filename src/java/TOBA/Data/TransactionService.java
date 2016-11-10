/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TOBA.Data;


public class TransactionService {
    
    
    public static void TransferFunds(Account from, Account to, double amt){
        Account src = AccountDB.findById(from.getAccountId());
        Account dest = AccountDB.findById(to.getAccountId());
        src.Debit(amt);
        src.Credit(amt);
        src.addTransactions(new Transfer(src,dest, amt, Transaction.TransactionType.TRANSFER));
    }
}
