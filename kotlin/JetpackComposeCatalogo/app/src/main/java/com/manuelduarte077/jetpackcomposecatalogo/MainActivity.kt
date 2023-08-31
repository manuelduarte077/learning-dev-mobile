package com.manuelduarte077.jetpackcomposecatalogo

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.manuelduarte077.jetpackcomposecatalogo.catalog.MyTextFieldOutline
import com.manuelduarte077.jetpackcomposecatalogo.ui.theme.JetpackComposeCatalogoTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            JetpackComposeCatalogoTheme {
                // A surface container using the 'background' color from the theme
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    Column {

                        var myText by remember {
                            mutableStateOf("Manuel")
                        }
                        MyTextFieldOutline(
                            name = myText,
                            onValueChange = {
                                myText = it
                            }
                        )
                    }
                }
            }
        }
    }
}

@Composable
fun MyStateExample() {
    var counter by rememberSaveable { ///
        mutableStateOf(0)
    }

    Column(
        Modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Button(onClick = { counter += 1 }) {
            Text(text = "Click")
        }
        Text(text = "He sido pulsado $counter veces")
    }

}


@Composable
fun MyComplexLayout() {
    Column(Modifier.fillMaxSize()) {
        Box(
            Modifier
                .fillMaxWidth()
                .weight(1f)
                .background(Color.Cyan)
        ) {

        }
        MySpacer(size = 30)
        Row(
            Modifier
                .fillMaxWidth()
                .weight(1f),
        ) {
            Box(
                Modifier
                    .fillMaxHeight()
                    .weight(1f)
                    .background(Color.Red),
                contentAlignment = Alignment.Center
            ) {
                Text(text = "Hola", color = Color.White)
            }
            Box(
                Modifier
                    .fillMaxHeight()
                    .weight(1f)
                    .background(Color.Yellow),
                contentAlignment = Alignment.Center
            ) {
                Text(text = "Hola soy Manuel")
            }
        }
        MySpacer(size = 30)
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .weight(1f)
                .background(Color.Green)
        ) {

        }
    }
}

@Composable
fun MySpacer(size: Int) {
    Spacer(
        modifier = Modifier.height(size.dp)
    )
}

@Preview(showBackground = true)
@Composable
fun GreetingPreview() {
    JetpackComposeCatalogoTheme {
        MyStateExample()
    }
}