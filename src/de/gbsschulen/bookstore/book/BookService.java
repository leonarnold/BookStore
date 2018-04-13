package de.gbsschulen.bookstore.book;

import de.gbsschulen.bookstore.login.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;

public class BookService {

    private EntityManagerFactory entityManagerFactory;
    private EntityManager entityManager;

    public BookService(){
        entityManagerFactory = Persistence.createEntityManagerFactory("bookstore");
        entityManager = entityManagerFactory.createEntityManager();
    }

    public void save(Book book){
        entityManager.getTransaction().begin();
        entityManager.persist(book);
        entityManager.getTransaction().commit();
    }

    public List<Book> readAllBooks(){
        TypedQuery<Book> query = entityManager.createQuery("SELECT b from Book b", Book.class);
        return query.getResultList();
    }

    public List<Book> readBooksFromAuthor(String author){
        TypedQuery<Book> query = entityManager.createQuery("SELECT b from Book b WHERE b.autor=:author", Book.class);
        query.setParameter("author", author);
        return query.getResultList();
    }

    public void close(){
        if(entityManager != null){
            entityManager.close();
        }
        if(entityManagerFactory != null){
            entityManagerFactory.close();
        }
    }

    public Book findBook(int id) {
        return entityManager.find(Book.class, id);
    }

    public void deleteBook(int id) {
        entityManager.getTransaction().begin();
        entityManager.remove(findBook(id));
        entityManager.getTransaction().commit();
    }

    public List<String> readAllAuthors(){
        TypedQuery<String> query = entityManager.createQuery("SELECT DISTINCT b.autor from Book b", String.class);
        return query.getResultList();
    }

    public static void main(String[] args) {
        System.out.println("Hallo Welt!");
//        Book book = new Book("234", "Effective Java", "Joshua Bloch");
//        Book book2 = new Book("543", "Java für Anfänger", "Maier");
//        Book book3 = new Book("567", "Java für Fortgeschrittene", "Maier");
        BookService bookService = new BookService();
//        bookService.save(book);
//        bookService.save(book2);
//        bookService.save(book3);
        List<Book> books = bookService.readAllBooks();
        for (Book book : books) {
            System.out.println(book);
        }
        for (Book book : bookService.readBooksFromAuthor("Maier")) {
            System.out.println(book);
        }
        List<String> strings = bookService.readAllAuthors();
        for (String string : strings) {
            System.out.println(string);
        }
        bookService.close();
    }
}
