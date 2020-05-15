.class public Lcom/android/server/wifi/WifiGbk;
.super Ljava/lang/Object;
.source "WifiGbk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiGbk$BssCache;
    }
.end annotation


# static fields
.field private static final BSSID_REGIX:Ljava/lang/String; = "(?:[0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}"

.field private static final DBG:Z = true

.field public static final MAX_SSID_LENGTH:I = 0x20

.field public static final MAX_SSID_UTF_LENGTH:I = 0x30

.field private static final SCAN_CACHE_EXPIRATION_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiGbk"

.field private static final mBssCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/WifiGbk$BssCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBssRandom:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiGbk;->mBssCacheList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiGbk;->mBssRandom:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiGbk;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOrUpdateBssCache(Landroid/net/wifi/ScanResult;)Z
    .locals 5
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .line 215
    sget-object v0, Lcom/android/server/wifi/WifiGbk;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->getOctets()[B

    move-result-object v1

    .line 217
    .local v1, "ssidBytes":[B
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiGbk;->getBssCache(Ljava/lang/String;[B)Lcom/android/server/wifi/WifiGbk$BssCache;

    move-result-object v2

    .line 218
    .local v2, "bss":Lcom/android/server/wifi/WifiGbk$BssCache;
    if-nez v2, :cond_0

    .line 219
    new-instance v3, Lcom/android/server/wifi/WifiGbk$BssCache;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiGbk$BssCache;-><init>(Landroid/net/wifi/ScanResult;)V

    move-object v2, v3

    .line 220
    invoke-static {v2}, Lcom/android/server/wifi/WifiGbk;->isValid(Lcom/android/server/wifi/WifiGbk$BssCache;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    sget-object v3, Lcom/android/server/wifi/WifiGbk;->mBssCacheList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding bss - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/WifiGbk;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v2, p0}, Lcom/android/server/wifi/WifiGbk$BssCache;->update(Landroid/net/wifi/ScanResult;)V

    .line 227
    .end local v1    # "ssidBytes":[B
    .end local v2    # "bss":Lcom/android/server/wifi/WifiGbk$BssCache;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 228
    const/4 v0, 0x1

    return v0

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ageBssCache()V
    .locals 5

    .line 236
    sget-object v0, Lcom/android/server/wifi/WifiGbk;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/WifiGbk;->mBssCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 238
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/WifiGbk$BssCache;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiGbk$BssCache;

    .line 240
    .local v2, "bss":Lcom/android/server/wifi/WifiGbk$BssCache;
    iget v3, v2, Lcom/android/server/wifi/WifiGbk$BssCache;->expire_count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/wifi/WifiGbk$BssCache;->expire_count:I

    .line 241
    iget v3, v2, Lcom/android/server/wifi/WifiGbk$BssCache;->expire_count:I

    if-gtz v3, :cond_0

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing bss - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/WifiGbk;->logd(Ljava/lang/String;)V

    .line 245
    .end local v2    # "bss":Lcom/android/server/wifi/WifiGbk$BssCache;
    :cond_0
    goto :goto_0

    .line 246
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/WifiGbk$BssCache;>;"
    :cond_1
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static clearBssCache()V
    .locals 2

    .line 254
    sget-object v0, Lcom/android/server/wifi/WifiGbk;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/WifiGbk;->mBssCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 256
    sget-object v1, Lcom/android/server/wifi/WifiGbk;->mBssRandom:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 257
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createWifiSsidFromByteArray([B)Landroid/net/wifi/WifiSsid;
    .locals 2
    .param p0, "ssidBytes"    # [B

    .line 357
    invoke-static {p0}, Lcom/android/server/wifi/WifiGbk;->isGbk([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {p0}, Lcom/android/server/wifi/WifiGbk;->toUtf([B)[B

    move-result-object v0

    .line 359
    .local v0, "utfBytes":[B
    if-eqz v0, :cond_0

    .line 360
    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->createFromByteArray([B)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    return-object v1

    .line 363
    .end local v0    # "utfBytes":[B
    :cond_0
    invoke-static {p0}, Landroid/net/wifi/WifiSsid;->createFromByteArray([B)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    return-object v0
.end method

.method public static encodeSsid([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "ssidBytes"    # [B
    .param p1, "name"    # Ljava/lang/String;

    .line 455
    const/4 v0, 0x0

    .line 457
    .local v0, "ssid":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 458
    .local v1, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 459
    .local v2, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 460
    .local v3, "decoded":Ljava/nio/CharBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 463
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    .end local v2    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v3    # "decoded":Ljava/nio/CharBuffer;
    :goto_0
    goto :goto_1

    .line 462
    :catch_0
    move-exception v1

    goto :goto_1

    .line 461
    :catch_1
    move-exception v1

    goto :goto_0

    .line 465
    :goto_1
    const-string v1, "UTF-8"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    const/16 v1, 0x30

    goto :goto_2

    :cond_0
    const/16 v1, 0x20

    .line 467
    .local v1, "maxlen":I
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_1

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encodeSsid - converted SSID exceed max length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ssid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiGbk;->loge(Ljava/lang/String;)V

    .line 470
    const/4 v0, 0x0

    .line 473
    :cond_1
    return-object v0
.end method

.method private static getBssCache(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/WifiGbk$BssCache;
    .locals 3
    .param p0, "BSSID"    # Ljava/lang/String;
    .param p1, "SSID"    # Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/android/server/wifi/WifiGbk;->mBssCacheList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiGbk$BssCache;

    .line 147
    .local v1, "bss":Lcom/android/server/wifi/WifiGbk$BssCache;
    invoke-virtual {v1, p0, p1}, Lcom/android/server/wifi/WifiGbk$BssCache;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    return-object v1

    .line 150
    .end local v1    # "bss":Lcom/android/server/wifi/WifiGbk$BssCache;
    :cond_0
    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getBssCache(Ljava/lang/String;[B)Lcom/android/server/wifi/WifiGbk$BssCache;
    .locals 3
    .param p0, "BSSID"    # Ljava/lang/String;
    .param p1, "ssidBytes"    # [B

    .line 134
    sget-object v0, Lcom/android/server/wifi/WifiGbk;->mBssCacheList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiGbk$BssCache;

    .line 135
    .local v1, "bss":Lcom/android/server/wifi/WifiGbk$BssCache;
    invoke-virtual {v1, p0, p1}, Lcom/android/server/wifi/WifiGbk$BssCache;->matches(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    return-object v1

    .line 138
    .end local v1    # "bss":Lcom/android/server/wifi/WifiGbk$BssCache;
    :cond_0
    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getBssRandom(Ljava/lang/String;I)I
    .locals 6
    .param p0, "SSID"    # Ljava/lang/String;
    .param p1, "security"    # I

    .line 85
    sget-object v0, Lcom/android/server/wifi/WifiGbk;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiGbk$BssCache;->bssToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiGbk;->mBssRandom:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 88
    .local v2, "rb":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 89
    sget-object v3, Lcom/android/server/wifi/WifiGbk;->mBssRandom:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit v0

    return v4

    .line 93
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 94
    .local v3, "rbInt":I
    add-int/lit8 v3, v3, 0x1

    .line 95
    sget-object v4, Lcom/android/server/wifi/WifiGbk;->mBssRandom:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    monitor-exit v0

    return v3

    .line 98
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "rb":Ljava/lang/Integer;
    .end local v3    # "rbInt":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getPreferredBssCache(Ljava/lang/String;I)Lcom/android/server/wifi/WifiGbk$BssCache;
    .locals 8
    .param p0, "SSID"    # Ljava/lang/String;
    .param p1, "security"    # I

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "gbkCount":I
    const/4 v1, 0x0

    .line 160
    .local v1, "utfCount":I
    const/4 v2, 0x0

    .line 161
    .local v2, "gbkBss":Lcom/android/server/wifi/WifiGbk$BssCache;
    const/4 v3, 0x0

    .line 164
    .local v3, "utfBss":Lcom/android/server/wifi/WifiGbk$BssCache;
    sget-object v4, Lcom/android/server/wifi/WifiGbk;->mBssCacheList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiGbk$BssCache;

    .line 165
    .local v5, "bss":Lcom/android/server/wifi/WifiGbk$BssCache;
    invoke-virtual {v5, p0, p1}, Lcom/android/server/wifi/WifiGbk$BssCache;->matches(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 166
    iget-boolean v6, v5, Lcom/android/server/wifi/WifiGbk$BssCache;->isGbk:Z

    if-eqz v6, :cond_1

    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 169
    if-eqz v2, :cond_0

    .line 170
    iget v6, v2, Lcom/android/server/wifi/WifiGbk$BssCache;->level:I

    iget v7, v5, Lcom/android/server/wifi/WifiGbk$BssCache;->level:I

    if-le v6, v7, :cond_3

    .line 171
    move-object v2, v5

    goto :goto_1

    .line 174
    :cond_0
    move-object v2, v5

    goto :goto_1

    .line 177
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 179
    if-eqz v3, :cond_2

    .line 180
    iget v6, v3, Lcom/android/server/wifi/WifiGbk$BssCache;->level:I

    iget v7, v5, Lcom/android/server/wifi/WifiGbk$BssCache;->level:I

    if-le v6, v7, :cond_3

    .line 181
    move-object v3, v5

    goto :goto_1

    .line 184
    :cond_2
    move-object v3, v5

    .line 188
    .end local v5    # "bss":Lcom/android/server/wifi/WifiGbk$BssCache;
    :cond_3
    :goto_1
    goto :goto_0

    .line 190
    :cond_4
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreferredBssCache - ssid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " security="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {p1}, Lcom/android/server/wifi/WifiGbk$BssCache;->securityToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " gbk="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " utf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-static {v4}, Lcom/android/server/wifi/WifiGbk;->logd(Ljava/lang/String;)V

    .line 195
    return-object v2

    .line 196
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 197
    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiGbk;->getBssRandom(Ljava/lang/String;I)I

    move-result v4

    .line 198
    .local v4, "rand":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreferredBssCache - ssid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " security="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {p1}, Lcom/android/server/wifi/WifiGbk$BssCache;->securityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " gbk="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " utf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rand="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-static {v5}, Lcom/android/server/wifi/WifiGbk;->logd(Ljava/lang/String;)V

    .line 204
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_6

    .line 205
    return-object v2

    .line 208
    .end local v4    # "rand":I
    :cond_6
    return-object v3
.end method

.method public static getRandUtfOrGbkBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "SSID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "utfSsidValid":Z
    const/4 v1, 0x0

    .line 320
    .local v1, "gbkSsidValid":Z
    invoke-static {p0}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 321
    .local v2, "utfBytes":[B
    if-eqz v2, :cond_7

    array-length v3, v2

    const/16 v4, 0x30

    if-gt v3, v4, :cond_7

    .line 326
    const/16 v3, 0x20

    if-eqz v2, :cond_0

    array-length v4, v2

    if-gt v4, v3, :cond_0

    .line 327
    const/4 v0, 0x1

    .line 331
    :cond_0
    invoke-static {v2}, Lcom/android/server/wifi/WifiGbk;->isAllAscii([B)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const-string v4, "GBK"

    invoke-static {p0, v4}, Lcom/android/server/wifi/WifiGbk;->getSsidBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 332
    .local v4, "gbkBytes":[B
    :goto_0
    if-eqz v4, :cond_2

    array-length v5, v4

    if-gt v5, v3, :cond_2

    .line 333
    const/4 v1, 0x1

    .line 336
    :cond_2
    const/4 v3, 0x1

    if-nez v0, :cond_3

    if-ne v1, v3, :cond_3

    .line 337
    return-object v4

    .line 338
    :cond_3
    if-ne v0, v3, :cond_4

    if-nez v1, :cond_4

    .line 339
    return-object v2

    .line 340
    :cond_4
    if-ne v0, v3, :cond_6

    if-ne v1, v3, :cond_6

    .line 342
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/server/wifi/WifiGbk;->getBssRandom(Ljava/lang/String;I)I

    move-result v3

    .line 343
    .local v3, "rand":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRandUtfOrGbkBytes - ssid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " rand="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/WifiGbk;->logd(Ljava/lang/String;)V

    .line 344
    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_5

    move-object v5, v4

    goto :goto_1

    :cond_5
    move-object v5, v2

    :goto_1
    return-object v5

    .line 347
    .end local v3    # "rand":I
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No valid utfBytes or gbkBytes for ssid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 323
    .end local v4    # "gbkBytes":[B
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exceed max length 48, ssid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getRealSsid(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 6
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 284
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "bssid":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "(?:[0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 286
    .local v1, "setbssid":Z
    :goto_0
    const/4 v2, 0x0

    .line 288
    .local v2, "bss":Lcom/android/server/wifi/WifiGbk$BssCache;
    sget-object v3, Lcom/android/server/wifi/WifiGbk;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 289
    if-eqz v1, :cond_1

    .line 290
    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiGbk;->getBssCache(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/WifiGbk$BssCache;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    .line 302
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 292
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/wifi/WifiGbk$BssCache;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiGbk;->getPreferredBssCache(Ljava/lang/String;I)Lcom/android/server/wifi/WifiGbk$BssCache;

    move-result-object v4

    move-object v2, v4

    .line 295
    :goto_1
    if-eqz v2, :cond_2

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRealSsid - BSSID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/WifiGbk;->logi(Ljava/lang/String;)V

    .line 297
    iget-boolean v4, v2, Lcom/android/server/wifi/WifiGbk$BssCache;->isGbk:Z

    if-eqz v4, :cond_2

    .line 298
    iget-object v4, v2, Lcom/android/server/wifi/WifiGbk$BssCache;->ssidBytes:[B

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "SSID2":Ljava/lang/String;
    monitor-exit v3

    return-object v4

    .line 302
    .end local v4    # "SSID2":Ljava/lang/String;
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v3

    .line 302
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static getSsidBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 429
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 430
    return-object v0

    .line 433
    :cond_0
    invoke-static {p0}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "bareSsid":Ljava/lang/String;
    nop

    .line 436
    .local v0, "ssidBytes":[B
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 439
    goto :goto_0

    .line 437
    :catch_0
    move-exception v2

    .line 441
    :goto_0
    const-string v2, "UTF-8"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    const/16 v2, 0x30

    goto :goto_1

    :cond_1
    const/16 v2, 0x20

    .line 443
    .local v2, "maxlen":I
    :goto_1
    array-length v3, v0

    if-le v3, v2, :cond_2

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSsidBytes - converted SSID exceed max length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ssid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/WifiGbk;->loge(Ljava/lang/String;)V

    .line 446
    const/4 v0, 0x0

    .line 448
    :cond_2
    return-object v0
.end method

.method public static isAllAscii([B)Z
    .locals 4
    .param p0, "ssidBytes"    # [B

    .line 370
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 371
    return v0

    .line 373
    :cond_0
    array-length v1, p0

    .line 374
    .local v1, "length":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 375
    aget-byte v3, p0, v2

    if-gez v3, :cond_1

    .line 376
    return v0

    .line 374
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isGbk([B)Z
    .locals 3
    .param p0, "ssidBytes"    # [B

    .line 389
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/android/server/wifi/WifiGbk;->encodeSsid([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "ssid":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 391
    return v1

    .line 395
    :cond_0
    const-string v2, "GBK"

    invoke-static {p0, v2}, Lcom/android/server/wifi/WifiGbk;->encodeSsid([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    if-nez v0, :cond_1

    .line 397
    return v1

    .line 400
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private static isValid(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .line 105
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    return v0

    .line 114
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ScanResult - BSSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiGbk;->logi(Ljava/lang/String;)V

    .line 109
    return v0
.end method

.method private static isValid(Lcom/android/server/wifi/WifiGbk$BssCache;)Z
    .locals 2
    .param p0, "bss"    # Lcom/android/server/wifi/WifiGbk$BssCache;

    .line 121
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->BSSID:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid BssCache - BSSID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SSID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiGbk;->logi(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 80
    const-string v0, "WifiGbk"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 71
    const-string v0, "WifiGbk"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method protected static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 75
    const-string v0, "WifiGbk"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public static processScanResult(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .line 267
    invoke-static {p0}, Lcom/android/server/wifi/WifiGbk;->isValid(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 268
    return v1

    .line 271
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->getOctets()[B

    move-result-object v0

    .line 272
    .local v0, "ssidBytes":[B
    invoke-static {v0}, Lcom/android/server/wifi/WifiGbk;->isAllAscii([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    return v1

    .line 275
    :cond_1
    invoke-static {p0}, Lcom/android/server/wifi/WifiGbk;->addOrUpdateBssCache(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    return v1
.end method

.method public static toGbk([B)[B
    .locals 2
    .param p0, "utfBytes"    # [B

    .line 418
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/android/server/wifi/WifiGbk;->encodeSsid([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "ssid":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 420
    const/4 v1, 0x0

    return-object v1

    .line 422
    :cond_0
    const-string v1, "GBK"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiGbk;->getSsidBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static toUtf([B)[B
    .locals 2
    .param p0, "gbkBytes"    # [B

    .line 407
    const-string v0, "GBK"

    invoke-static {p0, v0}, Lcom/android/server/wifi/WifiGbk;->encodeSsid([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "ssid":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 409
    const/4 v1, 0x0

    return-object v1

    .line 411
    :cond_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiGbk;->getSsidBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method
