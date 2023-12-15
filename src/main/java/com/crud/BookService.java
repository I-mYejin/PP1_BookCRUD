package com.crud;

import com.crud.bean.BookVO;
import com.crud.dao.BookDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookService {

    @Autowired
    BookDAO bookDAO;

    public int deleteBook(int seq) {
        return bookDAO.deleteBook(seq);
    }
    public int updateBook(BookVO vo) {
        return bookDAO.updateBook(vo);
    }

    public int insertBook(BookVO vo){
        return bookDAO.insertBook(vo);
    }
    public List<BookVO> getBookList() {
        return bookDAO.getBookList();
    }
    public BookVO getBook(int seq){
        return bookDAO.getBook(seq);
    }
}
