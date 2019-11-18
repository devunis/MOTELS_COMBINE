### MOTELS_COMBINE
### 웹서버

* 10/6 - tomcat & library 
          (tomcat folder, lib folder in tomcat folder)

* 10/7 - Session Completed!
  
    
    create table member
    (
        no       int auto_increment
    primary key,
        email    varchar(30) not null,
        pw       varchar(30) not null,
        name     varchar(30) not null,
        tel      varchar(30) not null,
        location varchar(30) not null
    );
    
    create table board (
        no       int primary key auto_increment,
        title    varchar(50) not null,
        author   varchar(30) not null,
        pw       varchar(30) not null,
        date     varchar(30) not null,
        contents varchar(500) not null,
        readcnt  int         not null,
        ref      int         not null,
        ref_step int         not null

    )
 
    create table reply (
        no int primary key auto_increment not null ,
        ref int not null ,
        author varchar(30) not null ,
        pw varchar(30) not null ,
        content varchar(300) not null,
        date varchar(20) not null
    );
    
    create table booking
    (
        no           int auto_increment
            primary key,
        img          text        null,
        name         varchar(30) null,
        info         varchar(30) null,
        price        varchar(30) null,
        checkin      varchar(30) null,
        checkout     varchar(30) null,
        adults       int         null,
        kids         int         null,
        rooms        int         null,
        id           varchar(30) null,
        reserve_date varchar(30) null
    );