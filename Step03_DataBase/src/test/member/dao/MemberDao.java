package test.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.member.dto.MemberDto;
import test.util.DbcpBean;

public class MemberDao {
	//1. 자신의 참조값을 담을 static 필드
	private static MemberDao dao;
	//2. 외부에서 객체 생성할수 없도록 생성자의 접근 지정자를 private  로
	private MemberDao() {}
	//3. 자신의 참조값을 리턴해주는 공개(public) static 메소드 정의
	public static MemberDao getInstance() {
		//최초 호출될때는 dao 필드는 null 이다
		if(dao==null) {
			dao=new MemberDao();//객체 생성해서 static 참조값을 필드에 저장
		}
		return dao; //static 필드에 있는 참조값 리턴해 주기 
	}
	
	//회원 전체 목록을 리턴하는 메소드
	public List<MemberDto> getList(){
		//회원목록을 담을 객체 생성
		List<MemberDto> list=new ArrayList<>();
		//필요한 객체를 담을 지역변수 만들기
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			//Connection 객체 (connection pool 로부터) 하나 가지고 오기 
			conn=new DbcpBean().getConn();
			String sql="SELECT num,name,addr FROM member"
					+ " ORDER BY num DESC";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				MemberDto dto=new MemberDto();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				//connection pool 에 반납하기 
				if(conn!=null)conn.close(); 
			}catch(Exception e) {}
		}
		return list;
	}
}















