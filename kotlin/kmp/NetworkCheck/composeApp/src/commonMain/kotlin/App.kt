import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.material.Icon
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Scaffold
import androidx.compose.material.Text
import androidx.compose.material.TopAppBar
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.rounded.ShoppingCart
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.plusmobileapps.konnectivity.Konnectivity
import org.jetbrains.compose.ui.tooling.preview.Preview

@Composable
@Preview
fun App() {
    MaterialTheme {
        HomeScreen()
    }
}

@Composable
fun HomeScreen() {

    val konnectivity = remember { Konnectivity() }
    val status by konnectivity.currentNetworkConnectionState.collectAsState()
    val isConnected by konnectivity.isConnectedState.collectAsState()

    Scaffold(topBar = {
        TopAppBar(
            title = {
                Text("Network Check")
            },
        )
    }, content = {
        Column(
            modifier = Modifier.fillMaxSize(),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {

            Icon(
                Icons.Rounded.ShoppingCart,
                contentDescription = "Network Check",
                modifier = Modifier
                    .height(80.dp)
                    .width(80.dp),
                tint = MaterialTheme.colors.primary
            )
            Text(
                text = status.name,
                fontSize = MaterialTheme.typography.h3.fontSize,
            )
            Text(
                text = isConnected.toString(),
                fontSize = MaterialTheme.typography.h1.fontSize,
                fontWeight = MaterialTheme.typography.subtitle1.fontWeight
            )
        }
    })
}