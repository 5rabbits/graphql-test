categories = Category.create [{ name: 'Admin' }, { name: 'Pro' }]

users = User.create [{ name: 'Profesional 1', category_id: categories.first },
                     { name: 'Profesional 2', category_id: categories.last }]

clients = Client.create [{ name: 'Client 1' }, { name: 'Client 2' }]

projects = Project.create [{ name: 'Project 1', client_id: clients.first },
                           { name: 'Project 2', client_id: clients.last }]

dates = (Date.today - 30.days)..(Date.today)

users.each do |user|
  projects.each do |project|
    dates.to_a.each do |date|
      TimeEntry.create(
        user_id: user.id,
        project_id: project.id,
        date:  date,
        description: "work of #{user.name} for #{project.name}",
        duration: 120
      )
    end
  end
end
