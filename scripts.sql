insert into users (
	id, 
	name, 
	email, 
	password,
	age 
) values (
	'ec87416d-dfac-4d9f-9f7c-7f09a6bb0538', 
	'miguel', 
	'miguelrios02@utp.edu.co', 
	'root',
	'27'
),(
	'9044d7ca-db89-4ece-9b3f-bca09878a96f', 
	'andres', 
	'andres@gmail.com', 
	'dutg',
	'25'
),(
	'1f801523-ea02-4530-ad5b-f0a3802f04fa', 
	'estefania', 
	'tefa@gmail.com', 
	'tefita',
	'20'
);
insert into levels ( 
	level
) values (
	'beginner'
),(
	'middle'
),(
	'advanced'
);

insert into courses(
	title,
	description,
	level,
	teacher
)values (
    'javaScript',
    'programacion basica en javaScript',
    '1',
    'mateo'
),(
    'react.js',
    'programacion de hoots en react.js',
    '2',
    'carlos'
),(
    'html',
    'programacion basica de html',
    '1',
    'andrea'
);

insert into curse_video(
	title,
	url,
	curso_id
)values (
	'javaScript',
	'https://javaScript/',
	'1'
),(
	'react.js',
	'https://react.js/',
	'2'
),(
	'html',
	'https://html/',
	'3'
);

insert into categories(
	name
) values(
	'programming language'
),(
	'library'
);


insert into videos_categorias(
	categories_id,
	curse_video_id
) values(
	'1',
	'1'
),(
	'2',
	'2'
),(
	'1',
	'3'
);




