import UIKit
import Foundation
//enum MyEmotion {
//    case sad
//    case happy
//    case angry
//    case sleepy //perevaghno ))
//    case suprised
//}
// не реалізовую так як невстигаю але запланував добавити енами щоб мати обмежені варіанти настролю + емоджi
class MyDiary {
    var date = Date()

    var title: String? {
        didSet {
            if title != nil {
            print("Title = \(title!)")
            }else{
                print("Title Empty =C")
            }
    }
}
    var text:String? {
        didSet {
            if text != nil {
                print("Text = \(text!)")
            }else{
                print("Text empty =C")
            }
        }
    }
    var tags: [String]? {
        didSet {
            if tags != nil {
                print("[tags] = \(tags!) ")
            }else{
                print("tags empty =(")
            }
        }
    }

    init(title: String?, text: String?, tags: [String]?)
    {
        self.title = title
        self.text = text
        self.tags = tags
       
    }
    
    
    convenience init(text: String?)
    {
        self.init(title: nil, text: text, tags: nil)
    }
    func description() -> String //цю функ я тупо зкопіпастив
    {
        var result = """
        Date: \(self.date)
        """
        
        if let i = self.title  //Value 'i' was defined but never used; consider replacing with boolean test
        {
            result += """
            \(self.title ?? "")
            """
        }
        
        if let i = self.tags
        {
            for tag in i
            {
                result += " [\(tag)]"
            }
            
        }
        
        if let j = self.text //Value 'j' was defined but never used; consider replacing with boolean test
        {
            result += """
            \(self.text ?? "")
            """
        }
        return result
    }

    
    }
    
//Cєрий, прасті засранца ☹️
// doma dorobly


/* - дата створення, типу Date, встановлюється при створенні запису і ніколи не змінюється;
 - назва, типу String, може бути відсутня;
 - текст, типу String, може бути відсутній;
 - теги, може бути декілька, може не бути жодного, кожен з тегів - String;
 - функція description(), повертає String, який містить вищезгадані властивості разом та відформатовано таким чином, що кожна властивість на окремому рядку, а кожен з тегів в квадратних дужках, наприклад:
 “14 вересня 2015
 Сніданок [сумно] [дощ] [кава]
 П’ю каву,зимно і сумно,бо вже осінь.“
 Зауважте, що якщо властивість відсутня в об’єкту, то вона не має бути присутня в цьому рядку. Наприклад, без назви, без тегів, лише дата й текст:
 “15 вересня 2015 Вивчаю Swift.”
 3. Створити один основний та один допоміжний ініціалізатори, зробити один з них таким що може не створити об’єкт, наприклад коли дата невалідна;
 4. Додати автоматичне виведення в лог інформації при зміні будь якого з полів обєкту (інформація повинна бути повязана з зміною, та інформативною для майбутнього нового програміста)
 5. Створити в Playground декілька об’єктів цього класу, з різними даними та ініціалізаторами, один з них має бути повністю пустий (лише дата), один з непустими всіма властивостями, плюс ще якісь. Упевнитися, що description() в усіх цих випадках видає такий результат, як ви задумали. Упевнитись що функціональність інформування про зміну стану обєкту працює правильно. */
