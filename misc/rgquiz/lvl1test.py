import re
import random
import sys

if len(sys.argv) == 1:
    print('Usage: rgquiz file_to_test_on')
    sys.exit(1)

def quiz(deck):
    print()

    if not deck:
        print('you finished the deck!')
        return

    random.shuffle(deck)

    for q, a in deck:
        print(q, end='')
        input()
        print(a)
        ans = input("1 - don't know, 2 - know: ")
        if ans == '2':
            deck.remove((q, a))
        print()

    quiz(deck)

questions = []

# section_pattern = re.compile(r'(.+): {{{((.*\n?)+?)}}}[^2]')

with open(sys.argv[1], 'r') as f:
    contents = f.read()

    q_or_a = input('Would you like to be given the questions or answers (q/a)? ')

    question_pattern = re.compile(r'(.*)\n{{{\n(.*)\s?}}}')
    question_matches = question_pattern.finditer(contents)

    for qmatch in question_matches:
        if q_or_a == 'q':
            question = qmatch.group(1)
            answer = qmatch.group(2)
        else:
            question = qmatch.group(2)
            answer = qmatch.group(1)

        questions.append((question, answer))

    quiz(questions)
    # for q in questions:
    #     print(q)
