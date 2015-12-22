public with sharing class AccountEditController {

    private ApexPages.StandardController controller {get; set;}
    public List<Account> searchResults {get; set;}
    public string searchText {get; set;}
    
    public AccountEditController(ApexPages.StandardController controller) {}
    
    // fired when the search button is clicked
    public PageReference search() {
        String qry = 'SELECT id, name FROM Account '+'WHERE name LIKE \'%'+searchText+'%\' ORDER BY name';
        searchResults = Database.query(qry);
        return null;
    }
    
    //fired when the save records button is clicked
    public PageReference save() {
        
        try{
            update searchResults;
        } Catch (DMLException e) {
            ApexPages.addMessages(e);
            return null;
        }
        
        return new PageReference('/'+ApexPages.currentPage().getParameters().get('id'));
    }
    
    // takes user back to main record
    public PageReference cancel() {
        return new PageReference('/'+ApexPages.currentPage().getParameters().get('id'));
    }
}