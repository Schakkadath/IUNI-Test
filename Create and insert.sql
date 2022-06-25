create table users (userID integer,Initials text, Fullname text)

create table User_answers (userID integer, answerID integer, Attempt integer, isCorrect boolean)

insert into users values(1001, 'XX', 'Harry Potter'), (1002, 'XX', 'Hermoine Granger'), (1003, 'XX', 'Ron Weasely')
						


insert into User_answers values(1001, 003, 1 , True), (1001, 004, 1, False), (1001, 005, 1, True)


insert into User_answers values(1002, 001, 1 , True), (1002, 002, 1, True), (1002, 003, 1, True),  (1002, 004, 1, True),   (1002, 005, 1, True)


insert into User_answers values(1003, 001, 1 , False), (1003, 002, 1, False), (1003, 003, 1, False), (1003, 004, 1, False), (1003, 005, 1, True)

