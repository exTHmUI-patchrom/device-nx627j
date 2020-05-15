.class public Landroid/app/usage/TimeSparseArray;
.super Landroid/util/LongSparseArray;
.source "TimeSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LongSparseArray<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mWtfReported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/usage/TimeSparseArray;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    .local p0, "this":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<TE;>;"
    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public closestIndexOnOrAfter(J)I
    .locals 7
    .param p1, "time"    # J

    .line 46
    .local p0, "this":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v0

    .line 47
    .local v0, "size":I
    const/4 v1, 0x0

    .line 48
    .local v1, "lo":I
    add-int/lit8 v2, v0, -0x1

    .line 49
    .local v2, "hi":I
    const/4 v3, -0x1

    .line 50
    .local v3, "mid":I
    const-wide/16 v4, -0x1

    .line 51
    .local v4, "key":J
    :goto_0
    if-gt v1, v2, :cond_2

    .line 52
    sub-int v6, v2, v1

    div-int/lit8 v6, v6, 0x2

    add-int v3, v1, v6

    .line 53
    invoke-virtual {p0, v3}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 55
    cmp-long v6, p1, v4

    if-lez v6, :cond_0

    .line 56
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 57
    :cond_0
    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    .line 58
    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    .line 60
    :cond_1
    return v3

    .line 64
    :cond_2
    cmp-long v6, p1, v4

    if-gez v6, :cond_3

    .line 65
    return v3

    .line 66
    :cond_3
    cmp-long v6, p1, v4

    if-lez v6, :cond_4

    if-ge v1, v0, :cond_4

    .line 67
    return v1

    .line 69
    :cond_4
    const/4 v6, -0x1

    return v6
.end method

.method public closestIndexOnOrBefore(J)I
    .locals 3
    .param p1, "time"    # J

    .line 99
    .local p0, "this":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v0

    .line 100
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 105
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 106
    return v0

    .line 108
    :cond_1
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method public put(JLjava/lang/Object;)V
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/TimeSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_0

    .line 83
    iget-boolean v0, p0, Landroid/app/usage/TimeSparseArray;->mWtfReported:Z

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Landroid/app/usage/TimeSparseArray;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overwriting value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/usage/TimeSparseArray;->mWtfReported:Z

    .line 88
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 89
    return-void
.end method
