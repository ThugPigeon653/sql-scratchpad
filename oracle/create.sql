create table writer(
    writerid number,
    writername varchar2(20),
    writeraddress varchar2(20),
    country varchar2(20),
    primary key(writerid)
)

create table agent(
    agentid number(3),
    agentname varchar2(26),
    agentaddress varchar2(32),
    agentcontact varchar2(20),
    writerid number(3),
    primary key(agentid),
    foreign key (writerid) references writer(writerid)
)

create table editor(
    editorid number,
    editorname varchar2(20),
    editorcontact varchar(30),
    foreignlang varchar2(20),
    mentoredby number,
    primary key(editorid),
    foreign key(mentoredby) references editor(editorid)
)

create table book(
    bookid number,
    title varchar2(20),
    numberpages number,
    releasedate date,
    genre varchar2(20),
    editorid number,
    primary key(bookid),
    foreign key (editorid)  references editor(editorid)
)

create table writes(
    writerid number,
    bookid number,
    primary key(writerid, bookid),
    foreign key(writerid) references writer(writerid),
    foreign key(bookid) references book(bookid)
)

create table printed(
    bookid number,
    numberofcopies number,
    printedprice number,
    primary key(bookid),
    foreign key (bookid) references book(bookid)
)

create table "e-book"(
    bookid number,
    primary key(bookid),
    
)