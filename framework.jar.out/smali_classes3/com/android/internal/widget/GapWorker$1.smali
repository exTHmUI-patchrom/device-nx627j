.class Lcom/android/internal/widget/GapWorker$1;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/widget/GapWorker$Task;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/widget/GapWorker$Task;Lcom/android/internal/widget/GapWorker$Task;)I
    .locals 5
    .param p1, "lhs"    # Lcom/android/internal/widget/GapWorker$Task;
    .param p2, "rhs"    # Lcom/android/internal/widget/GapWorker$Task;

    .line 187
    iget-object v0, p1, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p2, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v4, -0x1

    if-eq v0, v3, :cond_3

    .line 188
    iget-object v0, p1, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    return v2

    .line 192
    :cond_3
    iget-boolean v0, p1, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    iget-boolean v3, p2, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    if-eq v0, v3, :cond_5

    .line 193
    iget-boolean v0, p1, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    if-eqz v0, :cond_4

    move v2, v4

    nop

    :cond_4
    return v2

    .line 197
    :cond_5
    iget v0, p2, Lcom/android/internal/widget/GapWorker$Task;->viewVelocity:I

    iget v2, p1, Lcom/android/internal/widget/GapWorker$Task;->viewVelocity:I

    sub-int/2addr v0, v2

    .line 198
    .local v0, "deltaViewVelocity":I
    if-eqz v0, :cond_6

    return v0

    .line 201
    :cond_6
    iget v2, p1, Lcom/android/internal/widget/GapWorker$Task;->distanceToItem:I

    iget v3, p2, Lcom/android/internal/widget/GapWorker$Task;->distanceToItem:I

    sub-int/2addr v2, v3

    .line 202
    .local v2, "deltaDistanceToItem":I
    if-eqz v2, :cond_7

    return v2

    .line 204
    :cond_7
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 183
    check-cast p1, Lcom/android/internal/widget/GapWorker$Task;

    check-cast p2, Lcom/android/internal/widget/GapWorker$Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/GapWorker$1;->compare(Lcom/android/internal/widget/GapWorker$Task;Lcom/android/internal/widget/GapWorker$Task;)I

    move-result p1

    return p1
.end method
