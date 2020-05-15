.class public Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;
.super Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
.source "KnownBandsChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KnownBandsChannelCollection"
.end annotation


# instance fields
.field private mAllBands:I

.field private final mChannels:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExactBands:I

.field final synthetic this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    .line 137
    iput-object p1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;-><init>(Lcom/android/server/wifi/scanner/ChannelHelper;)V

    .line 141
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    .line 150
    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    return-void
.end method


# virtual methods
.method public addBand(I)V
    .locals 4
    .param p1, "band"    # I

    .line 160
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    .line 161
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    .line 162
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    .line 163
    .local v0, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    aget-object v3, v0, v1

    iget v3, v3, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public addChannel(I)V
    .locals 2
    .param p1, "frequency"    # I

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 155
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    invoke-static {v1, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->access$000(Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;I)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    .line 156
    return-void
.end method

.method public clear()V
    .locals 1

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    .line 209
    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    .line 210
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 211
    return-void
.end method

.method public containsBand(I)Z
    .locals 5
    .param p1, "band"    # I

    .line 175
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    .line 176
    .local v0, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    return v1

    .line 176
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public containsChannel(I)Z
    .locals 2
    .param p1, "channel"    # I

    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fillBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;I)V
    .locals 3
    .param p1, "bucketSettings"    # Lcom/android/server/wifi/WifiNative$BucketSettings;
    .param p2, "maxChannels"    # I

    .line 248
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    iget v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    if-ne v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    if-eqz v0, :cond_1

    .line 250
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    .line 251
    iput v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    .line 252
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    goto :goto_1

    .line 254
    :cond_1
    iput v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    .line 255
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iput v0, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    .line 256
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    iput-object v0, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .line 257
    nop

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 258
    new-instance v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$ChannelSettings;-><init>()V

    .line 259
    .local v1, "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    .line 260
    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    aput-object v1, v2, v0

    .line 257
    .end local v1    # "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_0

    .line 263
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public getAllChannels()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 275
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public getChannelSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    iget v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    if-eq v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    return-object v0

    .line 242
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method public getContainingChannelsFromBand(I)Ljava/util/Set;
    .locals 5
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 227
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 228
    .local v0, "containingChannels":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v1

    .line 229
    .local v1, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 230
    iget-object v3, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    aget-object v4, v1, v2

    iget v4, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    aget-object v3, v1, v2

    iget v3, v3, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public getMissingChannelsFromBand(I)Ljava/util/Set;
    .locals 5
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 216
    .local v0, "missingChannels":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v1

    .line 217
    .local v1, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 218
    iget-object v3, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    aget-object v4, v1, v2

    iget v4, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    aget-object v3, v1, v2

    iget v3, v3, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public getScanFreqs()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 267
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 268
    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public isAllChannels()Z
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    .line 203
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public partiallyContainsBand(I)Z
    .locals 5
    .param p1, "band"    # I

    .line 186
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    .line 187
    .local v0, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const/4 v1, 0x1

    return v1

    .line 187
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v2    # "i":I
    :cond_1
    return v1
.end method
