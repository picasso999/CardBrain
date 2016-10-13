User.destroy_all
Subject.destroy_all
SubjectFollow.destroy_all
Deck.destroy_all
Card.destroy_all
ConfidenceRating.destroy_all


porkchop = User.create!(username: 'porkchop', password: 'porkchop')
oskar = User.create!(username: 'oskar', password: 'porkchop')


mcat_biology = Subject.create!(title: 'MCAT Biology', owner_id: oskar.id)
norwegian = Subject.create!(title: 'Norwegian', owner_id: oskar.id)
react = Subject.create!(title: 'React', owner_id: oskar.id)
redux = Subject.create!(title: 'Redux', owner_id: porkchop.id)
jbuilder = Subject.create!(title: 'jBuilder', owner_id: porkchop.id)
css = Subject.create!(title: 'CSS', owner_id: porkchop.id)
active_recored = Subject.create!(title: 'ActiveRecord', owner_id: porkchop.id)
ad = Subject.create!(title: 'Arrested Development', owner_id: oskar.id)


# SubjectFollow.create!(follower_id: oskar.id, subject_id: norwegian.id)
SubjectFollow.create!(follower_id: porkchop.id, subject_id: react.id)


modal = Deck.create!(subject: react, title: 'React Modal')
router = Deck.create!(subject: react, title: 'React Router')
lifecycle = Deck.create!(subject: react, title: 'Lifecycle Methods')
greetings = Deck.create!(subject: norwegian, title: 'Greetings')
foods = Deck.create!(subject: norwegian, title: 'Foods')
sports = Deck.create!(subject: norwegian, title: 'Sports')
quotes = Deck.create!(subject: ad, title: 'Quotes')


hei = Card.create!(deck: greetings, question_text: 'hei', answer_text: 'hello / hey')
hadde = Card.create!(deck: greetings, question_text: 'hadde', answer_text: 'goodbye / see you')
aasen = Card.create!(deck: greetings, question_text: 'åsen gar det?', answer_text: "how's it going?")

cdm = Card.create!(deck: lifecycle, question_text: 'In what method should you fetch data via API?', answer_text: "componentDidMount")
cwu = Card.create!(deck: lifecycle, question_text: 'What method is called right before unmounting?', answer_text: "componentWillUnmount")
cwrp = Card.create!(deck: lifecycle, question_text: 'In what method should you handle reacting to receiving props before render() is called? Keep in mind that this is a longer question than usual, and may break the site! That is correct, just having lots of text can sometimes make a website and/or database uneasy', answer_text: "componentWillReceiveProps")

Card.create!(deck: quotes, question_text: 'Annyong', answer_text: 'Annyong')
Card.create!(deck: quotes, question_text: 'Hi George Michael, proud of yourself?', answer_text: 'Yeah actually, I got a bum away from the stand without hurting his feelings. That was pretty sweet.')
Card.create!(deck: quotes, question_text: 'How do you make a React.js app with a rails back-end?', answer_text: 'I don’t understand the question, and I won’t respond to it.')
Card.create!(deck: quotes, question_text: 'Do you guys know where I can get one of those gold necklaces with a “T” on it?', answer_text: "That's a cross")
Card.create!(deck: quotes, question_text: 'Why are you squeezing me with your body?', answer_text: 'It’s a hug, Michael. I’m hugging you')
