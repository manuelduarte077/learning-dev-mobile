package com.example.quotesapp

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.quotesapp.ui.theme.QuotesappTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            QuotesappTheme {
                Column(
                    modifier = Modifier.fillMaxSize(),
                ) {
                    Header()
                    QuotesCard()
                }
            }
        }
    }
}


@Composable
fun Header() {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 40.dp, horizontal = 20.dp),

        ) {
        Text(
            text = "Quotes", style = TextStyle(
                color = Color(0xFF4d5489), fontWeight = FontWeight.Bold, fontSize = 28.sp
            )
        )

        Text(
            text = "Get inspired by the best quotes", style = TextStyle(
                color = Color(0xFF4d5489), fontWeight = FontWeight.Normal, fontSize = 16.sp
            )
        )
    }
}


@Composable
fun QuotesCard() {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(20.dp)
            .clip(
                shape = RoundedCornerShape(22.dp)
            )
            .background(Color(0xFF4d5489))
    ) {
        Text(
            text = "Quote", modifier = Modifier.padding(
                start = 20.dp, top = 20.dp, bottom = 0.dp
            ), style = TextStyle(
                color = Color(0xFFf5f5f5), fontWeight = FontWeight.Bold, fontSize = 20.sp
            )
        )

        Text(
            text = "Author", modifier =

            Modifier
                .fillMaxWidth()
                .padding(
                    start = 20.dp, bottom = 20.dp, end = 20.dp
                ),
            style = TextStyle(
                color = Color(0xFFf5f5f5),
                fontWeight = FontWeight.Normal,
                fontSize = 16.sp,
                textAlign = TextAlign.End
            )

        )


    }

}

@Preview(showBackground = true)
@Composable
fun GreetingPreview() {
    QuotesappTheme {
        Column(
            modifier = Modifier.fillMaxSize(),
        ) {
            Header()
            QuotesCard()
        }
    }
}