alias TestApi.Repo
alias TestApi.Account.User

Repo.insert! %User{
  email: "jorgen@johansen.no",
  password: "password",
  token: "dfsgsesfbssergaerg",
  provider: "github",
  name: "Jorgen Johansen",
  age: 26
}

Repo.insert! %User{
  email: "cliff@steele.com",
  password: "robotman",
  token: "rgaradhdfhaeahrehar",
  provider: "github",
  name: "Cliff Steele",
  age: 80
}
Repo.insert! %User{
  email: "geralt@rivia.com",
  password: "lovejen",
  token: "rgaradhdfhaeahrehar",
  provider: "github",
  name: "Geralt of Rivia",
  age: 94
}
