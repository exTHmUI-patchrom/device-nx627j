.class public abstract Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field static final RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

.field private static final sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;


# instance fields
.field private mCachedMaxScrollSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1355
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchUIUtilImpl;

    invoke-direct {v0}, Lcom/android/internal/widget/helper/ItemTouchUIUtilImpl;-><init>()V

    sput-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    .line 1361
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$1;

    invoke-direct {v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 1368
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$2;

    invoke-direct {v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$2;-><init>()V

    sput-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1381
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return-void
.end method

.method public static convertToRelativeDirection(II)I
    .locals 4
    .param p0, "flags"    # I
    .param p1, "layoutDirection"    # I

    .line 1439
    const v0, 0xc0c0c

    and-int v1, p0, v0

    .line 1440
    .local v1, "masked":I
    if-nez v1, :cond_0

    .line 1441
    return p0

    .line 1443
    :cond_0
    not-int v2, v1

    and-int/2addr p0, v2

    .line 1444
    if-nez p1, :cond_1

    .line 1446
    shl-int/lit8 v0, v1, 0x2

    or-int/2addr p0, v0

    .line 1447
    return p0

    .line 1450
    :cond_1
    shl-int/lit8 v2, v1, 0x1

    const v3, -0xc0c0d

    and-int/2addr v2, v3

    or-int/2addr p0, v2

    .line 1452
    shl-int/lit8 v2, v1, 0x1

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr p0, v0

    .line 1454
    return p0
.end method

.method public static getDefaultUIUtil()Lcom/android/internal/widget/helper/ItemTouchUIUtil;
    .locals 1

    .line 1424
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    return-object v0
.end method

.method private getMaxDragScroll(Lcom/android/internal/widget/RecyclerView;)I
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 1849
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1850
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    .line 1853
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return v0
.end method

.method public static makeFlag(II)I
    .locals 1
    .param p0, "actionState"    # I
    .param p1, "directions"    # I

    .line 1485
    mul-int/lit8 v0, p0, 0x8

    shl-int v0, p1, v0

    return v0
.end method

.method public static makeMovementFlags(II)I
    .locals 2
    .param p0, "dragFlags"    # I
    .param p1, "swipeFlags"    # I

    .line 1469
    or-int v0, p1, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v0

    .line 1470
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    .line 1471
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    .line 1469
    return v0
.end method


# virtual methods
.method public canDropOver(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "current"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1580
    const/4 v0, 0x1

    return v0
.end method

.method public chooseDropTarget(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 14
    .param p1, "selected"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "curX"    # I
    .param p4, "curY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .local p2, "dropTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    move-object v0, p1

    .line 1750
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int v1, p3, v1

    .line 1751
    .local v1, "right":I
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v2, p4, v2

    .line 1752
    .local v2, "bottom":I
    const/4 v3, 0x0

    .line 1753
    .local v3, "winner":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v4, -0x1

    .line 1754
    .local v4, "winnerScore":I
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, p3, v5

    .line 1755
    .local v5, "dx":I
    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, p4, v6

    .line 1756
    .local v6, "dy":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    .line 1757
    .local v7, "targetsSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_4

    .line 1758
    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1759
    .local v10, "target":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-lez v5, :cond_0

    .line 1760
    iget-object v11, v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int/2addr v11, v1

    .line 1761
    .local v11, "diff":I
    if-gez v11, :cond_0

    iget-object v12, v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    if-le v12, v13, :cond_0

    .line 1762
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1763
    .local v12, "score":I
    if-le v12, v4, :cond_0

    .line 1764
    move v4, v12

    .line 1765
    move-object v3, v10

    .line 1769
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_0
    if-gez v5, :cond_1

    .line 1770
    iget-object v11, v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v11, v11, p3

    .line 1771
    .restart local v11    # "diff":I
    if-lez v11, :cond_1

    iget-object v12, v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 1772
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1773
    .restart local v12    # "score":I
    if-le v12, v4, :cond_1

    .line 1774
    move v4, v12

    .line 1775
    move-object v3, v10

    .line 1779
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_1
    if-gez v6, :cond_2

    .line 1780
    iget-object v11, v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v11, v11, p4

    .line 1781
    .restart local v11    # "diff":I
    if-lez v11, :cond_2

    iget-object v12, v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 1782
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1783
    .restart local v12    # "score":I
    if-le v12, v4, :cond_2

    .line 1784
    move v4, v12

    .line 1785
    move-object v3, v10

    .line 1790
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_2
    if-lez v6, :cond_3

    .line 1791
    iget-object v11, v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int/2addr v11, v2

    .line 1792
    .restart local v11    # "diff":I
    if-gez v11, :cond_3

    iget-object v12, v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    if-le v12, v13, :cond_3

    .line 1793
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1794
    .restart local v12    # "score":I
    if-le v12, v4, :cond_3

    .line 1795
    move v4, v12

    .line 1796
    move-object v3, v10

    .line 1757
    .end local v10    # "target":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1801
    .end local v8    # "i":I
    :cond_4
    move-object/from16 v9, p2

    return-object v3
.end method

.method public clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1986
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    .line 1987
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 4
    .param p1, "flags"    # I
    .param p2, "layoutDirection"    # I

    .line 1528
    const v0, 0x303030

    and-int v1, p1, v0

    .line 1529
    .local v1, "masked":I
    if-nez v1, :cond_0

    .line 1530
    return p1

    .line 1532
    :cond_0
    not-int v2, v1

    and-int/2addr p1, v2

    .line 1533
    if-nez p2, :cond_1

    .line 1535
    shr-int/lit8 v0, v1, 0x2

    or-int/2addr p1, v0

    .line 1536
    return p1

    .line 1539
    :cond_1
    shr-int/lit8 v2, v1, 0x1

    const v3, -0x303031

    and-int/2addr v2, v3

    or-int/2addr p1, v2

    .line 1541
    shr-int/lit8 v2, v1, 0x1

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr p1, v0

    .line 1543
    return p1
.end method

.method final getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1548
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1549
    .local v0, "flags":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v1

    return v1
.end method

.method public getAnimationDuration(Lcom/android/internal/widget/RecyclerView;IFF)J
    .locals 3
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "animationType"    # I
    .param p3, "animateDx"    # F
    .param p4, "animateDy"    # F

    .line 2079
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getItemAnimator()Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 2080
    .local v0, "itemAnimator":Lcom/android/internal/widget/RecyclerView$ItemAnimator;
    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 2081
    if-ne p2, v1, :cond_0

    const-wide/16 v1, 0xc8

    goto :goto_0

    .line 2082
    :cond_0
    const-wide/16 v1, 0xfa

    .line 2081
    :goto_0
    return-wide v1

    .line 2084
    :cond_1
    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v1

    goto :goto_1

    .line 2085
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v1

    .line 2084
    :goto_1
    return-wide v1
.end method

.method public getBoundingBoxMargin()I
    .locals 1

    .line 1643
    const/4 v0, 0x0

    return v0
.end method

.method public getMoveThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1671
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public abstract getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
.end method

.method public getSwipeEscapeVelocity(F)F
    .locals 0
    .param p1, "defaultValue"    # F

    .line 1696
    return p1
.end method

.method public getSwipeThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1658
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getSwipeVelocityThreshold(F)F
    .locals 0
    .param p1, "defaultValue"    # F

    .line 1719
    return p1
.end method

.method hasDragFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1553
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1554
    .local v0, "flags":I
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method hasSwipeFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1559
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1560
    .local v0, "flags":I
    const v1, 0xff00

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public interpolateOutOfBoundsScroll(Lcom/android/internal/widget/RecyclerView;IIIJ)I
    .locals 8
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewSize"    # I
    .param p3, "viewSizeOutOfBounds"    # I
    .param p4, "totalSize"    # I
    .param p5, "msSinceStartScroll"    # J

    .line 2112
    invoke-direct {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMaxDragScroll(Lcom/android/internal/widget/RecyclerView;)I

    move-result v0

    .line 2113
    .local v0, "maxScroll":I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2114
    .local v1, "absOutOfBounds":I
    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    .line 2116
    .local v2, "direction":I
    int-to-float v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v5, p2

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2117
    .local v3, "outOfBoundsRatio":F
    mul-int v4, v2, v0

    int-to-float v4, v4

    sget-object v5, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 2118
    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 2120
    .local v4, "cappedScroll":I
    const-wide/16 v5, 0x7d0

    cmp-long v5, p5, v5

    if-lez v5, :cond_0

    .line 2121
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "timeRatio":F
    goto :goto_0

    .line 2123
    .end local v5    # "timeRatio":F
    :cond_0
    long-to-float v5, p5

    const/high16 v6, 0x44fa0000    # 2000.0f

    div-float/2addr v5, v6

    .line 2125
    .restart local v5    # "timeRatio":F
    :goto_0
    int-to-float v6, v4

    sget-object v7, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 2126
    invoke-interface {v7, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 2127
    .local v6, "value":I
    if-nez v6, :cond_2

    .line 2128
    if-lez p3, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    return v7

    .line 2130
    :cond_2
    return v6
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 1632
    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 1617
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 2019
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object v3, p3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2021
    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 2053
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object v3, p3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2055
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "selected"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/android/internal/widget/RecyclerView;",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;>;"
    move-object v8, p1

    .line 1926
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    .line 1927
    .local v9, "recoverAnimSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    if-ge v10, v9, :cond_0

    .line 1928
    move-object/from16 v11, p4

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1929
    .local v12, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {v12}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->update()V

    .line 1930
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 1931
    .local v13, "count":I
    iget-object v3, v12, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v4, v12, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v12, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v12, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1933
    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1927
    .end local v12    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v13    # "count":I
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1935
    .end local v0    # "i":I
    :cond_0
    move-object/from16 v11, p4

    if-eqz p3, :cond_1

    .line 1936
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 1937
    .local v12, "count":I
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1938
    invoke-virtual {v8, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1940
    .end local v12    # "count":I
    :cond_1
    return-void
.end method

.method onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "selected"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/android/internal/widget/RecyclerView;",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;>;"
    move-object v8, p1

    move-object/from16 v9, p4

    .line 1945
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v10

    .line 1946
    .local v10, "recoverAnimSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    if-ge v11, v10, :cond_0

    .line 1947
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1948
    .local v12, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 1949
    .local v13, "count":I
    iget-object v3, v12, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v4, v12, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v12, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v12, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1951
    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1946
    .end local v12    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v13    # "count":I
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1953
    .end local v0    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 1954
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 1955
    .local v12, "count":I
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1956
    invoke-virtual {v8, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1958
    .end local v12    # "count":I
    :cond_1
    const/4 v0, 0x0

    .line 1959
    .local v0, "hasRunningAnimation":Z
    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 1960
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1961
    .local v2, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-boolean v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    if-nez v3, :cond_2

    .line 1962
    invoke-interface {v9, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1963
    :cond_2
    iget-boolean v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_3

    .line 1964
    const/4 v0, 0x1

    .line 1959
    .end local v2    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1967
    .end local v1    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 1968
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 1970
    :cond_5
    return-void
.end method

.method public abstract onMove(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
.end method

.method public onMoved(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILcom/android/internal/widget/RecyclerView$ViewHolder;III)V
    .locals 5
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "fromPos"    # I
    .param p4, "target"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p5, "toPos"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I

    .line 1892
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1893
    .local v0, "layoutManager":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;

    if-eqz v1, :cond_0

    .line 1894
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;

    iget-object v2, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2, v3, p6, p7}, Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    .line 1896
    return-void

    .line 1900
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1901
    iget-object v1, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    .line 1902
    .local v1, "minLeft":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 1903
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1905
    :cond_1
    iget-object v2, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    .line 1906
    .local v2, "maxRight":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_2

    .line 1907
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1911
    .end local v1    # "minLeft":I
    .end local v2    # "maxRight":I
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1912
    iget-object v1, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    .line 1913
    .local v1, "minTop":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 1914
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1916
    :cond_3
    iget-object v2, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    .line 1917
    .local v2, "maxBottom":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_4

    .line 1918
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1921
    .end local v1    # "minTop":I
    .end local v2    # "maxBottom":I
    :cond_4
    return-void
.end method

.method public onSelectedChanged(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 1843
    if-eqz p1, :cond_0

    .line 1844
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    .line 1846
    :cond_0
    return-void
.end method

.method public abstract onSwiped(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
.end method
