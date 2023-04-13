//
//  QuestionsData.swift
//  GameMillionaire
//


import Foundation

struct QuestionsData {
    
    let questions = [
        Question(question: "Какой головной убор был во время бала на Татьяне Лариной, героине романа «Евгений Онегин»?",
                 answers: ["Алый платок", "Синяя шляпа", "Малиновый берет", "Фата невесты"],
                 rightAnswer: 3, cash: 100),
        
        Question(question: " Какой продукт в разных странах называют папиной бородой и бабушкиными волосами?",
                 answers: ["Сахарная вата", "Рахат-Лукум", "Пахлава Гнездо", "Сырники"],
                 rightAnswer: 1, cash: 200),
        
        Question(question: "Какая из планет Солнечной системы самая горячая?",
                 answers: ["Меркурий", "Венера", "Марс", "Юпитер"],
                 rightAnswer: 2, cash: 300),
        
        Question(question: "Кем приходились друг другу толстый и тонкий из одноимённого рассказа Чехова: коллегами, братьями или одноклассниками?",
                 answers: ["Никем", "Коллеги", "Братья", "Одноклассники"],
                 rightAnswer: 4, cash: 500),
        
        Question(question: "Какое растение существует на самом деле?",
                 answers: ["Лох индийский", "Лох русский", "Лох чиллийский", "Лох сербский"],
                 rightAnswer: 1, cash: 1000),
        
        Question(question: "Что проводит боксер, наносящий удар противнику снизу?",
                 answers: ["Свинг", "Апперкот", "Хук", "Джэб"],
                 rightAnswer: 2, cash: 2000),
        
        Question(question: "Как называется ближайшая к Земле звезда?",
                 answers: ["Проксиома Центавра", "Сириус", "Полярная", "Солнце"],
                 rightAnswer: 4, cash: 4000),
        
        Question(question: "Женой какого поэта была дочь Дмитрия Ивановича Менделеева?",
                 answers: ["Игоря Северянина", "Андрея Белого", "Константина Бальмонта", "Александра Блока"],
                 rightAnswer: 4, cash: 8000),
        
        Question(question: "Сколько родных детей было в семье Ростовых в романе «Война и мир»??",
                 answers: ["Двое", "Шестеро", "Четверо", "Ни одного"],
                 rightAnswer: 3, cash: 16_000),
        
        Question(question: "Как назывались старинные русские пушки-гаубицы?",
                 answers: ["Кентавр", "Грифон", "Единорог", "Пантера"],
                 rightAnswer: 3, cash: 250_000),
        
        Question(question: "Что запрещал указ, который в 1726 году подписала Екатерина I?",
                 answers: ["Носить усы", "Брить ноги", "Бить в баклуши", "Пускать пыль в глаза"],
                 rightAnswer: 4, cash: 500_000),
        
        Question(question: "Какой писатель сформулировал три закона робототехники?",
                 answers: ["Курт Вонненгут", "Карел Чапек", "Станислав Лем ", "Айзек Азимов"],
                 rightAnswer: 4, cash: 1_000_000)
    ]

    func getQuestionCash(questionNumber: Int) -> Double {
        return questions[questionNumber].cash
    }

    func getRightAnswerIndex(questionNumber: Int) -> Int {
        return questions[questionNumber].rightAnswer - 1
    }
    
   
}
