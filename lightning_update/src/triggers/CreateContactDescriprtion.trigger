trigger CreateContactDescriprtion on Contact (before insert) {
    For(Contact c:trigger.New){
       c.Description = 'Description entered by'+userinfo.getUserName();
    }
}