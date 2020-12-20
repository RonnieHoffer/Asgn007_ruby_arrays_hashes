def cohort_counter(cohorts, staff)
    counter = 0
    sum = 0

    cohorts.each do |k, v|
        puts "#{k} has #{v} students."
        sum += v
        counter += 1
    end

    puts "The cohorts are #{cohorts.keys}"
    puts "The total number of students in all the cohorts is #{sum}"
    puts "\n"

    counter = 0
    sum = 0
    staff.each do |k, v|
        puts "#{k} has #{v} teachers"
        sum += v
        counter += 1
    end

    puts "The staffgroups are #{staff.keys}"
    puts "The total number of students in all the cohorts is #{sum}"
    puts "\n"
    puts "************************************"
    puts "\n"

end

students = {
    :cohort1 => 34,
    :cohort2 => 42,
    :cohort3 => 22
}

personnel = {
    :staffgroup1 => 3,
    :staffgroup2 => 4,
    :staffgroup3 => 2,
}

cohort_counter(students, personnel)

students[:cohort4] = 43
personnel[:staffgroup4] = 4
cohort_counter(students, personnel)

students.delete(:cohort2)
personnel.delete(:staffgroup2)
cohort_counter(students, personnel)

