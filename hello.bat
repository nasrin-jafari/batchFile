REM @echo off
REM echo hello
:: pause
:: @echo off
:: start notepad.exe
::mkdir MyFolder
::rmdir MyFolder
:: rmdir /s /q MyFolder
:: /s	همه محتویات (زیرپوشه‌ها و فایل‌ها) رو هم حذف می‌کنه
:: /q	حالت بی‌صدا (quiet) — سؤال نمی‌پرسه

:: نوشتن متن در فایل
:: echo سلام! این فایل با batch ساخته شده. > note.txt

:: باز کردن فایل در نوت‌پد
::start notepad note.txt

:: if exist note.txt del notee.txt
:: del note.txt
::(
:: echo خط اول
:: echo خط دوم
:: echo خط سوم
:: ) > note.txt
:: start notepad note.txt
:: صبر کن 5 ثانیه بعد فایل پاک شه
REM timeout /t 5 > nul
REM del note.txt

REM echo فایل پاک شد.
REM pause
:: cd "D:\New folder (3)"
::@echo off
::for %%i in (1 2 3 4 5) do (
 ::   echo عدد %%i
:: )
:: pause
:: @echo off
:: set /p name=اسم شما چیه؟ 
:: echo سلام %name%
:: pause
@echo off

:: ===========================
:: 📝 آموزش نمادها و سوئیچ‌ها در Batch
:: ===========================

:: %name% → مقدار متغیر با نام name
set name=ali
echo hello %name%

:: %%i → متغیر حلقه داخل فایل Batch (برای for)
for %%i in (A B C) do (
    echo value: %%i
)

:: /p → گرفتن ورودی از کاربر با دستور set
set /p username=inter your name:
echo hello %username%

:: /t → استفاده در timeout برای صبر کردن
echo wait to 5s...
timeout /t 5 > nul

:: > → نوشتن خروجی در فایل (جایگزینی فایل)
echo this text write in file > file.txt

:: >> → اضافه کردن خروجی به فایل (بدون پاک کردن قبلی)
echo adde new line >> file.txt

:: < → خوندن ورودی از فایل (خیلی کمتر استفاده میشه)
:: not commonly used in simple batch files

:: /s → در rmdir برای حذف همه زیرپوشه‌ها و فایل‌ها
:: /q → حالت بی‌صدا بدون پرسیدن تأیید

:: حذف فولدر با همه محتویاتش بدون تأیید
rmdir /s /q MyFolder

:: if exist → بررسی وجود یک فایل یا فولدر
if exist file.txt (
    echo file founded
) else (
    echo file not found
)

:: cd → تغییر مسیر جاری
cd "C:\Windows"

:: mkdir → ساخت پوشه
mkdir NewFolder

:: del → حذف فایل
del file.txt

:: cls → پاک کردن صفحه نمایش cmd
cls

:: echo → چاپ کردن متن در ترمینال
echo this line nomal

:: pause → مکث تا وقتی کاربر کلیدی بزند
pause

:: exit → خروج از اسکریپت
:: exitasj

:: ===========================
:: ✅ پایان آموزش
:: ===========================
pause
