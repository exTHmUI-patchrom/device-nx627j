.class Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
.super Ljava/lang/Object;
.source "BackgroundScanScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bucket"
.end annotation


# instance fields
.field public bucketId:I

.field private final mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

.field private final mScanSettingsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public period:I

.field final synthetic this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;I)V
    .locals 1
    .param p2, "period"    # I

    .line 136
    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    .line 137
    iput p2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->bucketId:I

    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    invoke-static {p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->access$000(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)Lcom/android/server/wifi/scanner/ChannelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    .line 141
    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;)V
    .locals 2
    .param p2, "originalBucket"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .line 147
    iget v0, p2, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;I)V

    .line 148
    invoke-virtual {p2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 149
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v0    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method private createChannelSettings(I)Lcom/android/server/wifi/WifiNative$ChannelSettings;
    .locals 1
    .param p1, "frequency"    # I

    .line 157
    new-instance v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ChannelSettings;-><init>()V

    .line 158
    .local v0, "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iput p1, v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    .line 159
    return-object v0
.end method


# virtual methods
.method public addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 1
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 163
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public createBucketSettings(II)Lcom/android/server/wifi/WifiNative$BucketSettings;
    .locals 9
    .param p1, "bucketId"    # I
    .param p2, "maxChannels"    # I

    .line 197
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->bucketId:I

    .line 198
    const/4 v0, 0x4

    .line 199
    .local v0, "reportEvents":I
    const/4 v1, 0x0

    .line 200
    .local v1, "maxPeriodInMs":I
    const/4 v2, 0x0

    .line 201
    .local v2, "stepCount":I
    const/4 v3, 0x0

    .line 203
    .local v3, "bucketIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 204
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 205
    .local v5, "setting":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget v6, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 206
    .local v6, "requestedReportEvents":I
    and-int/lit8 v7, v6, 0x4

    if-nez v7, :cond_0

    .line 207
    and-int/lit8 v0, v0, -0x5

    .line 209
    :cond_0
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_1

    .line 210
    or-int/lit8 v0, v0, 0x1

    .line 212
    :cond_1
    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_2

    .line 213
    or-int/lit8 v0, v0, 0x2

    .line 219
    :cond_2
    if-nez v4, :cond_4

    iget v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    if-eqz v7, :cond_4

    iget v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iget v8, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-eq v7, v8, :cond_4

    .line 224
    iget v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 225
    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->access$100()I

    move-result v8

    .line 224
    invoke-static {v7, v8}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->access$200(II)I

    move-result v3

    .line 226
    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->access$300()[I

    move-result-object v7

    aget v7, v7, v3

    iput v7, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    .line 227
    iget v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iget v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    if-ge v7, v8, :cond_3

    .line 228
    iget v7, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    goto :goto_1

    .line 229
    :cond_3
    iget v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    :goto_1
    move v1, v7

    .line 230
    iget v2, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    .line 203
    .end local v5    # "setting":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v6    # "requestedReportEvents":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 234
    .end local v4    # "i":I
    :cond_5
    new-instance v4, Lcom/android/server/wifi/WifiNative$BucketSettings;

    invoke-direct {v4}, Lcom/android/server/wifi/WifiNative$BucketSettings;-><init>()V

    .line 235
    .local v4, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iput p1, v4, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    .line 236
    iput v0, v4, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    .line 237
    iget v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    iput v5, v4, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    .line 238
    iput v1, v4, Lcom/android/server/wifi/WifiNative$BucketSettings;->max_period_ms:I

    .line 239
    iput v2, v4, Lcom/android/server/wifi/WifiNative$BucketSettings;->step_count:I

    .line 240
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    invoke-virtual {v5, v4, p2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->fillBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;I)V

    .line 241
    return-object v4
.end method

.method public getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    return-object v0
.end method

.method public getSettingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    return-object v0
.end method

.method public removeSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 1
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 168
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->updateChannelCollection()V

    .line 173
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateChannelCollection()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->clear()V

    .line 184
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 185
    .local v1, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 186
    .end local v1    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method
