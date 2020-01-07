package test.todo.dao;
/*
 *  Application 전역에서 오직 한개의 객체만 생성되어서 사용되는 구조로 
 *  Dao 클래스 설계하기
 *  
 *  1. 외부에서 객체 생성할수 없도록 생성자의 접근 지정자를 private 로 지정 
 *  2. 자신의 참조값을 담을 static 필드 선언
 *  3. 자신의 참조값을 리턴해주는 public static 메소드 제공
 */
public class TodoDao {
	//2. 
	private static TodoDao dao;
	//1. 
	private TodoDao() {}
	//3.
	public static TodoDao getInstance() {
		if(dao==null) {// 최초 호출 될때는 null 이다. 
			//null 이면 객체를 생성해서 static 참조값을 필드에 저장한다.
			dao=new TodoDao();
		}
		return dao;
	}
}









