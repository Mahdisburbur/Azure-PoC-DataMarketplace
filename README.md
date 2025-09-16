# Layer 4: Analytics & Dashboard

## وظیفه اصلی
تحلیل داده و ارائه داشبوردهای تعاملی برای کاربران.

## ابزارهای مورد استفاده
- Azure Synapse Analytics  
- Power BI  
- Azure API Management

## وضعیت PoC
داشبورد آزمایشی ساخته شده و از طریق API Management قابل دسترسی است.


## مراحل اجرا (Step-by-Step)
1. دستور زیر را برای ایجاد Synapse و API Management اجرا کنید:
   ```bash
   terraform init
   terraform apply
   ```
2. وارد Azure Portal شوید و بررسی کنید که **Synapse Workspace** و **API Management** ایجاد شده‌اند.
3. یک Query ساده در Synapse اجرا کنید و نتیجه را به Power BI متصل نمایید.
4. داشبورد Power BI را منتشر کرده و از طریق API Management قابل دسترسی کنید.
