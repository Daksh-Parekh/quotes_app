import 'package:quotes_app/models/quotes_model.dart';

List<Map> allQuoteData = [
  {
    "quote":
        "Damien Hirst is the Elvis of the English art world, its ayatollah, deliverer, and big-thinking entrepreneurial potty-mouthed prophet and front man. Hirst synthesizes punk, Pop Art, Jeff Koons, Marcel Duchamp, Francis Bacon, and Catholicism.",
    "author": "Jerry Saltz",
    "category": "art",
    "date": "2009",
    "source": "Art Review",
    "context": "Discussion of Hirst's impact on contemporary art",
    "popularity": "Medium",
    "likes": 1200,
    "favorites": 350,
    "shares": 150,
    "comments": 45
  },
  {
    "quote": "Art is not what you see, but what you make others see.",
    "author": "Edgar Degas",
    "category": "art",
    "date": "Late 19th century",
    "source": "Personal Notes",
    "context": "Reflections on the role of the artist",
    "popularity": "High",
    "likes": 4500,
    "favorites": 1200,
    "shares": 750,
    "comments": 220
  },
  {
    "quote":
        "The purpose of art is washing the dust of daily life off our souls.",
    "author": "Pablo Picasso",
    "category": "art",
    "date": "1947",
    "source": "Interview",
    "context": "Picasso on the emotional impact of art",
    "popularity": "High",
    "likes": 5000,
    "favorites": 1300,
    "shares": 900,
    "comments": 310
  },
  {
    "quote": "Creativity takes courage.",
    "author": "Henri Matisse",
    "category": "art",
    "date": "1952",
    "source": "Book - Jazz",
    "context": "Matisse reflecting on the creative process",
    "popularity": "High",
    "likes": 4300,
    "favorites": 1100,
    "shares": 680,
    "comments": 190
  },
  {
    "quote": "Every artist was first an amateur.",
    "author": "Ralph Waldo Emerson",
    "category": "art",
    "date": "1841",
    "source": "Essays: First Series",
    "context": "On the journey of becoming an artist",
    "popularity": "High",
    "likes": 6200,
    "favorites": 2000,
    "shares": 1200,
    "comments": 500
  },
  {
    "quote":
        "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.",
    "author": "Ralph Waldo Emerson",
    "category": "philosophy",
    "date": "1841",
    "source": "Essays: First Series",
    "context": "On individuality",
    "popularity": "High",
    "likes": 7500,
    "favorites": 2500,
    "shares": 1500,
    "comments": 600
  },
  {
    "quote": "The unexamined life is not worth living.",
    "author": "Socrates",
    "category": "philosophy",
    "date": "399 BC",
    "source": "Trial of Socrates",
    "context": "Socrates' defense of philosophy",
    "popularity": "High",
    "likes": 8600,
    "favorites": 2900,
    "shares": 1700,
    "comments": 800
  },
  {
    "quote": "The only true wisdom is in knowing you know nothing.",
    "author": "Socrates",
    "category": "philosophy",
    "date": "399 BC",
    "source": "Trial of Socrates",
    "context": "Socrates on wisdom",
    "popularity": "High",
    "likes": 9000,
    "favorites": 3200,
    "shares": 2000,
    "comments": 850
  },
  {
    "quote": "I think, therefore I am.",
    "author": "René Descartes",
    "category": "philosophy",
    "date": "1637",
    "source": "Discourse on the Method",
    "context": "Foundational statement of Western philosophy",
    "popularity": "High",
    "likes": 7800,
    "favorites": 2700,
    "shares": 1600,
    "comments": 700
  },
  {
    "quote":
        "Happiness is not something ready made. It comes from your own actions.",
    "author": "Dalai Lama",
    "category": "spirituality",
    "date": "1992",
    "source": "Interview",
    "context": "Discussion on the nature of happiness",
    "popularity": "High",
    "likes": 10200,
    "favorites": 4000,
    "shares": 2200,
    "comments": 950
  },
  {
    "quote":
        "In the end, we will remember not the words of our enemies, but the silence of our friends.",
    "author": "Martin Luther King Jr.",
    "category": "civil rights",
    "date": "1965",
    "source": "Letter from Birmingham Jail",
    "context": "Reflection on social justice",
    "popularity": "High",
    "likes": 11200,
    "favorites": 4500,
    "shares": 2600,
    "comments": 1200
  },
  {
    "quote": "Injustice anywhere is a threat to justice everywhere.",
    "author": "Martin Luther King Jr.",
    "category": "civil rights",
    "date": "1963",
    "source": "Letter from Birmingham Jail",
    "context": "Reflection on social justice",
    "popularity": "High",
    "likes": 11500,
    "favorites": 4800,
    "shares": 2700,
    "comments": 1300
  },
  {
    "quote":
        "The best way to find yourself is to lose yourself in the service of others.",
    "author": "Mahatma Gandhi",
    "category": "service",
    "date": "1925",
    "source": "Speech",
    "context": "Gandhi on selflessness",
    "popularity": "High",
    "likes": 9800,
    "favorites": 3800,
    "shares": 2100,
    "comments": 900
  },
  {
    "quote": "Be the change that you wish to see in the world.",
    "author": "Mahatma Gandhi",
    "category": "service",
    "date": "1947",
    "source": "Speech",
    "context": "Gandhi on activism",
    "popularity": "High",
    "likes": 13000,
    "favorites": 5200,
    "shares": 3000,
    "comments": 1400
  },
  {
    "quote":
        "The only thing necessary for the triumph of evil is for good men to do nothing.",
    "author": "Edmund Burke",
    "category": "politics",
    "date": "1770",
    "source": "Letter to William Smith",
    "context": "On the importance of action",
    "popularity": "High",
    "likes": 11000,
    "favorites": 4400,
    "shares": 2500,
    "comments": 1200
  },
  {
    "quote": "The pen is mightier than the sword.",
    "author": "Edward Bulwer-Lytton",
    "category": "literature",
    "date": "1839",
    "source": "Play - Richelieu; Or the Conspiracy",
    "context": "On the power of writing",
    "popularity": "High",
    "likes": 9200,
    "favorites": 3700,
    "shares": 2000,
    "comments": 950
  },
  {
    "quote": "I have not failed. I've just found 10,000 ways that won't work.",
    "author": "Thomas Edison",
    "category": "innovation",
    "date": "1923",
    "source": "Interview",
    "context": "Edison's view on perseverance",
    "popularity": "High",
    "likes": 14000,
    "favorites": 5500,
    "shares": 3100,
    "comments": 1600
  },
  {
    "quote":
        "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "author": "Winston Churchill",
    "category": "leadership",
    "date": "1941",
    "source": "Speech",
    "context": "Churchill on resilience",
    "popularity": "High",
    "likes": 13500,
    "favorites": 5300,
    "shares": 2900,
    "comments": 1500
  },
  {
    "quote": "It always seems impossible until it’s done.",
    "author": "Nelson Mandela",
    "category": "perseverance",
    "date": "1994",
    "source": "Speech",
    "context": "Mandela on overcoming challenges",
    "popularity": "High",
    "likes": 12800,
    "favorites": 5100,
    "shares": 2800,
    "comments": 1400
  },
  {
    "quote":
        "The greatest glory in living lies not in never falling, but in rising every time we fall.",
    "author": "Nelson Mandela",
    "category": "perseverance",
    "date": "1993",
    "source": "Speech",
    "context": "Mandela on resilience",
    "popularity": "High",
    "likes": 12500,
    "favorites": 5000,
    "shares": 2700,
    "comments": 1300
  },
  {
    "quote":
        "Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment.",
    "author": "Buddha",
    "category": "mindfulness",
    "date": "500 BC",
    "source": "Sutras",
    "context": "Buddha's teaching on mindfulness",
    "popularity": "High",
    "likes": 14200,
    "favorites": 5700,
    "shares": 3200,
    "comments": 1600
  },
  {
    "quote":
        "Three things cannot be long hidden: the sun, the moon, and the truth.",
    "author": "Buddha",
    "category": "wisdom",
    "date": "500 BC",
    "source": "Sutras",
    "context": "Buddha's teaching on truth",
    "popularity": "High",
    "likes": 13600,
    "favorites": 5400,
    "shares": 3100,
    "comments": 1500
  },
  {
    "quote": "You must be the change you wish to see in the world.",
    "author": "Mahatma Gandhi",
    "category": "service",
    "date": "1947",
    "source": "Speech",
    "context": "Gandhi on personal responsibility",
    "popularity": "High",
    "likes": 13300,
    "favorites": 5300,
    "shares": 3000,
    "comments": 1400
  },
  {
    "quote":
        "It is during our darkest moments that we must focus to see the light.",
    "author": "Aristotle Onassis",
    "category": "perseverance",
    "date": "1968",
    "source": "Interview",
    "context": "Onassis on overcoming difficulties",
    "popularity": "Medium",
    "likes": 11500,
    "favorites": 4800,
    "shares": 2700,
    "comments": 1300
  },
  {
    "quote":
        "Your time is limited, so don't waste it living someone else's life.",
    "author": "Steve Jobs",
    "category": "innovation",
    "date": "2005",
    "source": "Stanford Commencement Speech",
    "context": "Jobs on individuality",
    "popularity": "High",
    "likes": 15000,
    "favorites": 6000,
    "shares": 3500,
    "comments": 1800
  },
  {
    "quote": "Stay hungry, stay foolish.",
    "author": "Steve Jobs",
    "category": "innovation",
    "date": "2005",
    "source": "Stanford Commencement Speech",
    "context": "Jobs on continual learning",
    "popularity": "High",
    "likes": 14800,
    "favorites": 5900,
    "shares": 3400,
    "comments": 1700
  },
  {
    "quote":
        "The only limit to our realization of tomorrow is our doubts of today.",
    "author": "Franklin D. Roosevelt",
    "category": "inspiration",
    "date": "1945",
    "source": "Speech",
    "context": "Roosevelt on overcoming doubt",
    "popularity": "High",
    "likes": 14000,
    "favorites": 5600,
    "shares": 3100,
    "comments": 1600
  },
  {
    "quote":
        "The future belongs to those who believe in the beauty of their dreams.",
    "author": "Eleanor Roosevelt",
    "category": "inspiration",
    "date": "1933",
    "source": "Speech",
    "context": "Eleanor Roosevelt on the power of dreams",
    "popularity": "High",
    "likes": 14500,
    "favorites": 5800,
    "shares": 3300,
    "comments": 1700
  },
  {
    "quote": "The best way to predict the future is to create it.",
    "author": "Peter Drucker",
    "category": "strategy",
    "date": "1973",
    "source": "Book - Management: Tasks, Responsibilities, Practices",
    "context": "Drucker on planning and action",
    "popularity": "High",
    "likes": 13900,
    "favorites": 5500,
    "shares": 3100,
    "comments": 1600
  },
  {
    "quote": "The way to get started is to quit talking and begin doing.",
    "author": "Walt Disney",
    "category": "action",
    "date": "1947",
    "source": "Interview",
    "context": "Disney on taking initiative",
    "popularity": "High",
    "likes": 14700,
    "favorites": 5900,
    "shares": 3400,
    "comments": 1800
  },
];

//Funny Qutes List
List<Map<String, dynamic>> funnyQuotes = [
  {
    "quote":
        "I am so clever that sometimes I don't understand a single word of what I am saying.",
    "author": "Oscar Wilde",
    "category": "funny",
    "date": "1890",
    "source": "The Picture of Dorian Gray",
    "context": "Wilde's humorous take on intelligence",
    "popularity": "High",
    "likes": 8500,
    "favorites": 3200,
    "shares": 1800,
    "comments": 700
  },
  {
    "quote": "I refuse to join any club that would have me as a member.",
    "author": "Groucho Marx",
    "category": "funny",
    "date": "1959",
    "source": "Interview",
    "context": "Marx's witty comment on exclusivity",
    "popularity": "High",
    "likes": 9800,
    "favorites": 4000,
    "shares": 2200,
    "comments": 850
  },
  {
    "quote": "My fake plants died because I did not pretend to water them.",
    "author": "Mitch Hedberg",
    "category": "funny",
    "date": "2002",
    "source": "Stand-up performance",
    "context": "Hedberg's deadpan humor about plants",
    "popularity": "Medium",
    "likes": 7300,
    "favorites": 2600,
    "shares": 1500,
    "comments": 500
  },
  {
    "quote": "Behind every great man is a woman rolling her eyes.",
    "author": "Jim Carrey",
    "category": "funny",
    "date": "2005",
    "source": "Interview",
    "context": "Carrey on relationships",
    "popularity": "High",
    "likes": 9600,
    "favorites": 3900,
    "shares": 2100,
    "comments": 900
  },
  {
    "quote":
        "I dream of a better tomorrow, where chickens can cross the road and not be questioned about their motives.",
    "author": "Anonymous",
    "category": "funny",
    "date": "Unknown",
    "source": "Internet Meme",
    "context": "Humorous take on the classic joke",
    "popularity": "High",
    "likes": 10500,
    "favorites": 4300,
    "shares": 2500,
    "comments": 980
  },
  {
    "quote":
        "I haven't spoken to my wife in years. I didn't want to interrupt her.",
    "author": "Rodney Dangerfield",
    "category": "funny",
    "date": "1980",
    "source": "Stand-up performance",
    "context": "Dangerfield on marriage",
    "popularity": "High",
    "likes": 8100,
    "favorites": 3000,
    "shares": 1900,
    "comments": 750
  },
  {
    "quote":
        "The only mystery in life is why the kamikaze pilots wore helmets.",
    "author": "Al McGuire",
    "category": "funny",
    "date": "1970",
    "source": "Interview",
    "context": "McGuire's humorous observation",
    "popularity": "Medium",
    "likes": 6800,
    "favorites": 2400,
    "shares": 1600,
    "comments": 500
  },
  {
    "quote": "Age is something that doesn't matter, unless you are a cheese.",
    "author": "Luis Buñuel",
    "category": "funny",
    "date": "1964",
    "source": "Interview",
    "context": "Buñuel's humorous take on aging",
    "popularity": "Medium",
    "likes": 7400,
    "favorites": 2700,
    "shares": 1700,
    "comments": 600
  },
  {
    "quote": "A day without sunshine is like, you know, night.",
    "author": "Steve Martin",
    "category": "funny",
    "date": "1977",
    "source": "Comedy Album",
    "context": "Martin's absurd humor",
    "popularity": "High",
    "likes": 9600,
    "favorites": 3800,
    "shares": 2100,
    "comments": 850
  },
  {
    "quote": "People say nothing is impossible, but I do nothing every day.",
    "author": "A.A. Milne",
    "category": "funny",
    "date": "1926",
    "source": "Winnie the Pooh",
    "context": "Milne's humor through Pooh's perspective",
    "popularity": "High",
    "likes": 10200,
    "favorites": 4100,
    "shares": 2400,
    "comments": 920
  },
  {
    "quote": "I'm writing a book. I've got the page numbers done.",
    "author": "Steven Wright",
    "category": "funny",
    "date": "1987",
    "source": "Stand-up performance",
    "context": "Wright's minimalist humor",
    "popularity": "Medium",
    "likes": 7100,
    "favorites": 2600,
    "shares": 1400,
    "comments": 520
  },
  {
    "quote": "Life is short. Smile while you still have teeth.",
    "author": "Anonymous",
    "category": "funny",
    "date": "Unknown",
    "source": "Internet Meme",
    "context": "A lighthearted reminder to enjoy life",
    "popularity": "High",
    "likes": 9800,
    "favorites": 4000,
    "shares": 2200,
    "comments": 800
  },
  {
    "quote": "I can resist everything except temptation.",
    "author": "Oscar Wilde",
    "category": "funny",
    "date": "1890",
    "source": "The Picture of Dorian Gray",
    "context": "Wilde's wit on self-control",
    "popularity": "High",
    "likes": 9200,
    "favorites": 3700,
    "shares": 2000,
    "comments": 850
  },
  {
    "quote":
        "A bank is a place that will lend you money if you can prove that you don't need it.",
    "author": "Bob Hope",
    "category": "funny",
    "date": "1965",
    "source": "Stand-up performance",
    "context": "Hope's humor about finances",
    "popularity": "High",
    "likes": 8300,
    "favorites": 3200,
    "shares": 1800,
    "comments": 750
  },
  {
    "quote":
        "Before you judge a man, walk a mile in his shoes. After that who cares? He's a mile away and you've got his shoes!",
    "author": "Billy Connolly",
    "category": "funny",
    "date": "1980",
    "source": "Stand-up performance",
    "context": "Connolly's humorous take on empathy",
    "popularity": "High",
    "likes": 11500,
    "favorites": 4600,
    "shares": 2500,
    "comments": 1000
  }
];

List<FunnyQuotesModel> funQuotes = funnyQuotes
    .map(
      (e) => FunnyQuotesModel.funnyQuoteFromMap(
        data: e,
      ),
    )
    .toList();

List<QuotesModel> allQoutes = allQuoteData
    .map(
      (e) => QuotesModel.fromMap(
        data: e,
      ),
    )
    .toList();
