create table users (
    id int not null auto_increment,
    usr_id varchar(15) not null,
    usr_password varchar(20) not null,
    usr_name varchar(15) not null,
    profile_link varchar(200) not null,
    profile_message varchar(60) not null,
    withdrawal tinyint(1) default 0,
    subsription_date datetime not null,
    primary key (id)
)engine=innoDB default charset=utf8;

create table channels (
    id int not null auto_increment,
    usr_name varchar(20) not null,
    channel_usr int not null,
    channel_link varchar(200) not null,
    max_people int not null,
    withdrawal tinyint(1) default 0,
    creation_date datetime not null,
    primary key (id),
    foreign key (channel_usr) references users(id) on delete cascade
)engine=innoDB default charset=utf8;

create table chats (
    id int not null auto_increment,
    content text not null,
    writer int not null,
    channel int not null,
    creation_date datetime not null,
    primary key (id),
    foreign key (writer) references users(id) on delete cascade,
    foreign key (channel) references channels(id) on delete cascade
)engine=innoDB default charset=utf8;

create table follows (
    id int not null auto_increment,
    follower int not null,
    followee int not null,
    follow_date datetime not null,
    primary key (id),
    foreign key (follower) references users(id) on delete cascade,
    foreign key (followee) references users(id) on delete cascade
)engine=innoDB default charset=utf8;

create table blocks (
    id int not null auto_increment,
    block_usr int not null,
    blocked_usr int not null,
    block_date datetime not null,
    primary key (id),
    foreign key (block_usr) references users(id) on delete cascade,
    foreign key (blocked_usr) references users(id) on delete cascade
)engine=innoDB default charset=utf8;