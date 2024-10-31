package dev.donmanuel.quizapp;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    // Vistas
    private TextView questionTextView;
    private TextView totalQuestionTextView;
    private Button ansA, ansB, ansC, ansD, btnSubmit;

    // Variables de estado
    private int score = 0;
    private int totalQuestion = QuestionAnswer.questions.length;
    private int currentQuestionIndex = 0;
    private String selectedAnswer = "";

    // Colores para retroalimentación
    private static final int DEFAULT_COLOR = Color.WHITE;
    private static final int SELECTED_COLOR = Color.YELLOW;
    private static final int CORRECT_COLOR = Color.GREEN;
    private static final int INCORRECT_COLOR = Color.RED;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Inicializar vistas
        totalQuestionTextView = findViewById(R.id.total_question);
        questionTextView = findViewById(R.id.question);
        ansA = findViewById(R.id.ans_a);
        ansB = findViewById(R.id.ans_b);
        ansC = findViewById(R.id.ans_c);
        ansD = findViewById(R.id.ans_d);
        btnSubmit = findViewById(R.id.btn_submit);

        // Asignar eventos de clic
        ansA.setOnClickListener(this);
        ansB.setOnClickListener(this);
        ansC.setOnClickListener(this);
        ansD.setOnClickListener(this);
        btnSubmit.setOnClickListener(this);

        // Mostrar la cantidad total de preguntas
        totalQuestionTextView.setText("Total questions: " + totalQuestion);

        // Cargar la primera pregunta
        loadNewQuestion();
    }

    /**
     * Carga una nueva pregunta y sus opciones en la UI.
     */
    private void loadNewQuestion() {
        if (currentQuestionIndex == totalQuestion) {
            finishQuiz();
            return;
        }

        // Configurar la nueva pregunta y sus opciones
        questionTextView.setText(QuestionAnswer.questions[currentQuestionIndex]);
        ansA.setText(QuestionAnswer.choices[currentQuestionIndex][0]);
        ansB.setText(QuestionAnswer.choices[currentQuestionIndex][1]);
        ansC.setText(QuestionAnswer.choices[currentQuestionIndex][2]);
        ansD.setText(QuestionAnswer.choices[currentQuestionIndex][3]);

        // Restablecer selección previa
        resetAnswerButtonColors();
        selectedAnswer = "";
    }

    /**
     * Termina el quiz mostrando una alerta con el puntaje final.
     */
    private void finishQuiz() {
        String passStatus = (score >= totalQuestion * 0.6) ? "Passed" : "Failed";

        new AlertDialog.Builder(this)
                .setTitle(passStatus)
                .setMessage("Your Score is " + score + " out of " + totalQuestion)
                .setPositiveButton("Restart", (dialog, i) -> restartQuiz())
                .setCancelable(false)
                .show();
    }

    /**
     * Reinicia el quiz, restableciendo las variables y cargando la primera pregunta.
     */
    private void restartQuiz() {
        score = 0;
        currentQuestionIndex = 0;
        loadNewQuestion();
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.btn_submit) {
            if (selectedAnswer.isEmpty()) {
                // Mostrar un mensaje de error si no se seleccionó una respuesta
                new AlertDialog.Builder(this)
                        .setTitle("Error")
                        .setMessage("Please select an answer before submitting!")
                        .setPositiveButton("OK", null)
                        .show();
                return;
            }

            // Verificar si la respuesta seleccionada es correcta
            if (selectedAnswer.equals(QuestionAnswer.correctAnswers[currentQuestionIndex])) {
                score++;
                setButtonColorByAnswer(selectedAnswer, CORRECT_COLOR);
            } else {
                setButtonColorByAnswer(selectedAnswer, INCORRECT_COLOR);
                setButtonColorByAnswer(QuestionAnswer.correctAnswers[currentQuestionIndex], CORRECT_COLOR);
            }

            // Avanzar a la siguiente pregunta
            currentQuestionIndex++;
            btnSubmit.postDelayed(this::loadNewQuestion, 1000); // Espera 1 segundo antes de cargar la siguiente pregunta
        } else {
            // Resaltar la respuesta seleccionada
            resetAnswerButtonColors();
            Button clickedButton = (Button) view;
            selectedAnswer = clickedButton.getText().toString();
            clickedButton.setBackgroundColor(SELECTED_COLOR);
        }
    }

    /**
     * Restablece los colores de los botones de respuestas a su color predeterminado.
     */
    private void resetAnswerButtonColors() {
        ansA.setBackgroundColor(DEFAULT_COLOR);
        ansB.setBackgroundColor(DEFAULT_COLOR);
        ansC.setBackgroundColor(DEFAULT_COLOR);
        ansD.setBackgroundColor(DEFAULT_COLOR);
    }

    /**
     * Establece el color de un botón basado en la respuesta.
     *
     * @param answer La respuesta para la que se debe encontrar el botón.
     * @param color  El color a aplicar al botón correspondiente.
     */
    private void setButtonColorByAnswer(String answer, int color) {
        if (ansA.getText().toString().equals(answer)) {
            ansA.setBackgroundColor(color);
        } else if (ansB.getText().toString().equals(answer)) {
            ansB.setBackgroundColor(color);
        } else if (ansC.getText().toString().equals(answer)) {
            ansC.setBackgroundColor(color);
        } else if (ansD.getText().toString().equals(answer)) {
            ansD.setBackgroundColor(color);
        }
    }
}