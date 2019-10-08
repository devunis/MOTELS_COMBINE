package model.board;

public class BoardBean {
    private int no;
    private String title;
    private String author;
    private String pw;
    private String date;
    private String contents;
    private int readcnt;
    private int ref;
    private int ref_step;

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public int getReadcnt() {
        return readcnt;
    }

    public void setReadcnt(int readcnt) {
        this.readcnt = readcnt;
    }

    public int getRef() {
        return ref;
    }

    public void setRef(int ref) {
        this.ref = ref;
    }

    public int getRef_step() {
        return ref_step;
    }

    public void setRef_step(int ref_step) {
        this.ref_step = ref_step;
    }

    @Override
    public String toString() {
        return "BoardBean{" +
                "no=" + no +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", date='" + date + '\'' +
                ", contents='" + contents + '\'' +
                ", readcnt=" + readcnt +
                ", ref=" + ref +
                ", ref_step=" + ref_step +
                '}';
    }
}
