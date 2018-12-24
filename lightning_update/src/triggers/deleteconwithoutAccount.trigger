trigger deleteconwithoutAccount on Contact (before delete) {
    for(Contact c:Trigger.old){
        If(c.AccountId == Null){
            c.addError('Contact Can not be deleted');
        }
    }
}