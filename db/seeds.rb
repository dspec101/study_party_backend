# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



    #users 

    User.destroy_all

   user1 = User.create(
        username: "david",
        password: "david",
        title: "David",
        phone_number: "5555555556"
    )

    user2 = User.create(
        username: "allen",
        password: "allen",
        title: "Allen",
        phone_number: "5555555555"
    )

    user3 = User.create(
        username: "tonya",
        password: "tonya",
        title: "Tonya",
        phone_number: "5555555555"
    )


    user4 = User.create(
        username: "natasha",
        password: "natasha",
        title: "Natasha",
        phone_number: "5555555555"
    )

# Rooms 

Party.destroy_all

room1 = Party.create(
    title: "MathNerds",
    description: "Work together on math probloems from the GMAT and GRE",
    image_url: "https://s3.amazonaws.com/skooli-wp/wp-content/uploads/2015/02/improving_math_skills_with_online_tutor.jpg",
    category: "math"
)

room2 = Party.create(
    title: "LSAT logic, bruh",
    description: "We can do this! Group for students taking the LSAT this year.",
    image_url: "https://dynaimage.cdn.cnn.com/cnn/c_fill,g_auto,w_1200,h_675,ar_16:9/https%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F191010163653-lsat-test-notebook.jpg",
    category: "logic"
)

room3 = Party.create(
    title: "GRE senetence completion partayy",
    description: "We will crush th GRE!",
    image_url: "https://barronsbooks.com/img/graphics/gre-title.png",
    category: "sc"
)


# lsat questions 

Question.destroy_all

question1 = Question.create(
    category: "logic",
    description: "Laird: Pure research provides us with new technologies that contribute to saving lives. Even more worthwhile than this, however, is its role in expanding our knowledge and providing new, unexplored ideas. Kim: Your priorities are mistaken. Saving lives is what counts most of all. Without pure research, medicine would not be as advanced as it is. Laird and Kim disagree on whether pure research",
    A: "derives its significance in part from its providing new technologies",
    B: "expands the boundaries of our knowledge of medicine",
    C: "should have the saving of human lives as an important goal",
    D: "has its most valuable achievements in medical applications",
    E: "has any value apart from its role in providing new technologies to save lives",
    right_answer: "D")

question2 = Question.create(
        category: "logic",
        description: "Executive: We recently ran a set of advertisements in the print version of a travel magazine and on that magazine’s website. We were unable to get any direct information about consumer response to the print ads. However, we found that consumer response to the ads on the website was much more limited than is typical for website ads. We concluded that consumer response to the print ads was probably below par as well.
        The executive’s reasoning does which one of the following?",
        A: "bases a prediction of the intensity of a phenomenon on information about the intensity of that phenomenon’s cause",
        B: "uses information about the typical frequency of events of a general kind to draw a conclusion about the probability of a particular event of that kind",
        C: "infers a statistical generalization from claims about a large number of specific instances",
        D: "uses a case in which direct evidence is available to draw a conclusion about an analogous case in which direct evidence is unavailable",
        E: "bases a prediction about future events on facts about recent comparable events",
        right_answer: "D")

question3 = Question.create(
    category: "logic",
    description: "During the construction of the Quebec Bridge in 1907, the bridge’s designer, Theodore Cooper, received word that the suspended span being built out from the bridge’s cantilever was deflecting downward by a fraction of an inch (2.54 centimeters). Before he could telegraph to freeze the project, the whole cantilever arm broke off and plunged, along with seven dozen workers, into the St. Lawrence River. It was the worst bridge construction disaster in history. As a direct result of the inquiry that followed, the engineering “rules of thumb” by which thousands of bridges had been built around the world went down with the Quebec Bridge. Twentieth-century bridge engineers would thereafter depend on far more rigorous applications of mathematical analysis.
    Which one of the following statements can be properly inferred from the passage?",
    A: "Bridges built before about 1907 were built without thorough mathematical analysis and, therefore, were unsafe for the public to use.",
    B: "Cooper’s absence from the Quebec Bridge construction site resulted in the breaking off of the cantilever.",
    C: "Nineteenth-century bridge engineers relied on their rules of thumb because analytical methods were inadequate to solve their design problems.",
    D: "Only a more rigorous application of mathematical analysis to the design of the Quebec Bridge could have prevented its collapse.",
    E: "Prior to 1907 the mathematical analysis incorporated in engineering rules of thumb was insufficient to completely assure the safety of bridges under construction.",
    right_answer: "E")


    # math questions 

    question11 = Question.create(
        category: "math",
        description: "The price of a pair of sneakers was $80 for the last six months of last year. On January first, the price increased 20%. After the price increase, an employee bought these sneakers with a 10% employee discount. What price did the employee pay?",
        A: "$70.40",
        B: "$82.00",
        C: "$83.33",
        D: "$86.40",
        E: "$88.00",
        right_answer: "D")

        question12 = Question.create(
            category: "math",
            description: "A certain pet store sells only dogs and cats. In March, the store sold twice as many dogs as cats. In April, the store sold twice the number of dogs that it sold in March, and three times the number of cats that it sold in March. If the total number of pets the store sold in March and April combined was 500, how many dogs did the store sell in March?",
            A: "80",
            B: "100",
            C: "120",
            D: "160",
            E: "180",
            right_answer: "B")

            question13 = Question.create(
                category: "math",
                description: "If x + 6 = 9, then 3x + 1 = ",
                A: "3",
                B: "9",
                C: "10",
                D: "34",
                E: "46",
                right_answer: "C")
        

    # comments

    Comment.destroy_all

    comment1 = Comment.create(
    user_id: User.all.sample.id,
    party_id: room2.id,
    description: "Oh man, the LSAT is hard. But I love you guys!"
    )

    comment2 = Comment.create(
    user_id: User.all.sample.id,
    party_id: room1.id,
    description: "Want to do a video chat later?! 3pm? https://flatironschool.zoom.us/j/96707613212?pwd=aFdkZUJ1SFpLc3FnbXJPUlVYeC9iZz09" 
        )

    comment3 = Comment.create(
        user_id: User.all.sample.id,
        party_id: room2.id,
        description: "What do you think is the hardest about the LSAT?")


    comment4 = Comment.create(
        user_id: User.all.sample.id,
        party_id: room2.id,
        description: "OMG this is the hardest question of the day. I need to drill algebra. Let's do more questions!" 
        )

    
    # testAnswer

    Answer.destroy_all

    answer1 = Answer.create(
    user_id: User.all.sample.id,
      question_id: question1.id,
      selection: "D",
      explanation: "I can see why D can be the best answer after realizing that the Medical Knowledge expanded, and new & unexplored medical idea provided is not necessary account for what Laird refers 2. Since Laird can discuss 10,000 kinds of the knowledges and ideas, but not only limit to those in medical field. If that's the case, D can be the best answer.",
      likes:10)

      answer2 = Answer.create(
        user_id: User.all.sample.id,
          question_id: question2.id,
          selection: "D",
          explanation: "The author uses a case in which direct
          evidence is available (consumer response to the ads on the website) to draw a conclusion about an
          analogous case in which direct evidence is unavailable (consumer response to the print ads).
          ",
          likes:8)


          answer3 = Answer.create(
            user_id: User.all.sample.id,
              question_id: question3.id,
              selection: "E",
              explanation: "IMO E
              The argument says before Twentieth-century the engineering team followed rules of thumb to build bridges.
              Quebec Bridge in 1907 collasped even after following rules...therefore these rules were not sufficient/safe and engineers started depending on far more rigorous applications of mathematical analysis
              Only E summarizes the given argument....
              A says all the bridges were unsafe....this is too extreme. We dont know whether the thumbrules are not sutaible for all the bridges ..
              B....we don't know this....passage doesnot mention that coopers absence led to the accident
              C..We dont have any information of bridges built before 1907...so OFS
              D..OFS....we dont know this....",
              likes:12)


          answer4 = Answer.create(
            user_id: User.all.sample.id,
              question_id: question13.id,
              selection: "C",
              explanation: " Solving for x leaves x = 3, and then substituting into 3x + 1 gives 3(3) + 1, or 10. The most common mistake is to solve for x, which is 3, and mistakenly choose A as your answer. But remember, you are solving for 3x + 1, not just x. You should also notice that most of the other choices would all be possible answers if you made common or simple mistakes. The correct answer is C. Make sure that you're answering the right question.",
              likes:10)



          answer5 = Answer.create(
            user_id: User.all.sample.id,
              question_id: question12.id,
              selection: "B",
              explanation: " So, in March the store has sold twice as dogs as cats, i.e. D = 2C and C cats.

              In April, the store has sold double the dogs of March, i.e. 2D = 4C and triple of cats as in March, 3C.
              
              Now we know that the sum of all sold animals is 500 = 2C + C + 4C + 3C = 10C. Thus, C = 50 and thus the number of dogs sold in March is equal to 2C = 2*50 = 100. Answer B",
              likes:10)


              answer6 = Answer.create(
                user_id: User.all.sample.id,
                  question_id: question11.id,
                  selection: "D",
                  explanation: "Price = 80*1.2*0.9 = 80*1.08 = 86.4

                  1.2 denotes 20% increase.
                  0.9 denotes 10% discount.
                  
                  Option D",
                  likes:7)

