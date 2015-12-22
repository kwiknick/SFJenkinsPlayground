public with sharing class LookupExampleController {

    public LookupExampleController(ApexPages.StandardController controller) {

    }

    public Account acct {get; set;}
    public LookupExampleController() {
        Account acct = new Account();
    }
}