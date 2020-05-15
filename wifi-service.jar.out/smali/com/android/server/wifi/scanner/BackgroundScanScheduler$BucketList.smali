.class Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;
.super Ljava/lang/Object;
.source "BackgroundScanScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BucketList"
.end annotation


# instance fields
.field private mActiveBucketCount:I

.field private final mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

.field private final mTimePeriodSortComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance p1, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList$1;

    invoke-direct {p1, p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList$1;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;)V

    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mTimePeriodSortComparator:Ljava/util/Comparator;

    .line 257
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    .line 260
    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->access$300()[I

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .line 261
    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 2
    .param p1, "index"    # I

    .line 269
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 270
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    .line 271
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 273
    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    .line 266
    return-void
.end method

.method public get(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .locals 1
    .param p1, "index"    # I

    .line 289
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getActiveCount()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    return v0
.end method

.method public getActiveRegularBucketCount()I
    .locals 1

    .line 301
    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->access$400()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 304
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    return v0
.end method

.method public getOrCreate(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .locals 5
    .param p1, "index"    # I

    .line 276
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    aget-object v0, v0, p1

    .line 277
    .local v0, "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    if-nez v0, :cond_0

    .line 278
    iget v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    .line 279
    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    new-instance v2, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    iget-object v3, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->access$300()[I

    move-result-object v4

    aget v4, v4, p1

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;I)V

    aput-object v2, v1, p1

    move-object v0, v2

    .line 281
    :cond_0
    return-object v0
.end method

.method public getSortedActiveRegularBucketList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v0, "activeBuckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->access$400()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mTimePeriodSortComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 319
    return-object v0
.end method

.method public isActive(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 285
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    array-length v0, v0

    return v0
.end method
