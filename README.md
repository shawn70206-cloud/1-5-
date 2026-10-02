# 1-5-

## Supabase 雲端同步

1. 在 Supabase 專案的 SQL Editor 執行 `supabase-setup.sql`。
2. 在 Authentication 設定關閉公開註冊，並由管理者建立需要使用的帳號。任何已建立的登入帳號都能讀寫這份共用名單。
3. 從 Supabase 專案設定取得 Project URL 與 publishable/anon key，填入 `index.html` 的 `SUPABASE_URL` 和 `SUPABASE_ANON_KEY`。
4. 部署網站。登入雲端後，新增、編輯、刪除及復原會同步到 Supabase；未設定雲端時仍使用本機瀏覽器儲存。

不要將 `service_role` key 放進前端。此頁目前仍在 `index.html` 內包含初始樹狀名單，因此 Supabase 的登入限制不會隱藏這份原始碼內容。雲端目前是單份共用資料，若多人同時編輯，較晚儲存的版本會覆蓋較早版本。