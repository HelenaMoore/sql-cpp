create table if not exists genre (
	genre_id integer primary key,
	genre_description varchar(50) not null
);

create table if not exists artist (
	artist_id integer primary key,
	artist_name varchar(100) not null
);

create table if not exists genre_artist (
	genre_id integer references genre(genre_id),
	artist_id integer references artist(artist_id),
	primary key(genre_id, artist_id)
);

create table if not exists album (
	album_id integer primary key,
	album_title varchar(100) not null,
	release_year integer
);

create table if not exists artist_album (
	artist_id integer references artist(artist_id),
	album_id integer references album(album_id),
	primary key(artist_id, album_id)
);

create table if not exists track (
	track_id integer primary key,
	album_id integer references album(album_id),
	track_title varchar(100) not null,
	track_duration integer check(track_duration > 0)
);

create table if not exists collection (
	collection_id integer primary key,
	collection_title varchar(100) not null,
	release_year integer
);

create table if not exists track_collection (
	track_id integer references track(track_id),
	collection_id integer references collection(collection_id),
	primary key(track_id, collection_id)
)
