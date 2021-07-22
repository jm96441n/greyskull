# Create Routine
r = Routine.find_or_create_by(name: "Greyskull LP")

# Create template days
t1 = TemplateDay.find_or_create_by(routine: r, name: "Day 1.1")
t2 = TemplateDay.find_or_create_by(routine: r, name: "Day 1.2")
t3 = TemplateDay.find_or_create_by(routine: r, name: "Day 1.3")
t4 = TemplateDay.find_or_create_by(routine: r, name: "Day 2.1")
t5 = TemplateDay.find_or_create_by(routine: r, name: "Day 2.2")
t6 = TemplateDay.find_or_create_by(routine: r, name: "Day 2.3")

# Exercises
bp = Exercise.find_or_create_by(name: "Bench Press", increase: 2.5)
ohp = Exercise.find_or_create_by(name: "Overhead Press", increase: 2.5)
row = Exercise.find_or_create_by(name: "Row", increase: 2.5)
chin = Exercise.find_or_create_by(name: "Chin Up", increase: 0)
squat = Exercise.find_or_create_by(name: "Squat", increase: 2.5)
dl = Exercise.find_or_create_by(name: "Deadlift", increase: 5.0)
tri = Exercise.find_or_create_by(name: "Tricep Overhead Extension", increase: 2.5)
bi = Exercise.find_or_create_by(name: "Bicep Curl", increase: 2.5)
ab = Exercise.find_or_create_by(name: "Ab Roller", increase: 0)
shrug = Exercise.find_or_create_by(name: "Shrug", increase: 5.0)

# Day 1.1
TemplateExercise.find_or_create_by(template_day: t1, exercise: bp, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t1, exercise: row, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t1, exercise: squat, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t1, exercise: tri, sets: 3, reps: 12)
TemplateExercise.find_or_create_by(template_day: t1, exercise: ab, sets: 3, reps: 12)

# Day 1.2
TemplateExercise.find_or_create_by(template_day: t2, exercise: ohp, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t2, exercise: chin, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t2, exercise: dl, sets: 1, reps: 5)
TemplateExercise.find_or_create_by(template_day: t2, exercise: bi, sets: 3, reps: 12)
TemplateExercise.find_or_create_by(template_day: t2, exercise: shrug, sets: 3, reps: 12)

# Day 1.3
TemplateExercise.find_or_create_by(template_day: t3, exercise: bp, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t3, exercise: row, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t3, exercise: squat, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t3, exercise: tri, sets: 3, reps: 12)
TemplateExercise.find_or_create_by(template_day: t3, exercise: ab, sets: 3, reps: 12)

# Day 2.1
TemplateExercise.find_or_create_by(template_day: t4, exercise: ohp, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t4, exercise: chin, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t4, exercise: squat, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t4, exercise: bi, sets: 3, reps: 12)
TemplateExercise.find_or_create_by(template_day: t4, exercise: ab, sets: 3, reps: 12)

# Day 2.2
TemplateExercise.find_or_create_by(template_day: t5, exercise: bp, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t5, exercise: row, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t5, exercise: dl, sets: 1, reps: 5)
TemplateExercise.find_or_create_by(template_day: t5, exercise: tri, sets: 3, reps: 12)
TemplateExercise.find_or_create_by(template_day: t5, exercise: shrug, sets: 3, reps: 12)

# Day 2.3
TemplateExercise.find_or_create_by(template_day: t6, exercise: ohp, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t6, exercise: chin, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t6, exercise: squat, sets: 3, reps: 5)
TemplateExercise.find_or_create_by(template_day: t6, exercise: bi, sets: 3, reps: 12)
TemplateExercise.find_or_create_by(template_day: t6, exercise: ab, sets: 3, reps: 12)
