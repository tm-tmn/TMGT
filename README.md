# TM Guitar (TMGT)

เว็บเก็บเพลง คอร์ด/เนื้อร้อง เพลย์ลิสต์ และค่าซาวด์ต่อเพลง (กีตาร์ + Boss GT-1) พร้อมโหมดเล่นบนเวที

- `index.html` ทั้งแอปอยู่ในไฟล์เดียว (HTML/CSS/JS ไม่ต้อง build)
- `config.js` Google OAuth Client ID
- ข้อมูลเก็บเป็นไฟล์ `tm-guitar.json` ใน **Google Drive ของผู้ใช้** (โฟลเดอร์ซ่อน appDataFolder แอปเห็นเฉพาะไฟล์ของตัวเอง)

## ตั้งค่า Google (ครั้งเดียว)
1. เปิด https://console.cloud.google.com แล้วสร้างโปรเจกต์ใหม่ (ชื่ออะไรก็ได้)
2. APIs & Services → Library → เปิด **Google Drive API**
3. APIs & Services → OAuth consent screen (หรือ Google Auth Platform) → User type **External** → ใส่ชื่อแอปและอีเมล → Scopes เพิ่ม `drive.appdata`, `openid`, `email` → Audience กด **Publish app** (ถ้าไม่ publish เป็น Testing ต้องเพิ่มอีเมลผู้ใช้เป็น Test user และโทเคนหมดอายุเร็ว)
4. Credentials → Create credentials → **OAuth client ID** → Application type **Web application** → Authorized JavaScript origins เพิ่ม `https://tmgt7.vercel.app` (และ `http://localhost:3000` ถ้าจะทดสอบในเครื่อง) → Create
5. คัดลอก Client ID (ลงท้าย `.apps.googleusercontent.com`) ไปใส่ใน `config.js` แล้ว push

## ข้อควรรู้
- การเชื่อมต่อ Google หมดอายุทุก 1 ชั่วโมง ระหว่างนั้นข้อมูลยังเก็บในหน้าเว็บ กด "ต่ออายุ" ที่มุมบนเพื่อบันทึกต่อ
- ถ้าแก้ข้อมูลจากสองเครื่องพร้อมกัน ฉบับที่บันทึกทีหลังจะทับฉบับก่อน

## Deploy บน Vercel
Import repo → Framework Preset **Other** → ไม่ต้องมี Build Command

## รูปแบบเนื้อเพลง
```
# Verse
[Am]ฝนตก[F]ที่หน้าต่าง
```
คอร์ดอยู่ในวงเล็บเหลี่ยมหน้าพยางค์ที่เปลี่ยน, `#` ขึ้นต้นบรรทัดคือชื่อท่อน
