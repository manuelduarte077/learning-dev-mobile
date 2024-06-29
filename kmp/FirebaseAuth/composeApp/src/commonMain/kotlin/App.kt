import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.material.Button
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Scaffold
import androidx.compose.material.TextField
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import dev.gitlive.firebase.Firebase
import dev.gitlive.firebase.auth.FirebaseUser
import dev.gitlive.firebase.auth.auth
import kotlinx.coroutines.launch
import org.jetbrains.compose.ui.tooling.preview.Preview

@Composable
@Preview
fun App() {
	MaterialTheme {
		AuthScreen()
	}
}


@Composable
fun AuthScreen() {

	val scope = rememberCoroutineScope()
	val auth = remember { Firebase.auth }
	var firebaseUser: FirebaseUser? by remember { mutableStateOf(null) }
	var userEmail by remember { mutableStateOf("") }
	var userPassword by remember { mutableStateOf("") }

	Scaffold {
		if (firebaseUser == null) {
			Column(
				modifier = Modifier.fillMaxSize(),
				verticalArrangement = Arrangement.Center,
				horizontalAlignment = Alignment.CenterHorizontally
			) {
				TextField(
					value = userEmail,
					onValueChange = { userEmail = it },
					label = { Text("Email") },
				)
				Spacer(modifier = Modifier.height(16.dp))
				TextField(
					value = userPassword,
					onValueChange = { userPassword = it },
					label = { Text("Password") },
				)

				Spacer(modifier = Modifier.height(16.dp))
				Button(
					onClick = {
						scope.launch {
							try {
								auth.createUserWithEmailAndPassword(userEmail, userPassword)
							} catch (e: Exception) {
								auth.signInWithEmailAndPassword(userEmail, userPassword)
							}
						}
					},
					enabled = userEmail.isNotEmpty() && userPassword.isNotEmpty()
				) {
					Text("Sign In")
				}
			}
		} else {
			Column(
				modifier = Modifier.fillMaxSize(),
				verticalArrangement = Arrangement.Center,
				horizontalAlignment = Alignment.CenterHorizontally
			) {
				Text(text = firebaseUser?.uid ?: "Unknown ID")
				Spacer(modifier = Modifier.height(24.dp))
				Button(
					onClick = {
						scope.launch {
							auth.signOut()
							firebaseUser = auth.currentUser
						}
					}
				) {
					Text(text = "Sign out")
				}
			}
		}
	}
}

