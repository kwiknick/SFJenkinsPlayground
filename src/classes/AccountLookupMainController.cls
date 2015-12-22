public with sharing class AccountLookupMainController {

        public String accountName {get; set;}
        public Id accountId {get; set;}
        public List<Contact> contacts {get;set;}
        public String returnURL = '/apex/accountlookupmain';
        
        public PageReference findContacts()
        {
                if (null!=accountId)
                {
                   contacts=[select id,FirstName, LastName from Contact where AccountId=:accountId];
                }
                
                return null;
        }
        public PageReference editTheAccount() {
            
            System.debug('accountId' + accountId);
         PageReference editList = new PageReference('/' + accountId + '/e?retURL=/apex/accountlookupmain?saveURL=/apex/accountlookupmain?cancelURL=/apex/accountlookup');
            return editList;
        }
        public PageReference createNewAccount() {
            PageReference createNew = new PageReference('/001/e?saveURL=/apex/accountlookupmain?cancelURL=/apex/accountlookupmain?retURL=accountlookupmain');
            return createNew;
        }
        //public PageReference deleteTheAccount() {
            //delete account;
            //return PageReference ('/apex/accountlookupmain');
        //}
}