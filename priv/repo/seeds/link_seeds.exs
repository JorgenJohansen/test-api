alias TestApi.Repo
alias TestApi.Content.Link

Repo.insert! %Link{
  title: "Jørgen's github",
  link: "https://github.com/JorgenJohansen",
  user_id: 1,
  dashboard_id: 1
}

Repo.insert! %Link{
  title: "Robotman's fandom page",
  link: "https://dc.fandom.com/wiki/Clifford_Steele_(New_Earth)",
  user_id: 2,
  dashboard_id: 2
}
Repo.insert! %Link{
  title: "Geralt's fandom page",
  link: "https://witcher.fandom.com/wiki/Geralt_of_Rivia",
  user_id: 3,
  dashboard_id: 3
}
