package io.manuelduarte077.movieinformation

import android.annotation.SuppressLint
import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.android.volley.toolbox.JsonObjectRequest
import com.android.volley.toolbox.Volley
import com.bumptech.glide.Glide
import io.manuelduarte077.movieinformation.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding

    val TOKEN = "API_KEY"

    @SuppressLint("SetTextI18n")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        /// init views
        binding.apply {
            btnSearch.setOnClickListener {
                // validate if the input is empty
                if (etSearch.text.toString().isEmpty()) {
                    Toast.makeText(
                        this@MainActivity, "Please enter a movie name", Toast.LENGTH_SHORT
                    ).show()
                } else {
                    // request the movie information
                    cardView.visibility = View.INVISIBLE
                    val queue = Volley.newRequestQueue(this@MainActivity)
                    val url =
                        "http://www.omdbapi.com/?apikey=" + TOKEN + "&t=" + etSearch.text.toString()

                    print(url)

                    val jsonObjectRequest = JsonObjectRequest(url, { response ->
                        cardView.visibility = View.VISIBLE
                        val title = response.getString("Title")
                        val plot = response.getString("Plot")
                        val poster = response.getString("Poster")

                        /// set data
                        Glide.with(this@MainActivity).load(poster).into(movieCover)

                        movieTitle.text = title.toString()
                        movieDescription.text = plot.toString()

                    }, { error ->
                        cardView.visibility = View.INVISIBLE
                        Toast.makeText(
                            this@MainActivity,
                            "error is: " + error.message.toString(),
                            Toast.LENGTH_SHORT
                        ).show()

                    })
                    queue.add(jsonObjectRequest)

                    showMore.setOnClickListener {
                        Toast.makeText(
                            this@MainActivity, "Show more", Toast.LENGTH_SHORT
                        ).show()
                    }
                }
            }
        }
    }
}