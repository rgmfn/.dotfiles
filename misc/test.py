import re
import random
import sys

# TODO
#   -make it so you can choose what sections are asked about
#       +prompted about each lvl 1 section if you want to be asked about it

"""
1. get lvl 1 section name and contents
2. ask if want to be asked on this section
3. if yes, get questions and answers of things in this section
"""

# section_pattern = re.compile(r'(.*):\s?.*\d+\s?{{{((.*\n?)+)}}}')

# with open(sys.argv[1], 'r') as f:
#     contents = f.read()

#     section_matches = section_pattern.finditer(contents)

#     for sec_match in section_matches:
#         title = sec_match.group(1)
#         body = sec_match.group(2)

#         exercises_pattern = re.compile(r'Exercises {{{2((.*\n?)+)}}}2')
#         exercises = exercises_pattern.search(contents)

#         question_pattern = re.compile(r'(.*)\n{{{3\n(.*)\s?}}}3')
#         question_matches = question_pattern.finditer(exercises.group(0))

#         for qmatch in question_matches:
#             question = qmatch.group(1)
#             answer = qmatch.group(2)

#             print(question, answer)






if len(sys.argv) == 1:
    print('Usage: python3 test.py file_to_test_on')
    sys.exit(1)

def quiz(deck):
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

# pattern = re.compile(r'(.+)\n{{{3?\n(.+)}}}3?')

# q_or_a = input('Do you want to be asked the questions or answers (q/a)? ')

# if q_or_a == 'q':
#     pattern2 = re.compile(r'(.+)\n{{{3?\n(.+\n\n.+\n.*)}}}3?')
# else:
#     pattern2 = re.compile(r'(.+)\n{{{3?\n(.+)\n\n.+\n.*}}}3?')

section_pattern = re.compile(r'(.*):\s?.*\d+\s?{{{((.*\n?)+)}}}')

with open(sys.argv[1], 'r') as f:
    contents = f.read()

    section_matches = section_pattern.finditer(contents)

    for sec_match in section_matches:
        title = sec_match.group(1)

        print(title)

        # quiz_this = input(f'Would you like to be quizzed on {title}? ')
        # if quiz_this == 'y':
        #     body = sec_match.group(2)

        #     exercises_pattern = re.compile(r'Exercises {{{2((.*\n?)+)}}}2')
        #     exercises = exercises_pattern.search(contents)

        #     q_or_a = input(f'Would you like to be given the questions or answers (q/a)? ')

        #     question_pattern = re.compile(r'(.*)\n{{{3\n(.*)\s?}}}3')
        #     question_matches = question_pattern.finditer(exercises.group(0))

        #     for qmatch in question_matches:
        #         if q_or_a == 'q':
        #             question = qmatch.group(1)
        #             answer = qmatch.group(2)
        #         else:
        #             question = qmatch.group(2)
        #             answer = qmatch.group(1)

        #         questions.append((question, answer))

    # quiz(questions)
