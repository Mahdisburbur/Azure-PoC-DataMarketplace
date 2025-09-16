#!/bin/bash

# نام پروژه
PROJECT="Azure-PoC-DataMarketplace"

# ایجاد پوشه اصلی
mkdir -p $PROJECT
cd $PROJECT || exit

# فایل‌های اصلی
echo "# Azure PoC - Data Marketplace" > README.md
echo "## Table 7 - Proof of Concept (PoC)" > Table7_PoC.md

# پوشه‌های لایه‌ها
mkdir -p infra \
layer1-storage-security \
layer2-governance \
layer3-data-sources \
layer4-domain-data \
layer5-integration \
layer6-analytics \
layer7-financial \
layer8-user-interface

# پیام نهایی
echo "✅ ساختار پروژه با موفقیت ایجاد شد:"
tree .
