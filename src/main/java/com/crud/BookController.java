package com.crud;

import com.crud.bean.BookVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    BookService bookService;

    @GetMapping("/post")
    public String bookList(Model model){
        List<BookVO> bookVOList = bookService.getBookList();
        model.addAttribute("list", bookVOList);
        return "posts";
    }
    public String list(){
        return "index";
    }
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost(){
        return "addpostform";
    }

    @RequestMapping(value = "/addok", method = RequestMethod.POST)
    public String addPost(BookVO vo){
        if(bookService.insertBook(vo)==0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공 !!!!");
        return "redirect:post";
    }

    @RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model){
        BookVO bookVO = bookService.getBook(id);
        model.addAttribute("u", bookVO);
        return "editform";
    }
    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editPostOK(BookVO vo){
        if(bookService.updateBook(vo)==0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 추가 수정 !!!!");
        return "redirect:post";
    }

    @RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
    public String deletePostOk(@PathVariable("id") int id){
        if(bookService.deleteBook(id)==0)
            System.out.println("데이터 삭제 실패");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../post";
    }
    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public String viewPost(@PathVariable("id") int id, Model model){
        BookVO bookVO = bookService.getBook(id);
        model.addAttribute("u", bookVO);
        return "view";
    }
}
