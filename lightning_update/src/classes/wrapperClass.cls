public class wrapperClass {
public string name;
public Integer Age;
public innerclass inc;
    public wrapperClass(String name,Integer Age,string sex){
        this.name = name;
        this.Age = Age;
    inc = new innerclass();
        inc.sex = sex;
    }
    public class innerclass{
       public String sex;
        public integer exp;
        
       
    }    
}