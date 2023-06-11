puts "🌱 Seeding spices..."

50.times do 
    Patient.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        hypertension: [true, false].sample,
        diabetes: [true, false].sample
    )
end

20.times do 
    Clinician.create(
        name: Faker::Name.name,
        title: ["MD", "DO", "PA", "CRNP"].sample,
        clinic_id: rand(0..5)
    )
end

puts "✅ Done seeding!"
