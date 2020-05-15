.class public Lcom/android/internal/widget/helper/ItemTouchHelper;
.super Lcom/android/internal/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field static final DEBUG:Z = false

.field static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field mActionState:I

.field mActivePointerId:I

.field mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field mGestureDetector:Landroid/view/GestureDetector;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field mMaxSwipeVelocity:F

.field private final mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

.field mOverdrawChild:Landroid/view/View;

.field mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field mSelectedFlags:I

.field mSelectedStartX:F

.field mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mSwipeEscapeVelocity:F

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 429
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 213
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 223
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 249
    new-instance v2, Lcom/android/internal/widget/helper/ItemTouchHelper$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$1;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    iput-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 276
    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 283
    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 290
    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 297
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$2;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 430
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 431
    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .locals 2

    .line 1251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1252
    return-void

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_1

    .line 1255
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$5;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$5;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1273
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setChildDrawingOrderCallback(Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1274
    return-void
.end method

.method private checkHorizontalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I
    .locals 8
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 1198
    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_3

    .line 1199
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1200
    .local v0, "dirFlag":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 1201
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1202
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v6

    .line 1201
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1203
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1204
    .local v4, "xVelocity":F
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1205
    .local v5, "yVelocity":F
    cmpl-float v1, v4, v1

    if-lez v1, :cond_1

    move v2, v3

    nop

    :cond_1
    move v1, v2

    .line 1206
    .local v1, "velDirFlag":I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1207
    .local v2, "absXVelocity":F
    and-int v3, v1, p2

    if-eqz v3, :cond_2

    if-ne v0, v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1208
    invoke-virtual {v3, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    .line 1209
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 1210
    return v1

    .line 1214
    .end local v1    # "velDirFlag":I
    .end local v2    # "absXVelocity":F
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 1215
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1217
    .local v1, "threshold":F
    and-int v2, p2, v0

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_3

    .line 1218
    return v0

    .line 1221
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private checkVerticalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I
    .locals 8
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 1225
    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_3

    .line 1226
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1227
    .local v0, "dirFlag":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 1228
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1229
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v6

    .line 1228
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1230
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1231
    .local v4, "xVelocity":F
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1232
    .local v5, "yVelocity":F
    cmpl-float v1, v5, v1

    if-lez v1, :cond_1

    move v2, v3

    nop

    :cond_1
    move v1, v2

    .line 1233
    .local v1, "velDirFlag":I
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1234
    .local v2, "absYVelocity":F
    and-int v3, v1, p2

    if-eqz v3, :cond_2

    if-ne v1, v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1235
    invoke-virtual {v3, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    .line 1236
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 1237
    return v1

    .line 1241
    .end local v1    # "velDirFlag":I
    .end local v2    # "absYVelocity":F
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 1242
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1243
    .local v1, "threshold":F
    and-int v2, p2, v0

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_3

    .line 1244
    return v0

    .line 1247
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private destroyCallbacks()V
    .locals 6

    .line 477
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->removeItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->removeOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V

    .line 479
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 482
    .local v0, "recoverAnimSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 483
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 484
    .local v2, "recoverAnimation":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 482
    .end local v2    # "recoverAnimation":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 486
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 487
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 488
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 489
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 490
    return-void
.end method

.method private findSwapTargets(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 23
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 766
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    if-nez v2, :cond_0

    .line 767
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 768
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    goto :goto_0

    .line 770
    :cond_0
    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 771
    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 773
    :goto_0
    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v2

    .line 774
    .local v2, "margin":I
    iget v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v4, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v3, v2

    .line 775
    .local v3, "left":I
    iget v4, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v4, v2

    .line 776
    .local v4, "top":I
    iget-object v5, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    const/4 v6, 0x2

    mul-int v7, v6, v2

    add-int/2addr v5, v7

    .line 777
    .local v5, "right":I
    iget-object v7, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    mul-int v8, v6, v2

    add-int/2addr v7, v8

    .line 778
    .local v7, "bottom":I
    add-int v8, v3, v5

    div-int/2addr v8, v6

    .line 779
    .local v8, "centerX":I
    add-int v9, v4, v7

    div-int/2addr v9, v6

    .line 780
    .local v9, "centerY":I
    iget-object v10, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v10}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v10

    .line 781
    .local v10, "lm":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    invoke-virtual {v10}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    .line 782
    .local v11, "childCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_6

    .line 783
    invoke-virtual {v10, v13}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 784
    .local v14, "other":Landroid/view/View;
    iget-object v15, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v14, v15, :cond_1

    .line 785
    nop

    .line 782
    .end local v2    # "margin":I
    .end local v3    # "left":I
    .end local v14    # "other":Landroid/view/View;
    .local v19, "margin":I
    .local v21, "left":I
    :goto_2
    move/from16 v19, v2

    move/from16 v21, v3

    goto/16 :goto_4

    .line 787
    .end local v19    # "margin":I
    .end local v21    # "left":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    .restart local v14    # "other":Landroid/view/View;
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v4, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-gt v15, v7, :cond_5

    .line 788
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v3, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-le v15, v5, :cond_2

    .line 789
    goto :goto_2

    .line 791
    :cond_2
    iget-object v15, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v15, v14}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v15

    .line 792
    .local v15, "otherVh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v12, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v12, v6, v1, v15}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->canDropOver(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 794
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v1, v6

    const/4 v6, 0x2

    div-int/2addr v1, v6

    sub-int v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 795
    .local v1, "dx":I
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v16

    add-int v12, v12, v16

    div-int/2addr v12, v6

    sub-int v12, v9, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 796
    .local v12, "dy":I
    mul-int v16, v1, v1

    mul-int v17, v12, v12

    add-int v6, v16, v17

    .line 798
    .local v6, "dist":I
    const/16 v16, 0x0

    .line 799
    .local v16, "pos":I
    move/from16 v18, v1

    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .end local v1    # "dx":I
    .local v18, "dx":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 800
    .local v1, "cnt":I
    move/from16 v19, v2

    move/from16 v2, v16

    const/16 v16, 0x0

    .local v2, "pos":I
    .local v16, "j":I
    .restart local v19    # "margin":I
    :goto_3
    move/from16 v20, v16

    .end local v16    # "j":I
    .local v20, "j":I
    move/from16 v21, v3

    move/from16 v3, v20

    if-ge v3, v1, :cond_3

    .line 801
    .end local v20    # "j":I
    .local v3, "j":I
    .restart local v21    # "left":I
    move/from16 v22, v1

    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    .end local v1    # "cnt":I
    .local v22, "cnt":I
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v6, v1, :cond_4

    .line 802
    add-int/lit8 v2, v2, 0x1

    .line 800
    add-int/lit8 v16, v3, 0x1

    .end local v3    # "j":I
    .restart local v16    # "j":I
    move/from16 v3, v21

    move/from16 v1, v22

    goto :goto_3

    .line 807
    .end local v16    # "j":I
    .end local v22    # "cnt":I
    .restart local v1    # "cnt":I
    :cond_3
    move/from16 v22, v1

    .end local v1    # "cnt":I
    .restart local v22    # "cnt":I
    :cond_4
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1, v2, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 808
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .end local v2    # "pos":I
    .end local v6    # "dist":I
    .end local v12    # "dy":I
    .end local v14    # "other":Landroid/view/View;
    .end local v15    # "otherVh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v18    # "dx":I
    .end local v22    # "cnt":I
    goto :goto_4

    .line 782
    .end local v19    # "margin":I
    .end local v21    # "left":I
    .local v2, "margin":I
    .local v3, "left":I
    :cond_5
    move/from16 v19, v2

    move/from16 v21, v3

    .end local v2    # "margin":I
    .end local v3    # "left":I
    .restart local v19    # "margin":I
    .restart local v21    # "left":I
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v19

    move/from16 v3, v21

    move-object/from16 v1, p1

    const/4 v6, 0x2

    goto/16 :goto_1

    .line 811
    .end local v13    # "i":I
    .end local v19    # "margin":I
    .end local v21    # "left":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    :cond_6
    move/from16 v19, v2

    move/from16 v21, v3

    .end local v2    # "margin":I
    .end local v3    # "left":I
    .restart local v19    # "margin":I
    .restart local v21    # "left":I
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    return-object v1
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 914
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 915
    .local v0, "lm":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 916
    return-object v2

    .line 918
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 919
    .local v1, "pointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v3, v4

    .line 920
    .local v3, "dx":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v4, v5

    .line 921
    .local v4, "dy":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 922
    .local v5, "absDx":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 924
    .local v6, "absDy":F
    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_1

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    .line 925
    return-object v2

    .line 927
    :cond_1
    cmpl-float v7, v5, v6

    if-lez v7, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 928
    return-object v2

    .line 929
    :cond_2
    cmpl-float v7, v6, v5

    if-lez v7, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 930
    return-object v2

    .line 932
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    .line 933
    .local v7, "child":Landroid/view/View;
    if-nez v7, :cond_4

    .line 934
    return-object v2

    .line 936
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    return-object v2
.end method

.method private getSelectedDxDy([F)V
    .locals 3
    .param p1, "outPosition"    # [F

    .line 501
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 502
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v1

    .line 506
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 507
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_1

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v1

    .line 511
    :goto_1
    return-void
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F

    .line 434
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 434
    :goto_0
    return v0
.end method

.method private initGestureDetector()V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 494
    return-void

    .line 496
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 498
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 911
    :cond_0
    return-void
.end method

.method private setupCallbacks()V
    .locals 3

    .line 468
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 469
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    .line 470
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/RecyclerView;->addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V

    .line 471
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->addOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V

    .line 472
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/RecyclerView;->addOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 473
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->initGestureDetector()V

    .line 474
    return-void
.end method

.method private swipeIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .locals 7
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1152
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1153
    return v1

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1156
    .local v0, "originalMovementFlags":I
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 1158
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v3

    .line 1156
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v2

    .line 1159
    .local v2, "absoluteMovementFlags":I
    const v3, 0xff00

    and-int v4, v2, v3

    shr-int/lit8 v4, v4, 0x8

    .line 1161
    .local v4, "flags":I
    if-nez v4, :cond_1

    .line 1162
    return v1

    .line 1164
    :cond_1
    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    .line 1167
    .local v3, "originalFlags":I
    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 1168
    invoke-direct {p0, p1, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    .local v6, "swipeDir":I
    if-lez v5, :cond_3

    .line 1170
    and-int v1, v3, v6

    if-nez v1, :cond_2

    .line 1172
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 1173
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v1

    .line 1172
    invoke-static {v6, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v1

    return v1

    .line 1175
    :cond_2
    return v6

    .line 1177
    :cond_3
    invoke-direct {p0, p1, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_7

    .line 1178
    return v6

    .line 1181
    .end local v6    # "swipeDir":I
    :cond_4
    invoke-direct {p0, p1, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    .restart local v6    # "swipeDir":I
    if-lez v5, :cond_5

    .line 1182
    return v6

    .line 1184
    :cond_5
    invoke-direct {p0, p1, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_7

    .line 1186
    and-int v1, v3, v6

    if-nez v1, :cond_6

    .line 1188
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 1189
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v1

    .line 1188
    invoke-static {v6, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v1

    return v1

    .line 1191
    :cond_6
    return v6

    .line 1194
    :cond_7
    return v1
.end method


# virtual methods
.method public attachToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 450
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    .line 451
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 454
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->destroyCallbacks()V

    .line 456
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 457
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 459
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x10500c2

    .line 460
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 461
    const v1, 0x10500c1

    .line 462
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 463
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->setupCallbacks()V

    .line 465
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_2
    return-void
.end method

.method checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    .locals 16
    .param p1, "action"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "pointerIndex"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 943
    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v3, 0x0

    if-nez v2, :cond_9

    const/4 v2, 0x2

    move/from16 v4, p1

    if-ne v4, v2, :cond_a

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    if-eq v5, v2, :cond_a

    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 944
    invoke-virtual {v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 947
    :cond_0
    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getScrollState()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 948
    return v3

    .line 950
    :cond_1
    invoke-direct {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 951
    .local v2, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v2, :cond_2

    .line 952
    return v3

    .line 954
    :cond_2
    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6, v7, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v6

    .line 956
    .local v6, "movementFlags":I
    const v7, 0xff00

    and-int/2addr v7, v6

    shr-int/lit8 v7, v7, 0x8

    .line 959
    .local v7, "swipeFlags":I
    if-nez v7, :cond_3

    .line 960
    return v3

    .line 965
    :cond_3
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 966
    .local v8, "x":F
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 969
    .local v9, "y":F
    iget v10, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v10, v8, v10

    .line 970
    .local v10, "dx":F
    iget v11, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v11, v9, v11

    .line 973
    .local v11, "dy":F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 974
    .local v12, "absDx":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 976
    .local v13, "absDy":F
    iget v14, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v14, v14

    cmpg-float v14, v12, v14

    if-gez v14, :cond_4

    iget v14, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v14, v14

    cmpg-float v14, v13, v14

    if-gez v14, :cond_4

    .line 977
    return v3

    .line 979
    :cond_4
    cmpl-float v14, v12, v13

    const/4 v15, 0x0

    if-lez v14, :cond_6

    .line 980
    cmpg-float v14, v10, v15

    if-gez v14, :cond_5

    and-int/lit8 v14, v7, 0x4

    if-nez v14, :cond_5

    .line 981
    return v3

    .line 983
    :cond_5
    cmpl-float v14, v10, v15

    if-lez v14, :cond_8

    and-int/lit8 v14, v7, 0x8

    if-nez v14, :cond_8

    .line 984
    return v3

    .line 987
    :cond_6
    cmpg-float v14, v11, v15

    if-gez v14, :cond_7

    and-int/lit8 v14, v7, 0x1

    if-nez v14, :cond_7

    .line 988
    return v3

    .line 990
    :cond_7
    cmpl-float v14, v11, v15

    if-lez v14, :cond_8

    and-int/lit8 v14, v7, 0x2

    if-nez v14, :cond_8

    .line 991
    return v3

    .line 994
    :cond_8
    iput v15, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    iput v15, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 995
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 996
    invoke-virtual {v0, v2, v5}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 997
    return v5

    .line 945
    .end local v2    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v6    # "movementFlags":I
    .end local v7    # "swipeFlags":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v10    # "dx":F
    .end local v11    # "dy":F
    .end local v12    # "absDx":F
    .end local v13    # "absDy":F
    :cond_9
    move/from16 v4, p1

    :cond_a
    :goto_0
    return v3
.end method

.method endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I
    .locals 4
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "override"    # Z

    .line 878
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 879
    .local v0, "recoverAnimSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 880
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 881
    .local v2, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_1

    .line 882
    iget-boolean v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr v3, p2

    iput-boolean v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 883
    iget-boolean v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_0

    .line 884
    invoke-virtual {v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 886
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 887
    iget v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    return v3

    .line 879
    .end local v2    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 890
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method findAnimation(Landroid/view/MotionEvent;)Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1117
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1118
    return-object v1

    .line 1120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 1121
    .local v0, "target":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1122
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1123
    .local v3, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v4, v0, :cond_1

    .line 1124
    return-object v3

    .line 1121
    .end local v3    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1127
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1002
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1003
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1004
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 1005
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1006
    .local v2, "selectedView":Landroid/view/View;
    iget v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1007
    return-object v2

    .line 1010
    .end local v2    # "selectedView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1011
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1012
    .local v3, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1013
    .local v4, "view":Landroid/view/View;
    iget v5, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v6, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v4, v0, v1, v5, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1014
    return-object v4

    .line 1010
    .end local v3    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1017
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p4, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 896
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 897
    return-void
.end method

.method hasRunningRecoverAnim()Z
    .locals 4

    .line 690
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 691
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 692
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-boolean v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_0

    .line 693
    const/4 v1, 0x1

    return v1

    .line 691
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 696
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method moveIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 17
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, p0

    .line 818
    move-object/from16 v9, p1

    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    return-void

    .line 821
    :cond_0
    iget v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 822
    return-void

    .line 825
    :cond_1
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v1, v9}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMoveThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F

    move-result v10

    .line 826
    .local v10, "threshold":F
    iget v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v1, v2

    float-to-int v11, v1

    .line 827
    .local v11, "x":I
    iget v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v1, v2

    float-to-int v12, v1

    .line 828
    .local v12, "y":I
    iget-object v1, v9, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v9, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, v9, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 829
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v9, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 830
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 831
    return-void

    .line 833
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findSwapTargets(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v13

    .line 834
    .local v13, "swapTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 835
    return-void

    .line 838
    :cond_3
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v1, v9, v13, v11, v12}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->chooseDropTarget(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v14

    .line 839
    .local v14, "target":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v14, :cond_4

    .line 840
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 841
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 842
    return-void

    .line 844
    :cond_4
    invoke-virtual {v14}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v15

    .line 845
    .local v15, "toPosition":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v16

    .line 846
    .local v16, "fromPosition":I
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v2, v9, v14}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onMove(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 848
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    move-object v3, v9

    move/from16 v4, v16

    move-object v5, v14

    move v6, v15

    move v7, v11

    move v8, v12

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onMoved(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILcom/android/internal/widget/RecyclerView$ViewHolder;III)V

    .line 851
    :cond_5
    return-void
.end method

.method obtainVelocityTracker()V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 903
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 904
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 855
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 859
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 860
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 861
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_0

    .line 862
    return-void

    .line 864
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v0, v1, :cond_1

    .line 865
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 867
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I

    .line 868
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 869
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 872
    :cond_2
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 528
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 529
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 530
    .local v1, "dy":F
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 531
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 532
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 533
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x1

    aget v1, v2, v3

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v3, p1

    move-object v4, p2

    move v8, v0

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 537
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 515
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 516
    .local v1, "dy":F
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 518
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 519
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x1

    aget v1, v2, v3

    .line 521
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v3, p1

    move-object v4, p2

    move v8, v0

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 523
    return-void
.end method

.method postDispatchSwipe(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 2
    .param p1, "anim"    # Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .param p2, "swipeDir"    # I

    .line 668
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    new-instance v1, Lcom/android/internal/widget/helper/ItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$4;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 687
    return-void
.end method

.method removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1277
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1280
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v1, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->setChildDrawingOrderCallback(Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1284
    :cond_0
    return-void
.end method

.method scrollIfNecessary()Z
    .locals 23

    .line 703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    if-nez v1, :cond_0

    .line 704
    iput-wide v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 705
    return v2

    .line 707
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 709
    .local v5, "now":J
    iget-wide v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v1, v7, v3

    if-nez v1, :cond_1

    const-wide/16 v7, 0x0

    :goto_0
    move-wide v14, v7

    goto :goto_1

    :cond_1
    iget-wide v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long v7, v5, v7

    goto :goto_0

    .line 710
    .local v14, "scrollDuration":J
    :goto_1
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 711
    .local v1, "lm":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    iget-object v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v7, :cond_2

    .line 712
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 714
    :cond_2
    const/4 v7, 0x0

    .line 715
    .local v7, "scrollX":I
    const/4 v8, 0x0

    .line 716
    .local v8, "scrollY":I
    iget-object v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v10, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v9, v10}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 717
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 718
    iget v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v11, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v9, v11

    float-to-int v9, v9

    .line 719
    .local v9, "curX":I
    iget-object v11, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v11, v9, v11

    iget-object v12, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 720
    .local v11, "leftDiff":I
    iget v12, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    cmpg-float v12, v12, v10

    if-gez v12, :cond_3

    if-gez v11, :cond_3

    .line 721
    move v7, v11

    goto :goto_2

    .line 722
    :cond_3
    iget v12, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    cmpl-float v12, v12, v10

    if-lez v12, :cond_4

    .line 723
    iget-object v12, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 724
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    iget-object v13, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 725
    invoke-virtual {v13}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v13

    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v13, v2

    sub-int/2addr v12, v13

    .line 726
    .local v12, "rightDiff":I
    if-lez v12, :cond_4

    .line 727
    move v2, v12

    .line 731
    .end local v7    # "scrollX":I
    .end local v9    # "curX":I
    .end local v11    # "leftDiff":I
    .end local v12    # "rightDiff":I
    .local v2, "scrollX":I
    move v7, v2

    .end local v2    # "scrollX":I
    .restart local v7    # "scrollX":I
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 732
    iget v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v2, v9

    float-to-int v2, v2

    .line 733
    .local v2, "curY":I
    iget-object v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v9

    iget-object v11, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v11}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v9, v11

    .line 734
    .local v9, "topDiff":I
    iget v11, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    cmpg-float v11, v11, v10

    if-gez v11, :cond_5

    if-gez v9, :cond_5

    .line 735
    move v8, v9

    goto :goto_3

    .line 736
    :cond_5
    iget v11, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    cmpl-float v10, v11, v10

    if-lez v10, :cond_6

    .line 737
    iget-object v10, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v10, v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v2

    iget-object v11, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    iget-object v11, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 738
    invoke-virtual {v11}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v11

    iget-object v12, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 739
    .local v10, "bottomDiff":I
    if-lez v10, :cond_6

    .line 740
    move v8, v10

    .line 744
    .end local v2    # "curY":I
    .end local v9    # "topDiff":I
    .end local v10    # "bottomDiff":I
    :cond_6
    :goto_3
    if-eqz v7, :cond_7

    .line 745
    iget-object v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v10, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 746
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v11

    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 747
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v13

    .line 745
    move v12, v7

    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/android/internal/widget/RecyclerView;IIIJ)I

    move-result v7

    .line 749
    :cond_7
    if-eqz v8, :cond_8

    .line 750
    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v10, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v10, v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 751
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v18

    iget-object v10, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 752
    invoke-virtual {v10}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v20

    .line 750
    move-object/from16 v16, v2

    move-object/from16 v17, v9

    move/from16 v19, v8

    move-wide/from16 v21, v14

    invoke-virtual/range {v16 .. v22}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/android/internal/widget/RecyclerView;IIIJ)I

    move-result v8

    .line 754
    :cond_8
    if-nez v7, :cond_a

    if-eqz v8, :cond_9

    goto :goto_4

    .line 761
    :cond_9
    iput-wide v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 762
    const/4 v2, 0x0

    return v2

    .line 755
    :cond_a
    :goto_4
    iget-wide v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v2, v9, v3

    if-nez v2, :cond_b

    .line 756
    iput-wide v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 758
    :cond_b
    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v7, v8}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    .line 759
    const/4 v2, 0x1

    return v2
.end method

.method select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 28
    .param p1, "selected"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 547
    move/from16 v13, p2

    iget-object v0, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v12, v0, :cond_0

    iget v0, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    if-ne v13, v0, :cond_0

    .line 548
    return-void

    .line 550
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 551
    iget v14, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    .line 553
    .local v14, "prevActionState":I
    const/4 v15, 0x1

    invoke-virtual {v11, v12, v15}, Lcom/android/internal/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I

    .line 554
    iput v13, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    .line 555
    const/4 v10, 0x2

    if-ne v13, v10, :cond_1

    .line 559
    iget-object v0, v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 560
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V

    .line 562
    :cond_1
    const/16 v9, 0x8

    mul-int v0, v9, v13

    add-int/2addr v0, v9

    shl-int v0, v15, v0

    add-int/lit8 v16, v0, -0x1

    .line 564
    .local v16, "actionStateMask":I
    const/16 v17, 0x0

    .line 566
    .local v17, "preventLayout":Z
    iget-object v0, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v8, 0x0

    if-eqz v0, :cond_7

    .line 567
    iget-object v7, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 568
    .local v7, "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 569
    if-ne v14, v10, :cond_2

    .line 570
    move v0, v8

    goto :goto_0

    :cond_2
    invoke-direct {v11, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper;->swipeIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    :goto_0
    move v6, v0

    .line 571
    .local v6, "swipeDir":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 575
    const/4 v0, 0x4

    if-eq v6, v0, :cond_3

    if-eq v6, v9, :cond_3

    const/16 v1, 0x10

    if-eq v6, v1, :cond_3

    const/16 v1, 0x20

    if-eq v6, v1, :cond_3

    packed-switch v6, :pswitch_data_0

    .line 589
    const/4 v1, 0x0

    .line 590
    .local v1, "targetTranslateX":F
    const/4 v2, 0x0

    .end local v1    # "targetTranslateX":F
    .local v2, "targetTranslateY":F
    .local v18, "targetTranslateX":F
    :goto_1
    move/from16 v18, v1

    goto :goto_2

    .line 585
    .end local v2    # "targetTranslateY":F
    .end local v18    # "targetTranslateX":F
    :pswitch_0
    const/4 v1, 0x0

    .line 586
    .restart local v1    # "targetTranslateX":F
    iget v2, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget-object v3, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 587
    .restart local v2    # "targetTranslateY":F
    goto :goto_1

    .line 580
    .end local v1    # "targetTranslateX":F
    .end local v2    # "targetTranslateY":F
    :cond_3
    const/4 v2, 0x0

    .line 581
    .restart local v2    # "targetTranslateY":F
    iget v1, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget-object v3, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    .line 582
    .restart local v1    # "targetTranslateX":F
    goto :goto_1

    .line 590
    .end local v1    # "targetTranslateX":F
    .restart local v18    # "targetTranslateX":F
    :goto_2
    move/from16 v19, v2

    .line 592
    .end local v2    # "targetTranslateY":F
    .local v19, "targetTranslateY":F
    if-ne v14, v10, :cond_4

    .line 593
    const/16 v0, 0x8

    .local v0, "animationType":I
    :goto_3
    goto :goto_4

    .line 594
    .end local v0    # "animationType":I
    :cond_4
    if-lez v6, :cond_5

    .line 595
    const/4 v0, 0x2

    goto :goto_3

    .line 597
    :cond_5
    nop

    .restart local v0    # "animationType":I
    :goto_4
    move v5, v0

    .line 599
    .end local v0    # "animationType":I
    .local v5, "animationType":I
    iget-object v0, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v11, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 600
    iget-object v0, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    aget v20, v0, v8

    .line 601
    .local v20, "currentTranslateX":F
    iget-object v0, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    aget v21, v0, v15

    .line 602
    .local v21, "currentTranslateY":F
    new-instance v22, Lcom/android/internal/widget/helper/ItemTouchHelper$3;

    move-object/from16 v0, v22

    move-object v1, v11

    move-object v2, v7

    move v3, v5

    move v4, v14

    move v15, v5

    move/from16 v5, v20

    .end local v5    # "animationType":I
    .local v15, "animationType":I
    move/from16 v23, v6

    move/from16 v6, v21

    .end local v6    # "swipeDir":I
    .local v23, "swipeDir":I
    move-object/from16 v24, v7

    move/from16 v7, v18

    .end local v7    # "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v24, "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    move/from16 v25, v14

    move v14, v8

    move/from16 v8, v19

    .end local v14    # "prevActionState":I
    .local v25, "prevActionState":I
    move/from16 v26, v9

    move/from16 v9, v23

    move v14, v10

    move-object/from16 v10, v24

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/helper/ItemTouchHelper$3;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFFILcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 631
    .local v0, "rv":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v1, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    sub-float v3, v18, v20

    sub-float v4, v19, v21

    invoke-virtual {v1, v2, v15, v3, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAnimationDuration(Lcom/android/internal/widget/RecyclerView;IFF)J

    move-result-wide v1

    .line 633
    .local v1, "duration":J
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 634
    iget-object v3, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-virtual {v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->start()V

    .line 636
    const/4 v0, 0x1

    .line 637
    .end local v1    # "duration":J
    .end local v15    # "animationType":I
    .end local v17    # "preventLayout":Z
    .end local v18    # "targetTranslateX":F
    .end local v19    # "targetTranslateY":F
    .end local v20    # "currentTranslateX":F
    .end local v21    # "currentTranslateY":F
    .end local v23    # "swipeDir":I
    .local v0, "preventLayout":Z
    nop

    .line 641
    move/from16 v17, v0

    move-object/from16 v0, v24

    goto :goto_5

    .line 638
    .end local v0    # "preventLayout":Z
    .end local v24    # "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v25    # "prevActionState":I
    .restart local v7    # "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .restart local v14    # "prevActionState":I
    .restart local v17    # "preventLayout":Z
    :cond_6
    move-object/from16 v24, v7

    move/from16 v26, v9

    move/from16 v25, v14

    move v14, v10

    .end local v7    # "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v14    # "prevActionState":I
    .restart local v24    # "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .restart local v25    # "prevActionState":I
    move-object/from16 v0, v24

    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .end local v24    # "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v0, "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v11, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 639
    iget-object v1, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 641
    :goto_5
    const/4 v1, 0x0

    iput-object v1, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .end local v0    # "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    goto :goto_6

    .line 643
    .end local v25    # "prevActionState":I
    .restart local v14    # "prevActionState":I
    :cond_7
    move/from16 v26, v9

    move/from16 v25, v14

    move v14, v10

    .end local v14    # "prevActionState":I
    .restart local v25    # "prevActionState":I
    :goto_6
    if-eqz v12, :cond_8

    .line 644
    iget-object v0, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 645
    invoke-virtual {v0, v1, v12}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    and-int v0, v0, v16

    iget v1, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    mul-int/lit8 v1, v1, 0x8

    shr-int/2addr v0, v1

    iput v0, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    .line 647
    iget-object v0, v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    .line 648
    iget-object v0, v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    .line 649
    iput-object v12, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 651
    if-ne v13, v14, :cond_8

    .line 652
    iget-object v0, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_7

    .line 655
    :cond_8
    const/4 v1, 0x0

    :goto_7
    iget-object v0, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 656
    .local v0, "rvParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_a

    .line 657
    iget-object v2, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    nop

    :cond_9
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 659
    :cond_a
    if-nez v17, :cond_b

    .line 660
    iget-object v1, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 662
    :cond_b
    iget-object v1, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v3, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 663
    iget-object v1, v11, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 664
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startDrag(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1055
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start drag has been called but dragging is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void

    .line 1059
    :cond_0
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    .line 1060
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return-void

    .line 1064
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1065
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1066
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 1067
    return-void
.end method

.method public startSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1102
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->hasSwipeFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1103
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start swipe has been called but swiping is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return-void

    .line 1106
    :cond_0
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    .line 1107
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return-void

    .line 1111
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 1114
    return-void
.end method

.method updateDxDy(Landroid/view/MotionEvent;II)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "directionFlags"    # I
    .param p3, "pointerIndex"    # I

    .line 1131
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1132
    .local v0, "x":F
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1135
    .local v1, "y":F
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v0, v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1136
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    .line 1137
    and-int/lit8 v2, p2, 0x4

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1138
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1140
    :cond_0
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_1

    .line 1141
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1143
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    .line 1144
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    .line 1146
    :cond_2
    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_3

    .line 1147
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    .line 1149
    :cond_3
    return-void
.end method
