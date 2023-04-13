package com.mattmoldovan.booksapi.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.mattmoldovan.booksapi.models.Book;
import com.mattmoldovan.booksapi.services.BookService;

@Controller
public class RoutesController {

	@Autowired
	private BookService bookService;
	
	@GetMapping("/books")
	public String dashboard(Model model)	{
		List<Book> bookList = bookService.allBooks();
		model.addAttribute("bookList", bookList);
		return "dashboard.jsp";
				
	}
	
	@GetMapping("/books/{id}")
	public String bookDetails(@PathVariable("id")Long id, Model model) {
		Book oneBook = bookService.findBook(id);
		model.addAttribute("oneBook", oneBook);
		return "details.jsp";
	}
}
