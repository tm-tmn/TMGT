# TM Guitar (TMGT)

เว็บเก็บเพลง คอร์ด/เนื้อร้อง เพลย์ลิสต์ และค่าซาวด์ต่อเพลง (กีตาร์ + Boss GT-1) พร้อมโหมดเล่นบนเวที

- `index.html` ทั้งแอปอยู่ในไฟล์เดียว (HTML/CSS/JS ไม่ต้อง build)
- `config.js` URL และ publishable key ของ Supabase
- `supabase/migrations/` ตาราง `gm_items` + Row Level Security (ผู้ใช้เห็นเฉพาะข้อมูลของตัวเอง)

## Deploy บน Vercel
Import repo นี้ใน Vercel → Framework Preset: **Other** → ไม่ต้องตั้ง Build Command → Deploy

## หลัง deploy ครั้งแรก
ใน Supabase → Authentication → URL Configuration ตั้ง **Site URL** เป็นโดเมน Vercel (เช่น `https://tmgt.vercel.app`) เพื่อให้ลิงก์ยืนยันอีเมลพากลับมาที่เว็บ

## รูปแบบเนื้อเพลง
```
# Verse
[Am]ฝนตก[F]ที่หน้าต่าง
```
คอร์ดอยู่ในวงเล็บเหลี่ยมหน้าพยางค์ที่เปลี่ยน, `#` ขึ้นต้นบรรทัดคือชื่อท่อน
