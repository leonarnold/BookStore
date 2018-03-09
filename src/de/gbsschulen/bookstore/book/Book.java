package de.gbsschulen.bookstore.book;

import javax.persistence.*;
import java.util.Objects;

@Entity
//@Table(name = "Buch")
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String isbn;
    private String titel;
    private String autor;

    public Book() {
    }

    public Book(String isbn, String titel, String autor) {
        this.isbn = isbn;
        this.titel = titel;
        this.autor = autor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitel() {
        return titel;
    }

    public void setTitel(String titel) {
        this.titel = titel;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Book book = (Book) o;
        return id == book.id &&
                Objects.equals(isbn, book.isbn) &&
                Objects.equals(titel, book.titel) &&
                Objects.equals(autor, book.autor);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, isbn, titel, autor);
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", isbn='" + isbn + '\'' +
                ", titel='" + titel + '\'' +
                ", autor='" + autor + '\'' +
                '}';
    }
}
