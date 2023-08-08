package com.manuelduarte077.androidmaster.firstapp

import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.AppCompatButton
import com.manuelduarte077.androidmaster.R

class FirstAppActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_first_app)

        val btnStart = findViewById<AppCompatButton>(R.id.btnStart)
        val etName = findViewById<AppCompatButton>(R.id.etName)

        btnStart.setOnClickListener {
            val name = etName.text.toString()

            if (name.isNotEmpty()) {
                val itent = Intent(this, ResultActivity::class.java)
                itent.putExtra("EXTRA_NAME", name)
                startActivity(itent)
            }

        }
    }
}