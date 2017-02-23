public class acctcontroller {

    public PageReference getDosimething() {
        results=(list<Case>)[FIND : thetext returning Case(Support_Engineer__c)][0];
       return null;
    }

string thetext;
list<Case> results;

    public list<Case> getResult() {
        return results;
    }


    public PageReference dosimething() {
        results=(list<Case>)[FIND : thetext returning Case(Support_Engineer__c)][0];
       return null;
    }


    public String getSearchtext() {
        return null;
    }
    public void setSearchtext(string str) {
           thetext=str;
    }

}