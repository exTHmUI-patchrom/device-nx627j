.class Landroid/animation/AnimatorSet$3;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/AnimatorSet;->sortAnimationEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/animation/AnimatorSet$AnimationEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "this$0"    # Landroid/animation/AnimatorSet;

    .line 1541
    iput-object p1, p0, Landroid/animation/AnimatorSet$3;->this$0:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/animation/AnimatorSet$AnimationEvent;Landroid/animation/AnimatorSet$AnimationEvent;)I
    .locals 8
    .param p1, "e1"    # Landroid/animation/AnimatorSet$AnimationEvent;
    .param p2, "e2"    # Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1544
    invoke-virtual {p1}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v0

    .line 1545
    .local v0, "t1":J
    invoke-virtual {p2}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v2

    .line 1546
    .local v2, "t2":J
    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 1549
    iget v4, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v6, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    add-int/2addr v4, v6

    if-ne v4, v5, :cond_0

    .line 1552
    iget v4, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v5, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    sub-int/2addr v4, v5

    return v4

    .line 1554
    :cond_0
    iget v4, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v5, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    sub-int/2addr v4, v5

    return v4

    .line 1557
    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v4, v2, v6

    if-nez v4, :cond_2

    .line 1558
    const/4 v4, -0x1

    return v4

    .line 1560
    :cond_2
    cmp-long v4, v0, v6

    if-nez v4, :cond_3

    .line 1561
    return v5

    .line 1564
    :cond_3
    sub-long v4, v0, v2

    long-to-int v4, v4

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1541
    check-cast p1, Landroid/animation/AnimatorSet$AnimationEvent;

    check-cast p2, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet$3;->compare(Landroid/animation/AnimatorSet$AnimationEvent;Landroid/animation/AnimatorSet$AnimationEvent;)I

    move-result p1

    return p1
.end method
