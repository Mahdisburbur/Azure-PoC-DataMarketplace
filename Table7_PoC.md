# معماری 8 لایه - نمونه‌سازی اثبات مفهوم (PoC) بر بستر سرویس‌های ابری Azure

| لایه معماری | وظیفه اصلی | ابزارها و سرویس‌های Azure در PoC | وضعیت | لینک روی GitHub |
|-------------|-------------|---------------------------------|--------|-----------------|
| استقرار خودکار منابع | IaC مبتنی بر Terraform | ایجاد منابع Event Hub، Databricks، Purview و API Management در کمتر از 20 دقیقه | ✅ پیاده‌سازی شد | [کد](./infra) |
| 1. ذخیره‌سازی و امنیت ابری | ذخیره‌سازی (داده‌های ساختار یافته و غیرساختار یافته)، رمزنگاری و IAM | Azure Blob Storage, Key Vault, Entra ID | بخشی پیاده‌سازی شده | [کد](./layer1-storage-security) |
| 2. حکمرانی و انطباق | سیاست‌گذاری، کیفیت، امنیت | Microsoft Purview, Azure Sentinel, IAM | جزئی پیاده‌سازی شد | [کد](./layer2-governance) |
| 3. منابع داده توزیع‌شده | دریافت داده‌های خام (IoT، سرویس‌ها، پایگاه‌ها) | Azure Event Hub, Apache Kafka | پیاده‌سازی شده (۴ دامنه) | [کد](./layer3-data-sources) |
| 4. مدیریت داده‌های دامنه‌ای | پردازش و پاک‌سازی داده ← تولید محصول داده | Azure Databricks (Spark clusters) | پیاده‌سازی شد (۴ دامنه) | [کد](./layer4-domain-data) |
| 5. اتصال و یکپارچه‌سازی | تجمیع داده، API، کاتالوگ | API Management, Purview Metadata Catalog | جزئی پیاده‌سازی شد | [کد](./layer5-integration) |
| 6. تحلیل هوشمند | ML و BI، داشبوردها | Power BI, MLflow | پیاده‌سازی شد (۳ داشبورد Power BI) | [کد](./layer6-analytics) |
| 7. مدیریت مالی و قراردادهای هوشمند | پرداخت، FinOps | مدل‌های ساده Pay-as-you-go | بیشتر مفهومی | [کد](./layer7-financial) |
| 8. تعامل با کاربران | UX، داشبورد، پورتال سلف‌سرویس | Swagger APIs, Power BI dashboards | پیاده‌سازی شد | [کد](./layer8-user-interface) |
