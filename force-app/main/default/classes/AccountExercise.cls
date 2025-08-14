public with sharing class AccountExercise {
    public static void queryForAccounts() {
        List<Account> accList = [SELECT Id, Name, Industry FROM Account WHERE Industry = 'Energy' ORDER BY Name];
        System.debug('Accounts in the Technology field: ');
        for (Account acc: accList){
                System.debug('Id: ' + acc.Id + ' Name: ' + acc.Name + ' Industry: ' + acc.Industry);
        }
    }

    public static void queryAccountsForName(String nameLike) {
        List<Account> accList = [SELECT Id, Name FROM Account WHERE Name LIKE :('%' + nameLike + '%')];
        System.debug('Accounts that contain ' + nameLike + ' : ');
        for(Account acc: accList){
            System.debug('Id: ' + acc.Id + ' Name: ' + acc.Name);
    }
}
}