.class public Lcom/android/internal/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4961
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 4963
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    .locals 2
    .param p1, "viewType"    # I

    .line 5086
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5087
    .local v0, "scrapData":Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    if-nez v0, :cond_0

    .line 5088
    new-instance v1, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    invoke-direct {v1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;-><init>()V

    move-object v0, v1

    .line 5089
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5091
    :cond_0
    return-object v0
.end method


# virtual methods
.method attach(Lcom/android/internal/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 5053
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 5054
    return-void
.end method

.method public clear()V
    .locals 3

    .line 4966
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4967
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 4968
    .local v1, "data":Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-object v2, v1, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4966
    .end local v1    # "data":Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4970
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method detach()V
    .locals 1

    .line 5057
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 5058
    return-void
.end method

.method factorInBindTime(IJ)V
    .locals 3
    .param p1, "viewType"    # I
    .param p2, "bindTimeNs"    # J

    .line 5037
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5038
    .local v0, "scrapData":Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-wide v1, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 5040
    return-void
.end method

.method factorInCreateTime(IJ)V
    .locals 3
    .param p1, "viewType"    # I
    .param p2, "createTimeNs"    # J

    .line 5031
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5032
    .local v0, "scrapData":Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-wide v1, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5034
    return-void
.end method

.method public getRecycledView(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "viewType"    # I

    .line 4991
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 4992
    .local v0, "scrapData":Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4993
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 4994
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    return-object v2

    .line 4996
    .end local v1    # "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRecycledViewCount(I)I
    .locals 1
    .param p1, "viewType"    # I

    .line 4987
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .line 5074
    if-eqz p1, :cond_0

    .line 5075
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 5077
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez v0, :cond_1

    .line 5078
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 5080
    :cond_1
    if-eqz p2, :cond_2

    .line 5081
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->attach(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 5083
    :cond_2
    return-void
.end method

.method public putRecycledView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "scrap"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5011
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 5012
    .local v0, "viewType":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5013
    .local v1, "scrapHeap":Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget v2, v2, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 5014
    return-void

    .line 5019
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5020
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5021
    return-void
.end method

.method runningAverage(JJ)J
    .locals 6
    .param p1, "oldAverage"    # J
    .param p3, "newValue"    # J

    .line 5024
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5025
    return-wide p3

    .line 5027
    :cond_0
    const-wide/16 v0, 0x4

    div-long v2, p1, v0

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    div-long v0, p3, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public setMaxRecycledViews(II)V
    .locals 3
    .param p1, "viewType"    # I
    .param p2, "max"    # I

    .line 4973
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 4974
    .local v0, "scrapData":Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    iput p2, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 4975
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 4976
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    if-eqz v1, :cond_0

    .line 4977
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_0

    .line 4978
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 4981
    :cond_0
    return-void
.end method

.method size()I
    .locals 4

    .line 5000
    const/4 v0, 0x0

    .line 5001
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5002
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5003
    .local v2, "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_0

    .line 5004
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 5001
    .end local v2    # "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5007
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method willBindInTime(IJJ)Z
    .locals 4
    .param p1, "viewType"    # I
    .param p2, "approxCurrentNs"    # J
    .param p4, "deadlineNs"    # J

    .line 5048
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 5049
    .local v0, "expectedDurationNs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method willCreateInTime(IJJ)Z
    .locals 4
    .param p1, "viewType"    # I
    .param p2, "approxCurrentNs"    # J
    .param p4, "deadlineNs"    # J

    .line 5043
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5044
    .local v0, "expectedDurationNs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method
