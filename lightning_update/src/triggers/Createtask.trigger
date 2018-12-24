trigger Createtask on Opportunity (after insert) {
    List<Task>tasklst = new List<Task>();
    for(Opportunity o:trigger.new){
      
        Task t = new Task();
        t.subject = 'new task';
        t.whatid = o.id;
        t.priority = 'High';
        tasklst.add(t);
    }
    insert tasklst;
}