CREATE TABLE Currency_Rates (
   id INT PRIMARY KEY AUTO_INCREMENT,
   currency_pair VARCHAR(30) NOT NULL,
   datestamp DATETIME DEFAULT NULL,
   currency_ratio FLOAT DEFAULT NULL
);

INSERT INTO Currency_Rates (id, currency_pair, datestamp, currency_ratio) VALUES
   (0, "USD/RUB", "2023-04-28 10:52:32", 76.18),
   (0, "USD/RUB", "2023-02-12 14:36:23", 74.12),
   (0, "USD/RUB", "2023-04-30", NULL),
   (0, "USD/RUB", "2023-04-20 12:00:00", 78.32),

   (0, "USD/EUR", "2023-02-18 12:18:18", 0.93),
   (0, "USD/EUR", NULL, 0.95),
   (0, "USD/EUR", "2023-01-21 14:00:54", 1.02),
   (0, "USD/EUR", "2023-03-15 14:54:00", 0.96),

   (0, "EUR/JPY", "2023-04-23 12:12:32", 152.30),
   (0, "EUR/JPY", "2023-03-21 18:40:12", 154.00),
   (0, "EUR/JPY", "2023-03-25 12:50:00", 157.37),
   (0, "EUR/JPY", "2023-04-28 12:45:00", 154.34),

   (0, "EUR/MXN", "2023-04-20 12:25:00", 15.45),
   (0, "EUR/MXN", "2023-04-25 15:24:20", 16.24),
   (0, "EUR/MXN", "2023-04-28 12:00:00", NULL),
   (0, "EUR/MXN", "2023-04-26 20:10:08", 18.12),

   (0, "USD/SEK", "2023-04-20 14:35:35", 10.30),
   (0, "USD/SEK", NULL, 10.36),
   (0, "USD/SEK", "2023-04-20 16:35:35", 10.28),
   (0, "USD/SEK", "2023-04-21 21:00:00", 10.32);