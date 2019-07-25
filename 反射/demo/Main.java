import java.lang.reflect.Field;
import java.lang.reflect.Method;
public class Main{
	
	public static void main(String [] arg){
		

		try{
		Person son = new Son();
		Field file =son.getClass().getSuperclass().getDeclaredField("number");
		//  Field file =Person.class.getSuperclass().getDeclaredField("number");
		file.setAccessible(true);
		file.set(son, "100");
        System.out.println(son.getNumber());
		
		
		String number = (String)file.get(son);
		System.out.println("get"+son.getNumber());
		System.out.println("get"+son.getName());
		
			
	 Class<?> classF = Class.forName("Person");
	 Method method = classF.getMethod("getAge",String.class);
		
	System.out.println("method"+method.invoke(classF.newInstance(),"wo"));
		
		} catch (NoSuchFieldException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch(Exception e){
			
		}

		
	}
	
	
}