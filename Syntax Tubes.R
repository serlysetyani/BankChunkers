data <- read.csv("BankChurners.csv")
head(data)

dataclear <- subset(data, select = c(1:21))

#Korelasi umur dengan total transaksi dengan signifikan lv 5%
cor.test(dataclear$Customer_Age, dataclear$Total_Trans_Amt)

#korelasi umur dengan credit limit dengan signifikan lv 10%
cor.test(dataclear$Customer_Age,dataclear$Credit_Limit, conf.level = 0.9)

#Rata rata total transaction amount dan umur untuk semua kategori kartu
mean(dataclear$Total_Trans_Amt)
mean(dataclear$Customer_Age)

#Scatter Customer Age dengan Total Transaction Amount.
plot(dataclear$Customer_Age, dataclear$Total_Trans_Amt)

#Correlation between customer age and total transaction amount
cor(dataclear$Customer_Age, dataclear$Total_Trans_Amt)
plot(dataclear$Customer_Age, dataclear$Total_Trans_Amt, main ="Umur Customer vs Total Transaksi")

#Scatter plot umur dan credit limit
plot(dataclear$Customer_Age,dataclear$Credit_Limit)

#boxplot umur customer
boxplot(dataclear$Customer_Age, main="Umur Customer")

#menampilkan frekuensi card category
card_category <- dataclear$Card_Category
data.frame(card_category)
levels(factor(card_category))
freq_card <- table(factor(card_category))
barplot(freq_card, main = "Bar Chart Kategori Kartu")

#scatterplot total transaksi dengan total pengeluaran kredit (nilai korelasi 0.8)
plot(dataclear$Total_Trans_Ct, dataclear$Total_Trans_Amt, main = "Total Transaksi vs total pengeluaran kredit")
