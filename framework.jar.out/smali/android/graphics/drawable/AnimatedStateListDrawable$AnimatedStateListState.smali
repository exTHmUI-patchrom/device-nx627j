.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
.super Landroid/graphics/drawable/StateListDrawable$StateListState;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatedStateListState"
.end annotation


# static fields
.field private static final REVERSED_BIT:J = 0x100000000L

.field private static final REVERSIBLE_FLAG_BIT:J = 0x200000000L


# instance fields
.field mAnimThemeAttrs:[I

.field mStateIds:Landroid/util/SparseIntArray;

.field mTransitions:Landroid/util/LongSparseLongArray;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "owner"    # Landroid/graphics/drawable/AnimatedStateListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 566
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 568
    if-eqz p1, :cond_0

    .line 570
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    .line 571
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    .line 572
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 574
    :cond_0
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    .line 575
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    .line 577
    :goto_0
    return-void
.end method

.method private static generateTransitionKey(II)J
    .locals 4
    .param p0, "fromId"    # I
    .param p1, "toId"    # I

    .line 651
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;I)I
    .locals 2
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "id"    # I

    .line 602
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 603
    .local v0, "index":I
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 604
    return v0
.end method

.method addTransition(IILandroid/graphics/drawable/Drawable;Z)I
    .locals 16
    .param p1, "fromId"    # I
    .param p2, "toId"    # I
    .param p3, "anim"    # Landroid/graphics/drawable/Drawable;
    .param p4, "reversible"    # Z

    move-object/from16 v0, p0

    .line 585
    move-object/from16 v1, p3

    invoke-super {v0, v1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 586
    .local v2, "pos":I
    invoke-static/range {p1 .. p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v3

    .line 587
    .local v3, "keyFromTo":J
    const-wide/16 v5, 0x0

    .line 588
    .local v5, "reversibleBit":J
    if-eqz p4, :cond_0

    .line 589
    const-wide v5, 0x200000000L

    .line 591
    :cond_0
    iget-object v7, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    int-to-long v8, v2

    or-long/2addr v8, v5

    invoke-virtual {v7, v3, v4, v8, v9}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 593
    if-eqz p4, :cond_1

    .line 594
    move/from16 v7, p1

    move/from16 v8, p2

    invoke-static {v8, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v9

    .line 595
    .local v9, "keyToFrom":J
    iget-object v11, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    int-to-long v12, v2

    const-wide v14, 0x100000000L

    or-long/2addr v12, v14

    or-long/2addr v12, v5

    invoke-virtual {v11, v9, v10, v12, v13}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .end local v9    # "keyToFrom":J
    goto :goto_0

    .line 598
    :cond_1
    move/from16 v7, p1

    move/from16 v8, p2

    :goto_0
    return v2
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 637
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method getKeyframeIdAt(I)I
    .locals 2
    .param p1, "index"    # I

    .line 617
    const/4 v0, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method indexOfKeyframe([I)I
    .locals 2
    .param p1, "stateSet"    # [I

    .line 608
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v0

    .line 609
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 610
    return v0

    .line 613
    :cond_0
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-super {p0, v1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v1

    return v1
.end method

.method indexOfTransition(II)I
    .locals 5
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    .line 621
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    .line 622
    .local v0, "keyFromTo":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method isTransitionReversed(II)Z
    .locals 6
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    .line 626
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    .line 627
    .local v0, "keyFromTo":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v2

    const-wide v4, 0x100000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method mutate()V
    .locals 1

    .line 580
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    .line 581
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    .line 582
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 642
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 647
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable$1;)V

    return-object v0
.end method

.method transitionHasReversibleFlag(II)Z
    .locals 6
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    .line 631
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    .line 632
    .local v0, "keyFromTo":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v2

    const-wide v4, 0x200000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
