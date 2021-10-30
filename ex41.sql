create table students (
    id int not null auto_increment,
    student_name varchar(20) not null,
    student_id_number int not null,
    department int not null,
    admission int not null,
    phone_number varchar(20) not null,
    student_address varchar(25) not null,
    accumulated_credits int default 0,
    average_grade tinyint(1) not null,
    enrollment tinyint(1) default 1,
    primary key (id)
)engine=innoDB default charset=utf8;
