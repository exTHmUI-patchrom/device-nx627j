.class public abstract Lcom/android/server/wifi/scanner/ChannelHelper;
.super Ljava/lang/Object;
.source "ChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    }
.end annotation


# static fields
.field protected static final NO_CHANNELS:[Landroid/net/wifi/WifiScanner$ChannelSpec;

.field public static final SCAN_PERIOD_PER_CHANNEL_MS:I = 0xc8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    sput-object v0, Lcom/android/server/wifi/scanner/ChannelHelper;->NO_CHANNELS:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bandToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "band"    # I

    .line 300
    packed-switch p0, :pswitch_data_0

    .line 316
    :pswitch_0
    const-string v0, "invalid band"

    return-object v0

    .line 314
    :pswitch_1
    const-string v0, "24Ghz & 5Ghz (DFS incl)"

    return-object v0

    .line 310
    :pswitch_2
    const-string v0, "5Ghz (DFS incl)"

    return-object v0

    .line 308
    :pswitch_3
    const-string v0, "5Ghz (DFS only)"

    return-object v0

    .line 312
    :pswitch_4
    const-string v0, "24Ghz & 5Ghz (no DFS)"

    return-object v0

    .line 306
    :pswitch_5
    const-string v0, "5Ghz (no DFS)"

    return-object v0

    .line 304
    :pswitch_6
    const-string v0, "24Ghz"

    return-object v0

    .line 302
    :pswitch_7
    const-string v0, "unspecified"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toString(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 242
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString([Landroid/net/wifi/WifiScanner$ChannelSpec;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-static {v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->bandToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lcom/android/server/wifi/WifiNative$BucketSettings;)Ljava/lang/String;
    .locals 2
    .param p0, "bucketSettings"    # Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 255
    iget v0, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    iget v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString([Lcom/android/server/wifi/WifiNative$ChannelSettings;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 258
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    invoke-static {v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->bandToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toString([Landroid/net/wifi/WifiScanner$ChannelSpec;)Ljava/lang/String;
    .locals 3
    .param p0, "channels"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 263
    if-nez p0, :cond_0

    .line 264
    const-string v0, "null"

    return-object v0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 270
    aget-object v2, p0, v1

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 272
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v1    # "c":I
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static toString([Lcom/android/server/wifi/WifiNative$ChannelSettings;I)Ljava/lang/String;
    .locals 3
    .param p0, "channels"    # [Lcom/android/server/wifi/WifiNative$ChannelSettings;
    .param p1, "numChannels"    # I

    .line 280
    if-nez p0, :cond_0

    .line 281
    const-string v0, "null"

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 287
    aget-object v2, p0, v1

    iget v2, v2, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    add-int/lit8 v2, p1, -0x1

    if-eq v1, v2, :cond_1

    .line 289
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v1    # "c":I
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
.end method

.method public abstract estimateScanDuration(Landroid/net/wifi/WifiScanner$ScanSettings;)I
.end method

.method public abstract getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
.end method

.method public abstract settingsContainChannel(Landroid/net/wifi/WifiScanner$ScanSettings;I)Z
.end method

.method public updateChannels()V
    .locals 0

    .line 72
    return-void
.end method
