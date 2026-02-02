Manga <- read.csv("C:/Users/mmounkailadjibo/Downloads/manga.csv",header= TRUE, sep = "," , dec = ".")
Anime <- read.csv("C:/Users/mmounkailadjibo/Downloads/anime.csv",header= TRUE, sep = "," , dec = ".")
class(Manga)
class(Anime)
View(Manga)
View(Anime)
dim(Manga)
mean(Manga$Score)
mean(Anime$Score)
sum(Anime$Vote)
sum(Manga$Vote)
sd(Manga$Score)
sd(Anime$Score)
quantile(Anime$Score, probs = seq(from = 0.1, to = 0.9, by =0.2))
Areg <- subset(Manga, Score >9)
View(Areg)
nrow(Areg)
Populaire <- subset(Manga, Vote >= 200000)
nrow(Populaire)
Bien <- subset(Manga, Score >= 7 & Score <= 8)
nrow(Bien)
"effectifs de la variable Rating"
effectifRating <- table(Anime$Rating)
print(effectifRating)
length(effectifRating)
prop.table(effectifRating)
"Anime sont concernés par le Rating : R - 17+"
nrow(R<- subset(Anime, Rating =="R - 17+ (violence & profanity)"))
"Anime ne correspondent pas au Rating"
nrow(R<- subset(Anime, Rating != "R - 17+ (violence & profanity)"))
""
nrow(R<- subset(Anime, Rating =="R - 17+ (violence & profanity)" & Score >8))
""
nrow(R<- subset(Anime, (Rating =="PG - Children") | (Rating =="G - All Ages")))
""
Animer <- Anime[ , c("Title","Score","Vote","Ranked")]
Mangar <- Manga[ , c("Title","Score","Vote","Ranked")]
View(Animer)
Animer$Type <- "Anime"
View(Animer)
Mangar$Type <- "Manga"
View(Mangar)
Concat <- rbind(Mangar,Animer)
View(Concat)
"Exporter"
write.table(x= Concat , file = "C:/Users/mmounkailadjibo/Downloads/Export.csv",sep = ";", row.names = FALSE)