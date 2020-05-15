.class public Landroid/speech/tts/TtsEngines;
.super Ljava/lang/Object;
.source "TtsEngines.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TtsEngines$EngineInfoComparator;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOCALE_DELIMITER_NEW:Ljava/lang/String; = "_"

.field private static final LOCALE_DELIMITER_OLD:Ljava/lang/String; = "-"

.field private static final TAG:Ljava/lang/String; = "TtsEngines"

.field private static final XML_TAG_NAME:Ljava/lang/String; = "tts-engine"

.field private static final sNormalizeCountry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNormalizeLanguage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v0, "normalizeLanguage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 86
    .local v5, "language":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_1

    .line 87
    :catch_0
    move-exception v6

    .line 88
    .local v6, "e":Ljava/util/MissingResourceException;
    nop

    .line 84
    .end local v5    # "language":Ljava/lang/String;
    .end local v6    # "e":Ljava/util/MissingResourceException;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v1, "normalizeCountry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_2
    if-ge v3, v4, :cond_1

    aget-object v5, v2, v3

    .line 96
    .local v5, "country":Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/util/Locale;

    const-string v7, ""

    invoke-direct {v6, v7, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    goto :goto_3

    .line 97
    :catch_1
    move-exception v6

    .line 98
    .restart local v6    # "e":Ljava/util/MissingResourceException;
    nop

    .line 94
    .end local v5    # "country":Ljava/lang/String;
    .end local v6    # "e":Ljava/util/MissingResourceException;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 101
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    .line 102
    .end local v0    # "normalizeLanguage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "normalizeCountry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method private getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 4
    .param p1, "resolve"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 278
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 279
    .local v0, "service":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_1

    .line 280
    new-instance v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    invoke-direct {v1}, Landroid/speech/tts/TextToSpeech$EngineInfo;-><init>()V

    .line 283
    .local v1, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    .line 284
    invoke-virtual {v0, p2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 285
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    .line 286
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getIconResource()I

    move-result v3

    iput v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->icon:I

    .line 287
    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    iput v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->priority:I

    .line 288
    invoke-direct {p0, v0}, Landroid/speech/tts/TtsEngines;->isSystemEngine(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    iput-boolean v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    .line 289
    return-object v1

    .line 292
    .end local v1    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private isSystemEngine(Landroid/content/pm/ServiceInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;

    .line 179
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 180
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static normalizeTTSLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 4
    .param p0, "ttsLocale"    # Ljava/util/Locale;

    .line 440
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "language":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    sget-object v1, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 443
    .local v1, "normalizedLanguage":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 444
    move-object v0, v1

    .line 448
    .end local v1    # "normalizedLanguage":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "country":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 450
    sget-object v2, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 451
    .local v2, "normalizedCountry":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 452
    move-object v1, v2

    .line 455
    .end local v2    # "normalizedCountry":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "prefValue"    # Ljava/lang/String;
    .param p1, "engineName"    # Ljava/lang/String;

    .line 494
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 495
    return-object v1

    .line 498
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "prefValues":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 501
    .local v5, "value":Ljava/lang/String;
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 502
    .local v6, "delimiter":I
    if-lez v6, :cond_1

    .line 503
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 504
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 500
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "delimiter":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 509
    :cond_2
    return-object v1
.end method

.method private settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 7
    .param p1, "si"    # Landroid/content/pm/ServiceInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 230
    const/4 v0, 0x0

    move-object v1, v0

    .line 232
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v2, "android.speech.tts"

    invoke-virtual {p1, p2, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 233
    if-nez v1, :cond_1

    .line 234
    const-string v2, "TtsEngines"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No meta-data found for :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    nop

    .line 271
    if-eqz v1, :cond_0

    .line 272
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 235
    :cond_0
    return-object v0

    .line 238
    :cond_1
    :try_start_1
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 241
    .local v2, "res":Landroid/content/res/Resources;
    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .line 241
    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_6

    .line 242
    const/4 v3, 0x2

    if-ne v4, v3, :cond_2

    .line 243
    const-string/jumbo v3, "tts-engine"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 244
    const-string v3, "TtsEngines"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " uses unknown tag :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    nop

    .line 271
    if-eqz v1, :cond_3

    .line 272
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 246
    :cond_3
    return-object v0

    .line 249
    :cond_4
    :try_start_2
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 250
    .local v3, "attrs":Landroid/util/AttributeSet;
    sget-object v5, Lcom/android/internal/R$styleable;->TextToSpeechEngine:[I

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 252
    .local v5, "array":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, "settings":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    nop

    .line 271
    if-eqz v1, :cond_5

    .line 272
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 256
    :cond_5
    return-object v6

    .line 260
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "array":Landroid/content/res/TypedArray;
    .end local v6    # "settings":Ljava/lang/String;
    :cond_6
    nop

    .line 271
    if-eqz v1, :cond_7

    .line 272
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 260
    :cond_7
    return-object v0

    .line 271
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v4    # "type":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "TtsEngines"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing metadata for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    nop

    .line 271
    if-eqz v1, :cond_8

    .line 272
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 269
    :cond_8
    return-object v0

    .line 264
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 265
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v3, "TtsEngines"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing metadata for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 266
    nop

    .line 271
    if-eqz v1, :cond_9

    .line 272
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 266
    :cond_9
    return-object v0

    .line 261
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    .line 262
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string v3, "TtsEngines"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load resources for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 263
    nop

    .line 271
    if-eqz v1, :cond_a

    .line 272
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 263
    :cond_a
    return-object v0

    .line 271
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v1, :cond_b

    .line 272
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_b
    throw v0
.end method

.method public static toOldLocaleStringFormat(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 471
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "ret":[Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 476
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 477
    const/4 v1, 0x2

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    return-object v0

    .line 480
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Ljava/util/MissingResourceException;
    const-string v2, "eng"

    const-string v3, "USA"

    const-string v4, ""

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "list"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .local v0, "newPrefList":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 546
    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "prefValues":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 550
    .local v3, "first":Z
    const/4 v4, 0x0

    .line 551
    .local v4, "found":Z
    array-length v5, v1

    const/4 v6, 0x0

    move v7, v3

    move v3, v6

    .end local v3    # "first":Z
    .local v7, "first":Z
    :goto_0
    const/16 v8, 0x2c

    if-ge v3, v5, :cond_5

    aget-object v9, v1, v3

    .line 552
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 553
    .local v10, "delimiter":I
    if-lez v10, :cond_4

    .line 554
    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 555
    if-eqz v7, :cond_1

    .line 556
    const/4 v7, 0x0

    goto :goto_1

    .line 558
    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 560
    :goto_1
    const/4 v4, 0x1

    .line 561
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 563
    :cond_2
    if-eqz v7, :cond_3

    .line 564
    const/4 v7, 0x0

    goto :goto_2

    .line 566
    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    :goto_2
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "delimiter":I
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 574
    :cond_5
    if-nez v4, :cond_6

    .line 577
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .end local v1    # "prefValues":[Ljava/lang/String;
    .end local v4    # "found":Z
    .end local v7    # "first":Z
    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getDefaultEngine()Ljava/lang/String;
    .locals 2

    .line 114
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_synth"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "engine":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 139
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 146
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 147
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v3, v0}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v3

    return-object v3

    .line 150
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public getEngines()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 160
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 162
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 163
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 165
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    .local v3, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 168
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5, v0}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v6

    .line 169
    .local v6, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    if-eqz v6, :cond_1

    .line 170
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    :cond_1
    goto :goto_0

    .line 173
    :cond_2
    sget-object v4, Landroid/speech/tts/TtsEngines$EngineInfoComparator;->INSTANCE:Landroid/speech/tts/TtsEngines$EngineInfoComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    return-object v3
.end method

.method public getHighestRankedEngineName()Ljava/lang/String;
    .locals 3

    .line 124
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    .line 126
    .local v0, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-eqz v2, :cond_0

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    return-object v1

    .line 130
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p1, "engineName"    # Ljava/lang/String;

    .line 331
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    .line 332
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p1, "engineName"    # Ljava/lang/String;
    .param p2, "prefValue"    # Ljava/lang/String;

    .line 338
    invoke-static {p2, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "localeString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    return-object v1

    .line 347
    :cond_0
    invoke-virtual {p0, v0}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 348
    .local v1, "result":Ljava/util/Locale;
    if-nez v1, :cond_1

    .line 349
    const-string v2, "TtsEngines"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse locale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", returning en_US instead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 355
    :cond_1
    return-object v1
.end method

.method public getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "engine"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 199
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const v2, 0x10080

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 206
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 207
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 208
    .local v3, "service":Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_0

    .line 209
    invoke-direct {p0, v3, v0}, Landroid/speech/tts/TtsEngines;->settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "settings":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 211
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v5, "i":Landroid/content/Intent;
    invoke-virtual {v5, p1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    return-object v5

    .line 218
    .end local v3    # "service":Landroid/content/pm/ServiceInfo;
    .end local v4    # "settings":Ljava/lang/String;
    .end local v5    # "i":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public isEngineInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "engine"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 188
    return v0

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method public isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z
    .locals 2
    .param p1, "engineName"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    .line 368
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 11
    .param p1, "localeString"    # Ljava/lang/String;

    .line 380
    const-string v0, ""

    .local v0, "language":Ljava/lang/String;
    const-string v1, ""

    .local v1, "country":Ljava/lang/String;
    const-string v2, ""

    .line 381
    .local v2, "variant":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 382
    const-string v3, "[-_]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "split":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 385
    array-length v5, v3

    if-nez v5, :cond_0

    .line 386
    const-string v5, "TtsEngines"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to convert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to a valid Locale object. Only separators"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-object v4

    .line 390
    :cond_0
    array-length v5, v3

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    .line 391
    const-string v5, "TtsEngines"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to convert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to a valid Locale object. Too many separators"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-object v4

    .line 395
    :cond_1
    array-length v5, v3

    const/4 v7, 0x2

    if-lt v5, v7, :cond_2

    .line 396
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 398
    :cond_2
    array-length v5, v3

    if-lt v5, v6, :cond_3

    .line 399
    aget-object v2, v3, v7

    .line 404
    .end local v3    # "split":[Ljava/lang/String;
    :cond_3
    sget-object v3, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 405
    .local v3, "normalizedLanguage":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 406
    move-object v0, v3

    .line 409
    :cond_4
    sget-object v5, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 410
    .local v5, "normalizedCountry":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 411
    move-object v1, v5

    .line 417
    :cond_5
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .local v6, "result":Ljava/util/Locale;
    :try_start_0
    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    .line 420
    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    return-object v6

    .line 422
    :catch_0
    move-exception v7

    .line 423
    .local v7, "e":Ljava/util/MissingResourceException;
    const-string v8, "TtsEngines"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to convert "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to a valid Locale object."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-object v4
.end method

.method public declared-synchronized updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 5
    .param p1, "engineName"    # Ljava/lang/String;
    .param p2, "newLocale"    # Ljava/util/Locale;

    monitor-enter p0

    .line 518
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "prefList":Ljava/lang/String;
    nop

    .line 526
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 525
    :goto_0
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TtsEngines;->updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "newPrefList":Ljava/lang/String;
    iget-object v2, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tts_default_locale"

    .line 531
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 530
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    monitor-exit p0

    return-void

    .line 517
    .end local v0    # "prefList":Ljava/lang/String;
    .end local v1    # "newPrefList":Ljava/lang/String;
    .end local p1    # "engineName":Ljava/lang/String;
    .end local p2    # "newLocale":Ljava/util/Locale;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 517
    .end local p0    # "this":Landroid/speech/tts/TtsEngines;
    throw p1
.end method
