<?php

class Quiz {

    private $quiz;

    public function __construct($quizDb) {
    $this->quiz = new Quiz($quizDb);
    }

    public function getQuiz($quizName) {
        $this->quiz->getQuiz($quizName);
    }
}

