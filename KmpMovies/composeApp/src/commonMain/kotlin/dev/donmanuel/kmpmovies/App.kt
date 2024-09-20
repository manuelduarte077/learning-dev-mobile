package dev.donmanuel.kmpmovies

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.unit.dp
import coil3.ImageLoader
import coil3.annotation.ExperimentalCoilApi
import coil3.compose.AsyncImage
import coil3.compose.setSingletonImageLoaderFactory
import coil3.request.crossfade
import coil3.util.DebugLogger
import kmpmovies.composeapp.generated.resources.Res
import kmpmovies.composeapp.generated.resources.app_name
import org.jetbrains.compose.resources.stringResource
import org.jetbrains.compose.ui.tooling.preview.Preview

@OptIn(ExperimentalCoilApi::class, ExperimentalMaterial3Api::class)
@Composable
@Preview
fun App() {
	MaterialTheme {

		setSingletonImageLoaderFactory { context ->
			ImageLoader.Builder(context)
				.crossfade(true)
				.logger(DebugLogger())
				.build()
		}

		Surface(modifier = Modifier.fillMaxHeight()) {
			Scaffold(
				topBar = {
					TopAppBar(
						title = { Text(stringResource(Res.string.app_name)) }
					)
				}
			) { padding ->
				LazyVerticalGrid(
					columns = GridCells.Adaptive(128.dp),
					contentPadding = PaddingValues(16.dp),
					horizontalArrangement = Arrangement.spacedBy(4.dp),
					verticalArrangement = Arrangement.spacedBy(4.dp),
					modifier = Modifier.padding(padding)
				) {
					items(movies, key = { it.id }) { movie ->
						MovieCard(movie = movie)
					}
				}
			}
		}

	}
}


@Composable
fun MovieCard(movie: Movie) {
	Column {
		AsyncImage(
			model = movie.poster,
			contentDescription = movie.title,
			contentScale = ContentScale.Crop,
			modifier = Modifier
				.fillMaxWidth()
				.aspectRatio(2 / 3f)
				.clip(MaterialTheme.shapes.small)
				.background(MaterialTheme.colorScheme.primaryContainer)
		)

		Column {
			Text(
				text = movie.title,
				style = MaterialTheme.typography.bodySmall,
				maxLines = 1,
				modifier = Modifier.padding(12.dp)
			)
		}
	}
}
