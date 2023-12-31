//
//  Stage2References.swift
//  Voyager
//
//  Created by admin on 28.11.2023.
//

import Foundation

struct Stage2PreviewReference: PhraseDelegate {
    
    static let shared = Stage2PreviewReference()
    private init() {}
    
    private let text0 = PhraseData(
        text: "День вышел насыщенным, и тебя уже в сон клонило. Нужно было где-то прилечь, но вот где прилечь человеку, который очнулся на улице и без памяти? Оставалось только проверить адрес, который указан в документах, которые были при тебе на момент пробуждения.",
        type: .common
    )
    
    private let text1 = PhraseData(
        text: "По дороге в какие-то удалённые панельные дома на отшибе города ты услышал, как тебя кто-то кличет.",
        type: .common
    )
    
    private let text2 = PhraseData(
        text: "- Эй, милок, то есть это… Молодой человек! Мужчина! Сударь! Да иди уже сюда, ты ж меня видишь.",
        type: .grandma
    )
    
    private let text3 = PhraseData(
        text: "- Здравствуйте. Что случилось у вас?",
        type: .mc
    )
    
    private let text4 = PhraseData(
        text: "- Случилось, вот, что я старая, одинокая, да без гроша в кармане. Помоги, милок, чем сумеешь, нужно как-то на хлеб с водой наскрести.",
        type: .grandma
    )
    
    private let text5 = PhraseData(
        text: "- Ой, ну я даже не знаю… А как так вообще получилось, что вы вшли просить подаяний? Я сутра ещё сам был к этому близок, но, вроде бы, навыкручивался…",
        type: .mc
    )
    
    private let text6 = PhraseData(
        text: "- Да это история долгая, милый мой. Понимаешь, я жила раньше у казаков, со времён после первой войны. А потом началась большая война вторая, нас погнали кого на восток, кого на юг – в общем, в сторону от наступления. Оказалась я неподалёку от места, где потом обоснавалась ясновидящая эта, как её там… Ванга. ",
        type: .grandma
    )
    
    private let text7 = PhraseData (text: "Я ходила к ней, хоть и не было у меня болезней, просто, из интереса. Она мне говорила, что я буду жить долго, и потом всё обрушится, и будет безвременье, когда все друг-друга обманывают. И тогда мне придётся несладко, настрадаюсь я от мошенников, у которых нет совести, и тогда уже будет будущее моё неопределённо.",
                                    type: .grandma)
    
    private let text8 = PhraseData(
        text: "Я запомнила это и решила копить деньги на старость, чтобы пережить все тяжёлые времена. К тому времени у меня уже была дочка взрослая, она всё была беспокойной и искала, как обрести равновесие. И тогда ей попался какой-то знакомый, он и к нам приходил один раз на квартиру. Он всё якобы обещал ей, что жизнь устаканится, всё наладится, надо только молиться и денег ему отнести, чтобы он построил дом, где такие как она могли бы искать покой.",
        type: .grandma
    )
    
    private let text9 = PhraseData(
        text: "Загорелась она – ни сказать, ни пером описать. Она думала, что это всё – избавление, направленное ей свыше. А потом оно тянулось, тянулось, а потом этот парень исчез. Она всё отдала, чем владела, попросила меня дать ей наследство до моей смерти…",
        type: .grandma
    )
    
    private let text10 = PhraseData(
        text: "Как ты видишь, я теперь без всего… Без копейки, без молодости, без дочки, без сил. Сорвалась она тогда, когда обман вскрылся, лечится теперь уже сколько месяцев. Ну а я совсем одна осталась. Помоги, милок, чем сумеешь, нужны деньги на таблетки мне и дочурке, а то плохо совсем ей, нет ей спасенья…",
        type: .grandma,
        answerPositive: "Дать милостыню",
        answerNegative: "Не давать",
        hasAnswers: true
    )
    
    var phrases: [PhraseData] {
        return [text0, text1, text2, text3, text4, text5, text6, text7, text8, text9, text10]
    }
}

struct Stage2WheelReference: PhraseDelegate {
    
    static let shared = Stage2WheelReference()
    private init() {}
    
    private let text0 = PhraseData(
        text: "Оказаться по нынешнему месту прописки тебе удалось. Это была комната в общежитии с насекомыми, со старым камином вместо отопления, с деревянным окном, которые выходило на другое здание, построенное почти вплотную. Контингент в таком месте был соответствующий – алкоголики, наркоманы, неимущие, бедные, нищие и просто неблагополучные люди. Повезло, что после дня приключений ты был без сил, так что слышать ночные шорохи и стоны обитателей тебе не случилось – ты спал как убитый. Но одно было ясно: жить так нельзя, нужно срочно менять всё вокруг.",
        type: .common
    )
    
    private let text1 = PhraseData(
        text: "Но вот как это сделать? Работы нет, знаний нет, навыков нет, памяти нет. Из тебя навряд ли получился бы здоровский грузчик – со своей худобой и истощением на тяжелоатлета ты мало похож. Остальные варианты тоже закрыты, так как ты ничего не умеешь, а для криминала низшего уровня ты уже слишком стар. Остаётся лишь один выход – играть. Только много ли ты выиграешь, даже если отнимешь все деньги напёрсточника, даже если разоришь всех студентов? При таких доходах, да к тому же со всеми рисками, даже лотерея кажется стопроцентным способом разбогатеть.",
        type: .common
    )
    
    private let text2 = PhraseData(
        text: "Так ты думал, слоняясь по трущобам на пути к центральной части города, обходя припаркованные машины на узких улицах.",
        type: .common
    )
    
    private let text3 = PhraseData(
        text: "- Эй, ты чего это бродишь здесь, а ну говори!",
        type: .casinoPartner
    )
    
    private let text4 = PhraseData(
        text: "- ?! Что?",
        type: .mc
    )
    
    private let text5 = PhraseData(
        text: "- Я смотрю, ты петляешь среди оставленных автомобилей. Ищешь там случайно выпавшие ключи? В этом, может, и есть смысл, но это напрасная трата времени, так как истинный ключ к успеху вовсе не там.",
        type: .casinoPartner
    )
    
    private let text6 = PhraseData(
        text: "- Ну и где он?",
        type: .mc
    )
    
    private let text7 = PhraseData(
        text: "- В казино! Рулетка: красное, чёрное, циферки, деньги и всё такое!",
        type: .casinoPartner
    )
    
    private let text8 = PhraseData(
        text: "- Да ну, я слышал, что там шарик смещается при помощи магнита под столом таким образом, чтобы казино всегда выигрывало.",
        type: .mc
    )
    
    private let text9 = PhraseData(
        text: "- Это ты кино насмотрелся про бандитов, шулеров и друзей Оушена. В этой стране казино не такие продвинутые игральные дома, тут всё куда колхознее. Выиграть можно, особенно, если знать как…",
        type: .casinoPartner
    )
    
    private let text10 = PhraseData(
        text: "- А ты знаешь как?",
        type: .mc
    )
    
    private let text11 = PhraseData(
        text: "- Догадываюсь. Я уже поднимал по-чутку. Если хочешь, можем действовать вместе, а то я один всё равно не сумею выжать все деньги, там ведь слежка идёт за игроками.",
        type: .casinoPartner
    )
    
    private let text12 = PhraseData(
        text: "- Так а что надо делать?",
        type: .mc
    )
    
    private let text13 = PhraseData(
        text: "- Нужно приходить играть в часы, когда казино даёт выиграть. В это время там всё по-честному. Как определить эти часы – зависит от дохода казино за микропериод. Я построил формулу и купил сведения, чтобы это высчитывать; я давно в теме, но выигрывать нормально начал вот только теперь, а до этого давал себя облапошивать этим жадинам.",
        type: .casinoPartner
    )
    
    private let text14 = PhraseData(
        text: "- А сколько там можно выиграть?",
        type: .mc
    )
    
    private let text15 = PhraseData(
        text: "- Столько, что желающих всегда достаточно.",
        type: .casinoPartner
    )
    
    private let text16 = PhraseData(
        text: "- Ну допустим, а что требуется от меня?",
        type: .mc
    )
    
    private let text17 = PhraseData(
        text: "- Приодеться и ставить. А то прямо сейчас ты выглядишь так, будто снял обмотки с бомжа, а потом купался в них в луже.",
        type: .casinoPartner
    )
    
    private let text18 = PhraseData(
        text: "- Ты мне предлагаешь все деньги потратить на шмотки? Вот и буду я жить в дыре и расхаживать в смокинге.",
        type: .mc
    )
    
    private let text19 = PhraseData(
        text: "- Эй, ты чего, ты чего? Начинать нужно с малого. Главное, чтобы костюмчик сидел. Приоденешься, выиграешь, втянешься, так и съедешь из своих грязнущих хибар – снимешь комнату где-нибудь ближе к центру, и норм. Короче, выбор за тобой, всё в твоих руках.",
        type: .casinoPartner
    )
    
    var phrases: [PhraseData] {
        return [text0, text1, text2, text3, text4, text5, text6, text7, text8, text9, text10, text11, text12, text13, text14, text15, text16, text17, text18, text19]
    }
}

struct Stage2DiceReference: PhraseDelegate {
    static let shared = Stage2DiceReference()
    private init() {}
    
    private let text0 = PhraseData(
        text: "- Друг, ты правильно сделал, что ушёл с рулетки, там уже плохое время пошло. Ты поднял, сколько тебе нужно?",
        type: .thimblesMan
    )
    
    private let text1 = PhraseData(
        text: "- Денег много не бывает.",
        type: .mc
    )
    
    private let text2 = PhraseData(
        text: "- Если хочешь, можешь всадить выигранное просто ради веселья на других аттракционах, запивая шампанским прожжённые накопления. Или ты надеешься выиграть и на других снарядах?",
        type: .thimblesMan
    )
    
    private let text3 = PhraseData(
        text: "- Да кто его знает, казино же обычно даёт одержать победу в начале. Может, нужно просто уметь вовремя остановиться?",
        type: .mc
    )
    
    private let text4 = PhraseData(
        text: "- Ага, вот сейчас я и закончу, а ты сам там давай принимай решения. Мне кажется, что тебя тут без штанов опять оставят вообще легче лёгкого. Вон, иди бросай кости пару раз, как в кино, чтобы все кричали, и погнали уже отсюда.",
        type: .thimblesMan
    )
    
    private let text5 = PhraseData(
        text: "- Вот я брошу на пару выигрышей, которые сделаны специально, чтобы затянуть меня, и срулю с деньгами обратно в притон свой.",
        type: .mc
    )
    var phrases: [PhraseData] {
        return [text0, text1, text2, text3, text4, text5]
    }
}

struct Stage2ThimblesComplicatedReference: PhraseDelegate {
    static let shared = Stage2ThimblesComplicatedReference()
    private init() {}
    
    private let text0 = PhraseData(
        text: "Эта ночь была полна выигрышей и веселья. Алкоголь помог тебе отрубиться в своей хибаре и проспать достаточно крепко, чтобы ни на что не реагировать.",
        type: .common
    )
    
    private let text1 = PhraseData(
        text: "Ты проснулся, когда день уже близился к завершению. Ты решил пройтись за едой, да и просто взбодриться и ноги размять. Неожиданная встреча ждала тебя уже за первым углом…",
        type: .common
    )
    
    private let text2 = PhraseData(
        text: "- Вот это поворот!",
        type: .thimblesMan
    )
    
    private let text3 = PhraseData(
        text: "- ...а, это ты?",
        type: .mc
    )
    
    private let text4 = PhraseData(
        text: "- Ты у меня в прошлый раз выиграл почти что всю кассу - отыграться я не успел, понятное дело.",
        type: .thimblesMan
    )
    
    private let text5 = PhraseData(
        text: "- Да какой отыграться, как тебя вообще не свинтили? Радовался бы, что чудесным образом до сих пор по улицам ходишь, а не по камере.",
        type: .mc
    )
    
    private let text6 = PhraseData(
        text: "- Да, теперь всё иначе, я хожу под большими людьми. Отдаю часть выигрыша, чтобы те позволяли мне дела делать на их территориях. Без людей в погонах зато - ничего такого теперь. Мне пришлось доказать, что стою всех этих хлопот, так что у меня игра теперь посложнее – моих рук на это хватает, но вот хватит ли твоих глаз на такое многообразие действий и быстрых движений?",
        type: .thimblesMan
    )
    
    private let text7 = PhraseData(
        text: "- А, что? Я пропустил момент, когда ты закончил свою историю и начал брать меня в оборот. Предлагаешь сыграть?",
        type: .mc
    )
    
    private let text8 = PhraseData(
        text: "- А ты хочешь слинять? Или ты всё-таки боишься, что я смогу отыграться?",
        type: .thimblesMan
    )
    
    private let text9 = PhraseData(
        text: "- Давай так: я сыграю с тобой несколько конов по-настоящему, на хорошие суммы, но взамен ты мне скажешь, где по городу нет легашей, чтобы я там свободно ходил. Согласен?",
        type: .mc
    )
    
    private let text10 = PhraseData(
        text: "- Начинали мы с того, что я сам тебе такие предложения делал. Как же всё поменялось за пару деньков…",
        type: .thimblesMan
    )
    
    var phrases: [PhraseData] {
        return [text0 ,text1, text2, text3, text4, text5, text6, text7, text8, text9, text10]
    }
}

struct Stage2BetReference: PhraseDelegate {
    static let shared = Stage2BetReference()
    private init() {}
    
    private let text0 = PhraseData(
        text: "Отыграв обещанное в напёрстки ты поел, прогулялся по территориям, о которых тебе рассказали, и решил перевести дух в каком-то баре.",
        type: .common
    )
    
    private let text1 = PhraseData(
        text: "Бармен громко беседовал с каким-то завсегдатаем в тёмном спортивном костюме. Разговор было слышно на всё заведение.",
        type: .common
    )
    
    private let text2 = PhraseData(
        text: "- Так ты сам прикинь, это же очевиднее некуда! Сколько у нас рулеток, сколько карточных колод, игральных столов, заведений – и сравни теперь, сколько по всей стране стадионов! Да один стадион в каком-нибудь посёлке городского типа больше, чем казино в большом городе. Ясен-красен, что людям это более интересно, ну а там, где больше внимания, больше бабла! Говорю тебе, друг, ставить нужно, ставить.",
        type: .interlocutor
    )
    
    private let text3 = PhraseData(
        text: "- Ну тебе то может и надо, ты ведь с детства следишь за игрой. С твоим багажём может и угадаешь разок-другой, купишь себе шарф “Динамо”, или даже “Спартак”…",
        type: .interlocutor
    )
    
    private let text4 = PhraseData(
        text: "- Ты вот шутишь, а там уже всё так хитро устроено… Договорняки, торговля инсайдами – люди всегда будут выжимать как можно больше из дела, которым они занимаются. Встань с ними рядом, и получишь кусок. Пройди мимо – он потратится на кого-то другого.",
        type: .interlocutor
    )
    
    private let text5 = PhraseData(
        text: "Ты всё это слушал, потягивая хмельное из кружки, и прикидывал: а реально ли тебе там пристроиться?",
        type: .common
    )
    
    private let text6 = PhraseData(
        text: "После небольшого разговора с тем типом в костюме стало ясно, что абы кто в таких делах им не нужен. Для начала, если хочешь быть частью системы, тебе нужно показать, что ты разбираешься. Покажи результаты на матчах, где нет теневого влияния и закулисных сделок, и тогда тебя смогут заметить. Наверное…",
        type: .common
    )
    
    var phrases: [PhraseData] {
        return [text0, text1, text2, text3, text4, text5, text6]
    }
}
