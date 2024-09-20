package dev.donmanuel.kmpmovies
import kotlin.random.Random

data class Movie(
	val id: Int,
	val title: String,
	val year: Int,
	val rating: Double,
	val poster: String,
	val genre: String
)


val movies = (1..100).map { it ->
	Movie(
		id = it,
		title = "Movie $it",
		year = 2021,
		rating = 7.5,
		poster = "https://picsum.photos/200/300?random=$it",
		genre = Random.nextBoolean().let { if (it) "Action" else "Comedy" }
	)
}
