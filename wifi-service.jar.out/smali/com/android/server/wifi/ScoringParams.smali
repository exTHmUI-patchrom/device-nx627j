.class public Lcom/android/server/wifi/ScoringParams;
.super Ljava/lang/Object;
.source "ScoringParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/ScoringParams$Values;
    }
.end annotation


# static fields
.field public static final BAND2:I = 0x960

.field public static final BAND5:I = 0x1388

.field private static final COMMA_KEY_VAL_STAR:Ljava/lang/String; = "^(,[A-Za-z_][A-Za-z0-9_]*=[0-9.:+-]+)*$"

.field private static final ENTRY:I = 0x1

.field private static final EXIT:I = 0x0

.field private static final GOOD:I = 0x3

.field private static final MINIMUM_5GHZ_BAND_FREQUENCY_IN_MEGAHERTZ:I = 0x1388

.field private static final SUFFICIENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiScoringParams"


# instance fields
.field private mVal:Lcom/android/server/wifi/ScoringParams$Values;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lcom/android/server/wifi/ScoringParams$Values;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/ScoringParams$Values;-><init>(Lcom/android/server/wifi/ScoringParams;)V

    iput-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lcom/android/server/wifi/ScoringParams$Values;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/ScoringParams$Values;-><init>(Lcom/android/server/wifi/ScoringParams;)V

    iput-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    .line 205
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScoringParams;->loadResources(Landroid/content/Context;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "facade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lcom/android/server/wifi/ScoringParams$Values;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/ScoringParams$Values;-><init>(Lcom/android/server/wifi/ScoringParams;)V

    iput-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScoringParams;->loadResources(Landroid/content/Context;)V

    .line 210
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/ScoringParams;->setupContentObserver(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Handler;)V

    .line 211
    return-void
.end method

.method private getRssiArray(I)[I
    .locals 1
    .param p1, "frequency"    # I

    .line 378
    const/16 v0, 0x1388

    if-ge p1, v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    iget-object v0, v0, Lcom/android/server/wifi/ScoringParams$Values;->rssi2:[I

    return-object v0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    iget-object v0, v0, Lcom/android/server/wifi/ScoringParams$Values;->rssi5:[I

    return-object v0
.end method

.method private loadResources(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 214
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    iget-object v0, v0, Lcom/android/server/wifi/ScoringParams$Values;->rssi2:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 216
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    iget-object v0, v0, Lcom/android/server/wifi/ScoringParams$Values;->rssi2:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e00ce

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 218
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    iget-object v0, v0, Lcom/android/server/wifi/ScoringParams$Values;->rssi2:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10e00d4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 220
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    iget-object v0, v0, Lcom/android/server/wifi/ScoringParams$Values;->rssi2:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x10e00d2

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 222
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    iget-object v0, v0, Lcom/android/server/wifi/ScoringParams$Values;->rssi5:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e00cd

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v2

    .line 224
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    iget-object v0, v0, Lcom/android/server/wifi/ScoringParams$Values;->rssi5:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v3

    .line 226
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    iget-object v0, v0, Lcom/android/server/wifi/ScoringParams$Values;->rssi5:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v4

    .line 228
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    iget-object v0, v0, Lcom/android/server/wifi/ScoringParams$Values;->rssi5:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v5

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    invoke-virtual {v0}, Lcom/android/server/wifi/ScoringParams$Values;->validate()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "WifiScoringParams"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent config_wifi_framework_ resources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method private setupContentObserver(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Handler;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "facade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 238
    move-object v7, p0

    .line 239
    .local v7, "self":Lcom/android/server/wifi/ScoringParams;
    invoke-virtual {v7}, Lcom/android/server/wifi/ScoringParams;->toString()Ljava/lang/String;

    move-result-object v8

    .line 240
    .local v8, "defaults":Ljava/lang/String;
    new-instance v9, Lcom/android/server/wifi/ScoringParams$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/ScoringParams$1;-><init>(Lcom/android/server/wifi/ScoringParams;Landroid/os/Handler;Lcom/android/server/wifi/FrameworkFacade;Landroid/content/Context;Lcom/android/server/wifi/ScoringParams;Ljava/lang/String;)V

    .line 253
    .local v0, "observer":Landroid/database/ContentObserver;
    const-string v1, "wifi_score_params"

    .line 254
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 253
    const/4 v2, 0x1

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 257
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 258
    return-void
.end method


# virtual methods
.method public getEntryRssi(I)I
    .locals 2
    .param p1, "frequencyMegaHertz"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScoringParams;->getRssiArray(I)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getExitRssi(I)I
    .locals 2
    .param p1, "frequencyMegaHertz"    # I

    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScoringParams;->getRssiArray(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getExperimentIdentifier()I
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    iget v0, v0, Lcom/android/server/wifi/ScoringParams$Values;->expid:I

    return v0
.end method

.method public getGoodRssi(I)I
    .locals 2
    .param p1, "frequencyMegaHertz"    # I

    .line 333
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScoringParams;->getRssiArray(I)[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getHorizonSeconds()I
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    iget v0, v0, Lcom/android/server/wifi/ScoringParams$Values;->horizon:I

    return v0
.end method

.method public getNudKnob()I
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    iget v0, v0, Lcom/android/server/wifi/ScoringParams$Values;->nud:I

    return v0
.end method

.method public getSufficientRssi(I)I
    .locals 2
    .param p1, "frequencyMegaHertz"    # I

    .line 326
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScoringParams;->getRssiArray(I)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getYippeeSkippyPacketsPerSecond()I
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    iget-object v0, v0, Lcom/android/server/wifi/ScoringParams$Values;->pps:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # Ljava/lang/String;

    .line 292
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 293
    :cond_0
    const-string v0, "[^A-Za-z_0-9=,:.+-]"

    const-string v1, "?"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "printable":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x62

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    invoke-virtual {v0}, Lcom/android/server/wifi/ScoringParams$Values;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;)Z
    .locals 4
    .param p1, "kvList"    # Ljava/lang/String;

    .line 269
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^(,[A-Za-z_][A-Za-z0-9_]*=[0-9.:+-]+)*$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 273
    return v2

    .line 275
    :cond_1
    new-instance v1, Lcom/android/server/wifi/ScoringParams$Values;

    iget-object v3, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;

    invoke-direct {v1, p0, v3}, Lcom/android/server/wifi/ScoringParams$Values;-><init>(Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/ScoringParams$Values;)V

    .line 277
    .local v1, "v":Lcom/android/server/wifi/ScoringParams$Values;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ScoringParams$Values;->parseString(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1}, Lcom/android/server/wifi/ScoringParams$Values;->validate()V

    .line 279
    iput-object v1, p0, Lcom/android/server/wifi/ScoringParams;->mVal:Lcom/android/server/wifi/ScoringParams$Values;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    return v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return v2

    .line 270
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "v":Lcom/android/server/wifi/ScoringParams$Values;
    :cond_2
    :goto_0
    return v0
.end method
