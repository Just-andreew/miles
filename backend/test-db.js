const mysql = require('mysql2/promise');
require('dotenv').config();

(async () => {
  try {
    const conn = await mysql.createConnection({
      host: process.env.DB_HOST,
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
      database: process.env.DB_NAME
    });
    console.log("✅ Connected as:", process.env.DB_USER);
    const [rows] = await conn.query("SHOW TABLES;");
    console.log(rows);
    await conn.end();
  } catch (err) {
    console.error("❌ Connection failed:", err.message);
  }
})();

