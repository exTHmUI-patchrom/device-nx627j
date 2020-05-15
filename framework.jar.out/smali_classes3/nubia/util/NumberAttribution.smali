.class public Lnubia/util/NumberAttribution;
.super Ljava/lang/Object;
.source "NumberAttribution.java"


# static fields
.field private static final CITY:Ljava/lang/String; = "City"

.field private static final CITYID:Ljava/lang/String; = "CityID"

.field private static final CITY_ID_INDEX:I = 0x0

.field private static final CORP:Ljava/lang/String; = "Corp"

.field private static final CORPID:Ljava/lang/String; = "CorpID"

.field private static final CORP_ID_INDEX:I = 0x1

.field private static final CitiesTable:Ljava/lang/String; = "Cities"

.field private static final CorpTable:Ljava/lang/String; = "Corps"

.field private static final DBFilePath:Ljava/lang/String; = "/system/etc/mobilenuminmainland.db"

.field private static final LOG_TAG:Ljava/lang/String; = "NumberAttribution"

.field private static final Mobile:Ljava/lang/String; = "Mobile"

.field private static final NumbersTable:Ljava/lang/String; = "Numbers"

.field private static final PROVINCE:Ljava/lang/String; = "Province"

.field private static final SPACE:Ljava/lang/String; = " "

.field public static final WAIT:Ljava/lang/String; = ";"

.field private static mInstanceObjectSync:Ljava/lang/Object;

.field private static myInstance:Lnubia/util/NumberAttribution;

.field private static sCitiesWordBook:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCorpWordBook:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsDBReady:Z


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 98
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lnubia/util/NumberAttribution;->sCitiesWordBook:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lnubia/util/NumberAttribution;->sCorpWordBook:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnubia/util/NumberAttribution;->mInstanceObjectSync:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    .line 60
    invoke-direct {p0, p1}, Lnubia/util/NumberAttribution;->openDatabase(Landroid/content/Context;)V

    .line 62
    iget-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lnubia/util/NumberAttribution;->initCitiesWordBook()V

    .line 64
    invoke-direct {p0}, Lnubia/util/NumberAttribution;->initCorpWordBook()V

    .line 66
    :cond_0
    return-void
.end method

.method private closeDatabase()V
    .locals 1

    .line 246
    :try_start_0
    iget-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 252
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    .line 253
    return-void
.end method

.method private formatNumberArribution(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "numberArribution"    # Ljava/lang/String;

    .line 218
    move-object v0, p1

    .line 219
    .local v0, "formatedNumberArribution":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 220
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "provinceAndCity":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .end local v1    # "provinceAndCity":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "countryIso":Ljava/lang/String;
    const-string v1, "country_detector"

    .line 204
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 205
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    .line 207
    .local v2, "country":Landroid/location/Country;
    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 211
    .end local v2    # "country":Landroid/location/Country;
    :cond_0
    if-nez v0, :cond_1

    .line 212
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_1
    return-object v0
.end method

.method private getDBNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "realNumber"    # Ljava/lang/String;

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "structuredPhoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v1, 0x0

    .line 316
    .local v1, "nationalnumber":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 319
    .local v3, "tempnumber":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    const-string v5, "CN"

    invoke-virtual {v4, p1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v4
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 322
    goto :goto_0

    .line 321
    :catch_0
    move-exception v4

    .line 323
    :goto_0
    if-nez v0, :cond_0

    .line 324
    return-object v2

    .line 325
    :cond_0
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 327
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 328
    invoke-direct {p0, p1}, Lnubia/util/NumberAttribution;->isMobileNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 331
    :cond_1
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 332
    nop

    .line 333
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v4

    .line 332
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 335
    :cond_2
    if-eqz v1, :cond_3

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v2, p1

    .line 336
    .end local v3    # "tempnumber":Ljava/lang/String;
    .local v2, "tempnumber":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 329
    .end local v2    # "tempnumber":Ljava/lang/String;
    .restart local v3    # "tempnumber":Ljava/lang/String;
    :cond_4
    :goto_2
    return-object v2
.end method

.method public static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 178
    return-object v1

    .line 180
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 182
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v2

    .line 183
    .local v2, "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 184
    .local v3, "locale":Ljava/util/Locale;
    const-string v4, "CN"

    .line 188
    .local v4, "countryIso":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 189
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object v3, v5

    .line 190
    invoke-static {p0, v3}, Lnubia/util/NumberAttribution;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 194
    :catch_0
    move-exception v5

    goto :goto_1

    .line 192
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    .line 193
    .local v5, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v5, v3}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 197
    .local v1, "geoInfo":Ljava/lang/String;
    goto :goto_2

    .line 194
    .end local v1    # "geoInfo":Ljava/lang/String;
    .end local v5    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_1
    nop

    .line 195
    .local v5, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/NumberParseException;->printStackTrace()V

    .line 196
    nop

    .line 198
    .end local v5    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    .restart local v1    # "geoInfo":Ljava/lang/String;
    :goto_2
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lnubia/util/NumberAttribution;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 118
    sget-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    if-nez v0, :cond_1

    .line 119
    sget-object v0, Lnubia/util/NumberAttribution;->mInstanceObjectSync:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    sget-object v1, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Lnubia/util/NumberAttribution;

    invoke-direct {v1, p0}, Lnubia/util/NumberAttribution;-><init>(Landroid/content/Context;)V

    sput-object v1, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    .line 123
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 125
    :cond_1
    :goto_0
    sget-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    return-object v0
.end method

.method private initCitiesWordBook()V
    .locals 10

    .line 88
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 89
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "Cities"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 90
    const/4 v9, 0x0

    .line 91
    .local v9, "city":Ljava/lang/String;
    iget-object v2, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CityID"

    const-string v3, "Province"

    const-string v4, "City"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 93
    .local v1, "cityCursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 94
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    sget-object v3, Lnubia/util/NumberAttribution;->sCitiesWordBook:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 91
    :catch_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :goto_1
    if-eqz v1, :cond_0

    invoke-static {v2, v1}, Lnubia/util/NumberAttribution;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    throw v3

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v2, v1}, Lnubia/util/NumberAttribution;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 99
    .end local v1    # "cityCursor":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private initCorpWordBook()V
    .locals 10

    .line 102
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 103
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "Corps"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 104
    const/4 v9, 0x0

    .line 105
    .local v9, "corp":Ljava/lang/String;
    iget-object v2, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CorpID"

    const-string v3, "Corp"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 107
    .local v1, "corpCursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 108
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    sget-object v3, Lnubia/util/NumberAttribution;->sCorpWordBook:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    .line 110
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 105
    :catch_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_1
    if-eqz v1, :cond_0

    invoke-static {v2, v1}, Lnubia/util/NumberAttribution;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    throw v3

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v2, v1}, Lnubia/util/NumberAttribution;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 114
    .end local v1    # "corpCursor":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private isMobileNumber(Ljava/lang/String;)Z
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .line 292
    const-string v0, "1(?:[38]\\d|4[579]|5[0-35-9]|7[036-8])\\d{8}"

    .line 293
    .local v0, "regex":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 294
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 295
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method private openDatabase(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 231
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/mobilenuminmainland.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "/system/etc/mobilenuminmainland.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 234
    iput-boolean v2, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    goto :goto_0

    .line 236
    :cond_0
    invoke-direct {p0}, Lnubia/util/NumberAttribution;->closeDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    goto :goto_1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NumberAttribution"

    const-string v2, "Failed to open GeoCoding database!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0}, Lnubia/util/NumberAttribution;->closeDatabase()V

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private queryId(Ljava/lang/String;)[I
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .line 277
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 278
    .local v0, "arryID":[I
    if-nez p1, :cond_0

    .line 279
    return-object v0

    .line 281
    :cond_0
    iget-object v1, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT CityID, CorpID FROM Numbers WHERE Mobile = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 283
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 284
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v0, v5

    .line 285
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 287
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 281
    :catch_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v2, v1}, Lnubia/util/NumberAttribution;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v3

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-static {v2, v1}, Lnubia/util/NumberAttribution;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 288
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_3
    return-object v0
.end method

.method private splitPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 301
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "numbers":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 303
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 306
    .end local v0    # "numbers":[Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public canQuery()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    return v0
.end method

.method public queryAttributionByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .line 152
    const-string v0, ""

    .line 153
    .local v0, "numberArribution":Ljava/lang/String;
    iget-object v1, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 154
    return-object v0

    .line 156
    :cond_0
    invoke-direct {p0, p2}, Lnubia/util/NumberAttribution;->splitPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 157
    invoke-direct {p0, p2}, Lnubia/util/NumberAttribution;->getDBNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "tmpnumber":Ljava/lang/String;
    invoke-direct {p0, v1}, Lnubia/util/NumberAttribution;->queryId(Ljava/lang/String;)[I

    move-result-object v2

    .line 159
    .local v2, "arryID":[I
    if-eqz v2, :cond_2

    .line 160
    const/4 v3, 0x0

    aget v3, v2, v3

    .line 161
    .local v3, "cityID":I
    const/4 v4, 0x1

    aget v4, v2, v4

    .line 162
    .local v4, "corpID":I
    if-lez v3, :cond_1

    .line 163
    sget-object v5, Lnubia/util/NumberAttribution;->sCitiesWordBook:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lnubia/util/NumberAttribution;->formatNumberArribution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_1
    if-lez v4, :cond_2

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lnubia/util/NumberAttribution;->sCorpWordBook:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .end local v3    # "cityID":I
    .end local v4    # "corpID":I
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    invoke-static {p1, p2}, Lnubia/util/NumberAttribution;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_3
    return-object v0
.end method

.method public queryAttributionByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lnubia/util/NumberAttribution;->queryAttributionByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
