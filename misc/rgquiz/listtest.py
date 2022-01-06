import re
import sys

if len(sys.argv) == 1:
    print('Usage: rgquiz file_to_test_on')

def quiz(deck):
    print()

    if not deck:
        print('you finished the deck!')
        return

    random.shuffle(deck)

    for q in deck:
        print(q, end='')
        ans = input("1 - don't know, 2 - know: ")
        if ans == '2':
            deck.remove(q)
        print()

    quiz(deck)

questions = []

with open(sys.argv[1], 'r') as f:
    contents = f.read()

    question_pattern = re.compile(r'\d\. (.+\?)')
    question_matches = question_pattern.finditer(contents)

    for qmatch in question_matches:
        question = qmatch.group(1)

    questions.append(question)

    quiz(questions)
