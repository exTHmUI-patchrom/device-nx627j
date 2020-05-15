.class public abstract Lcom/android/internal/widget/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;,
        Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;,
        Lcom/android/internal/widget/RecyclerView$ItemAnimator$AdapterChanges;
    }
.end annotation


# static fields
.field public static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field public static final FLAG_CHANGED:I = 0x2

.field public static final FLAG_INVALIDATED:I = 0x4

.field public static final FLAG_MOVED:I = 0x800

.field public static final FLAG_REMOVED:I = 0x8


# instance fields
.field private mAddDuration:J

.field private mChangeDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mMoveDuration:J

.field private mRemoveDuration:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 11543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    .line 11546
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 11547
    iput-wide v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 11548
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 11549
    iput-wide v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    return-void
.end method

.method static buildAdapterChangeFlagsForAnimations(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .locals 4
    .param p0, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 11871
    invoke-static {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->access$1400(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    .line 11872
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11873
    const/4 v1, 0x4

    return v1

    .line 11875
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 11876
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v1

    .line 11877
    .local v1, "oldPos":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 11878
    .local v2, "pos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eq v2, v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 11879
    or-int/lit16 v0, v0, 0x800

    .line 11882
    .end local v1    # "oldPos":I
    .end local v2    # "pos":I
    :cond_1
    return v0
.end method


# virtual methods
.method public abstract animateAppearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animateDisappearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animatePersistence(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 12060
    const/4 v0, 0x1

    return v0
.end method

.method public canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 12090
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public final dispatchAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 11955
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->onAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 11956
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 11957
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 11959
    :cond_0
    return-void
.end method

.method public final dispatchAnimationStarted(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 11996
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->onAnimationStarted(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 11997
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 3

    .line 12098
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 12099
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12100
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v2}, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 12099
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12102
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 12103
    return-void
.end method

.method public abstract endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .locals 2

    .line 11575
    iget-wide v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 2

    .line 11611
    iget-wide v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    .line 11557
    iget-wide v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 2

    .line 11593
    iget-wide v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    return-wide v0
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    .line 12027
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    .line 12028
    .local v0, "running":Z
    if-eqz p1, :cond_1

    .line 12029
    if-nez v0, :cond_0

    .line 12030
    invoke-interface {p1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    goto :goto_0

    .line 12032
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12035
    :cond_1
    :goto_0
    return v0
.end method

.method public obtainHolderInfo()Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    .line 12115
    new-instance v0, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>()V

    return-object v0
.end method

.method public onAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 11970
    return-void
.end method

.method public onAnimationStarted(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 12008
    return-void
.end method

.method public recordPostLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 11700
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->obtainHolderInfo()Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public recordPreLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "changeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView$State;",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    .line 11671
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->obtainHolderInfo()Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setAddDuration(J)V
    .locals 0
    .param p1, "addDuration"    # J

    .line 11584
    iput-wide p1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 11585
    return-void
.end method

.method public setChangeDuration(J)V
    .locals 0
    .param p1, "changeDuration"    # J

    .line 11620
    iput-wide p1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 11621
    return-void
.end method

.method setListener(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 11632
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 11633
    return-void
.end method

.method public setMoveDuration(J)V
    .locals 0
    .param p1, "moveDuration"    # J

    .line 11566
    iput-wide p1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 11567
    return-void
.end method

.method public setRemoveDuration(J)V
    .locals 0
    .param p1, "removeDuration"    # J

    .line 11602
    iput-wide p1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 11603
    return-void
.end method
