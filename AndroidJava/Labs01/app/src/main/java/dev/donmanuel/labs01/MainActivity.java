package dev.donmanuel.labs01;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class MainActivity extends AppCompatActivity {

    EditText textOne, textTwo;
    TextView txtResult;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });

        textOne = findViewById(R.id.textOne);
        textTwo = findViewById(R.id.textTwo);
        txtResult = findViewById(R.id.txtResult);
    }

    public void showToast(View text) {
        Toast.makeText(this, "Hello, World!", Toast.LENGTH_LONG).show();
    }

    public void sumar(View view) {
        String strNum1 = textOne.getText().toString();
        String strNum2 = textTwo.getText().toString();

        if (strNum1.isEmpty() || strNum2.isEmpty()) {
            Toast.makeText(this, "Please enter two numbers", Toast.LENGTH_LONG).show();
            return;
        }

        int num1 = Integer.parseInt(strNum1);
        int num2 = Integer.parseInt(strNum2);

        int result = num1 + num2;

        txtResult.setText("Result: " + result);
    }
}