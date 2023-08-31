package com.manuelduarte077.jetpackcomposecatalogo.catalog

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextDecoration
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp


@Composable
fun MyText() {
    Column(Modifier.fillMaxSize()) {
        Text(text = "Hello World!")
        Text(text = "Hello World!", color = Color.Blue)
        Text(text = "Hello World!", fontWeight = FontWeight.Bold)
        Text(text = "Hello World!", fontWeight = FontWeight.Light)
        Text(text = "Hello World!", style = TextStyle(fontFamily = FontFamily.Cursive))
        Text(
            text = "Hello World!", style = TextStyle(
                textDecoration = TextDecoration.LineThrough

            )
        )
        Text(
            text = "Hello World!", style = TextStyle(
                textDecoration = TextDecoration.combine(
                    listOf(
                        TextDecoration.LineThrough, TextDecoration.Underline
                    )
                )

            )
        )
        Text(text = "Hello World!", fontSize = 30.sp)

    }
}


@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MyTextField() {

    var myText by remember {
        mutableStateOf("")
    }

    TextField(value = myText, onValueChange = { myText = it })
}


@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MyTextFieldAdvance() {

    var myText by remember {
        mutableStateOf("")
    }

    TextField(
        value = myText,
        onValueChange = {
            myText = if (it.contains("a")) {
                it.replace("a", "")
            } else {
                it
            }
        },
        label = { Text("Name") }
    )
}


@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MyTextFieldOutline(name: String, onValueChange: (String) -> Unit) {


    OutlinedTextField(
        value = name,
        onValueChange = {onValueChange(it)},
        modifier = Modifier.padding(24.dp),
        label = { Text("Name") }
    )
}


@Composable
@Preview
fun MyTextPreview() {
    MyTextFieldOutline(
        name = "Manuel",
        onValueChange = {
            if (it.contains("a")) {
                it.replace("a", "")
            } else {
                it
            }
        }
    )
}