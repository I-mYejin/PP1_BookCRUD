package com.crud.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.crud.bean.BookVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDAO {

	@Autowired
	SqlSession sqlSession;

	public int insertBook(BookVO vo) {
		int result = sqlSession.insert("Book.insertBook",vo);
		return result;
	}

	public int deleteBook(int seq) {
		int result = sqlSession.delete("Book.deleteBook",seq);
		return result;
	}
	public int updateBook(BookVO vo) {
		int result = sqlSession.update("Book.updateBook", vo);
		return result;
	}

    class BookRowMapper implements RowMapper<BookVO> {
		@Override
		public BookVO mapRow(ResultSet rs, int rowNum) throws SQLException{
			BookVO vo = new BookVO();
			vo.setSeq(rs.getInt("seq"));
			vo.setTitle(rs.getString("title"));
			vo.setPublish(rs.getString("publish"));
			vo.setState(rs.getString("state"));
			vo.setPrice(rs.getInt("price"));
			vo.setContent(rs.getString("content"));
			vo.setWriter(rs.getString("writer"));
			vo.setCategory(rs.getString("category"));
			vo.setRegdate(rs.getDate("regdate"));
			return vo;
		}
	}

	public BookVO getBook(int seq) {
		BookVO one = sqlSession.selectOne("Book.getBook", seq);
		return one;
	}

	public List<BookVO> getBookList(){
		List<BookVO> list = sqlSession.selectList("Book.getBookList");
		return list;
	}
}
