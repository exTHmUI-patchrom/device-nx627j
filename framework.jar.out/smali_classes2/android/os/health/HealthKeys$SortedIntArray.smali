.class Landroid/os/health/HealthKeys$SortedIntArray;
.super Ljava/lang/Object;
.source "HealthKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/health/HealthKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortedIntArray"
.end annotation


# instance fields
.field mArray:[I

.field mCount:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maxCount"    # I

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    .line 192
    return-void
.end method


# virtual methods
.method addValue(I)V
    .locals 3
    .param p1, "value"    # I

    .line 198
    iget-object v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    iget v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    aput p1, v0, v1

    .line 199
    return-void
.end method

.method getArray()[I
    .locals 4

    .line 206
    iget v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    iget-object v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 208
    iget-object v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    return-object v0

    .line 210
    :cond_0
    iget v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    new-array v0, v0, [I

    .line 211
    .local v0, "result":[I
    iget-object v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    iget v2, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 213
    return-object v0
.end method
