package dev.donmanuel.quizapp;


public class QuestionAnswer {

    // Arreglo de preguntas
    public static String[] questions = {
            "What is 10 + 26?",
            "Who invented the telephone?",
            "What is 12 * 9?",
            "Who is the founder of SpaceX?",
            "Which of the following is an example of system software?"
    };

    // Arreglo de opciones para cada pregunta
    public static String[][] choices = {
            {"32", "42", "36", "38"},
            {"Alexander Graham Bell", "Albert Einstein", "Thomas Edison", "None of the above"},
            {"96", "84", "102", "108"},
            {"Jeff Bezos", "Elon Musk", "Steve Jobs", "Bill Gates"},
            {"Windows", "Linux", "macOS", "All of the above"}
    };

    // Respuestas correctas
    public static String[] correctAnswers = {
            "36",
            "Alexander Graham Bell",
            "108",
            "Elon Musk",
            "All of the above"
    };
}