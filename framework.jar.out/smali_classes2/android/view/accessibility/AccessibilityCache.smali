.class public Landroid/view/accessibility/AccessibilityCache;
.super Ljava/lang/Object;
.source "AccessibilityCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;
    }
.end annotation


# static fields
.field public static final CACHE_CRITICAL_EVENTS_MASK:I = 0x41b83d

.field private static final CHECK_INTEGRITY:Z

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityCache"


# instance fields
.field private mAccessibilityFocus:J

.field private final mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

.field private mInputFocus:J

.field private mIsAllWindowsCached:Z

.field private final mLock:Ljava/lang/Object;

.field private final mNodeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTempWindowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;)V
    .locals 2
    .param p1, "nodeRefresher"    # Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 66
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 67
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    .line 81
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    .line 82
    return-void
.end method

.method private clearNodesForWindowLocked(I)V
    .locals 4
    .param p1, "windowId"    # I

    .line 384
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 385
    .local v0, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v0, :cond_0

    .line 386
    return-void

    .line 389
    :cond_0
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 390
    .local v1, "nodeCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 391
    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 392
    .local v3, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 393
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 390
    .end local v3    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 395
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 396
    return-void
.end method

.method private clearSubTreeLocked(IJ)V
    .locals 1
    .param p1, "windowId"    # I
    .param p2, "rootNodeId"    # J

    .line 409
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 410
    .local v0, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v0, :cond_0

    .line 411
    invoke-direct {p0, v0, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    .line 413
    :cond_0
    return-void
.end method

.method private clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V
    .locals 5
    .param p2, "rootNodeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)V"
        }
    .end annotation

    .line 424
    .local p1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 425
    .local v0, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 426
    return-void

    .line 428
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 429
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    .line 430
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 431
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v3

    .line 432
    .local v3, "childNodeId":J
    invoke-direct {p0, p1, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    .line 430
    .end local v3    # "childNodeId":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 435
    return-void
.end method

.method private clearWindowCache()V
    .locals 4

    .line 368
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 369
    .local v0, "windowCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 370
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 371
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 372
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 369
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 374
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    .line 375
    return-void
.end method

.method private refreshCachedNodeLocked(IJ)V
    .locals 4
    .param p1, "windowId"    # I
    .param p2, "sourceId"    # J

    .line 193
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 194
    .local v0, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v0, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 199
    .local v1, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_1

    .line 200
    return-void

    .line 203
    :cond_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;->refreshNode(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    return-void

    .line 207
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 208
    return-void
.end method


# virtual methods
.method public add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 286
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    .line 292
    .local v1, "windowId":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 293
    .local v2, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v2, :cond_0

    .line 294
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    move-object v2, v3

    .line 295
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v3

    .line 299
    .local v3, "sourceId":J
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 300
    .local v5, "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v5, :cond_6

    .line 305
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v6

    .line 307
    .local v6, "newChildrenIds":Landroid/util/LongArray;
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v7

    .line 308
    .local v7, "oldChildCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_4

    .line 309
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    .line 313
    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    .line 314
    monitor-exit v0

    return-void

    .line 316
    :cond_1
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v9

    .line 318
    .local v9, "oldChildId":J
    if-eqz v6, :cond_2

    invoke-virtual {v6, v9, v10}, Landroid/util/LongArray;->indexOf(J)I

    move-result v11

    if-gez v11, :cond_3

    .line 319
    :cond_2
    invoke-direct {p0, v1, v9, v10}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 308
    .end local v9    # "oldChildId":J
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 326
    .end local v8    # "i":I
    :cond_4
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v8

    .line 327
    .local v8, "oldParentId":J
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-eqz v10, :cond_5

    .line 328
    invoke-direct {p0, v1, v8, v9}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto :goto_1

    .line 330
    :cond_5
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 336
    .end local v6    # "newChildrenIds":Landroid/util/LongArray;
    .end local v7    # "oldChildCount":I
    .end local v8    # "oldParentId":J
    :cond_6
    :goto_1
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 337
    .local v6, "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v2, v3, v4, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 338
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 339
    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 341
    :cond_7
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 342
    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 344
    .end local v1    # "windowId":I
    .end local v2    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "sourceId":J
    .end local v5    # "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_8
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 5
    .param p1, "window"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 103
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    .line 108
    .local v1, "windowId":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 109
    .local v2, "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 112
    :cond_0
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    .end local v1    # "windowId":I
    .end local v2    # "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkIntegrity()V
    .locals 26

    .line 445
    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 447
    :try_start_0
    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 448
    monitor-exit v2

    return-void

    .line 451
    :cond_0
    const/4 v0, 0x0

    .line 452
    .local v0, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    const/4 v3, 0x0

    .line 454
    .local v3, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget-object v4, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 455
    .local v4, "windowCount":I
    move-object v6, v3

    move-object v3, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v3, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v6, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_0
    if-ge v0, v4, :cond_5

    .line 456
    iget-object v7, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 459
    .local v7, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 460
    if-eqz v6, :cond_1

    .line 461
    const-string v8, "AccessibilityCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate active window:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 463
    :cond_1
    move-object v6, v7

    .line 468
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 469
    if-eqz v3, :cond_3

    .line 470
    const-string v8, "AccessibilityCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate focused window:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 472
    :cond_3
    move-object v3, v7

    .line 455
    .end local v7    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .line 479
    .local v0, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v7, 0x0

    .line 481
    .local v7, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v8, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 482
    .local v8, "nodesForWindowCount":I
    move-object v9, v7

    move-object v7, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v7, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v9, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_3
    if-ge v0, v8, :cond_13

    .line 483
    iget-object v10, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/LongSparseArray;

    .line 484
    .local v10, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    if-gtz v11, :cond_6

    .line 485
    nop

    .line 482
    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v22, v6

    move/from16 v23, v8

    goto/16 :goto_c

    .line 488
    :cond_6
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 489
    .local v11, "seen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v12, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 491
    .local v12, "windowId":I
    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    .line 492
    .local v13, "nodeCount":I
    move-object v14, v9

    move-object v9, v7

    const/4 v7, 0x0

    .local v7, "j":I
    .local v9, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v14, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_4
    if-ge v7, v13, :cond_12

    .line 493
    invoke-virtual {v10, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 496
    .local v15, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v11, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 497
    const-string v5, "AccessibilityCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string v3, "Duplicate node: "

    .end local v3    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v17, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in window:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    nop

    .line 492
    move/from16 v18, v4

    move-object/from16 v22, v6

    move/from16 v23, v8

    goto/16 :goto_b

    .line 504
    .end local v17    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v3    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_7
    move-object/from16 v17, v3

    .end local v3    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v17    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 505
    if-eqz v9, :cond_8

    .line 506
    const-string v1, "AccessibilityCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate accessibility focus:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in window:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 509
    :cond_8
    move-object v9, v15

    .line 514
    :cond_9
    :goto_5
    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 515
    if-eqz v14, :cond_a

    .line 516
    const-string v1, "AccessibilityCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate input focus: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in window:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 519
    :cond_a
    move-object v14, v15

    .line 524
    :cond_b
    :goto_6
    move/from16 v18, v4

    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v3

    .end local v4    # "windowCount":I
    .local v18, "windowCount":I
    invoke-virtual {v10, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 525
    .local v1, "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_e

    .line 526
    const/4 v3, 0x0

    .line 527
    .local v3, "childOfItsParent":Z
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v4

    .line 528
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_7
    if-ge v5, v4, :cond_d

    .line 529
    move/from16 v19, v3

    move/from16 v20, v4

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v3

    .end local v3    # "childOfItsParent":Z
    .end local v4    # "childCount":I
    .local v19, "childOfItsParent":Z
    .local v20, "childCount":I
    invoke-virtual {v10, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 530
    .local v3, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-ne v3, v15, :cond_c

    .line 531
    const/4 v4, 0x1

    .line 532
    .end local v19    # "childOfItsParent":Z
    .local v4, "childOfItsParent":Z
    goto :goto_8

    .line 528
    .end local v3    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "childOfItsParent":Z
    .restart local v19    # "childOfItsParent":Z
    :cond_c
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    goto :goto_7

    .line 535
    .end local v5    # "k":I
    .end local v19    # "childOfItsParent":Z
    .end local v20    # "childCount":I
    .local v3, "childOfItsParent":Z
    .local v4, "childCount":I
    :cond_d
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v4, v19

    .end local v3    # "childOfItsParent":Z
    .local v4, "childOfItsParent":Z
    .restart local v20    # "childCount":I
    :goto_8
    if-nez v4, :cond_e

    .line 536
    const-string v3, "AccessibilityCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v4

    const-string v4, "Invalid parent-child relation between parent: "

    .end local v4    # "childOfItsParent":Z
    .local v21, "childOfItsParent":Z
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " and child: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .end local v20    # "childCount":I
    .end local v21    # "childOfItsParent":Z
    :cond_e
    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    .line 543
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_9
    if-ge v4, v3, :cond_11

    .line 544
    move-object/from16 v22, v6

    invoke-virtual {v15, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v5

    .end local v6    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v22, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v10, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 545
    .local v5, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v5, :cond_10

    .line 546
    move/from16 v23, v8

    move-object/from16 v24, v9

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v8

    .end local v8    # "nodesForWindowCount":I
    .end local v9    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v23, "nodesForWindowCount":I
    .local v24, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v10, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 547
    .local v6, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eq v6, v15, :cond_f

    .line 548
    const-string v8, "AccessibilityCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v3

    const-string v3, "Invalid child-parent relation between child: "

    .end local v3    # "childCount":I
    .local v25, "childCount":I
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and parent: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_a

    .line 543
    .end local v25    # "childCount":I
    .restart local v3    # "childCount":I
    :cond_f
    move/from16 v25, v3

    .end local v3    # "childCount":I
    .restart local v25    # "childCount":I
    goto :goto_a

    .end local v23    # "nodesForWindowCount":I
    .end local v24    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v25    # "childCount":I
    .restart local v3    # "childCount":I
    .restart local v8    # "nodesForWindowCount":I
    .restart local v9    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_10
    move/from16 v25, v3

    move/from16 v23, v8

    move-object/from16 v24, v9

    .end local v3    # "childCount":I
    .end local v8    # "nodesForWindowCount":I
    .end local v9    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v23    # "nodesForWindowCount":I
    .restart local v24    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v25    # "childCount":I
    :goto_a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v3, v25

    goto :goto_9

    .line 492
    .end local v1    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "k":I
    .end local v15    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v22    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v23    # "nodesForWindowCount":I
    .end local v24    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v25    # "childCount":I
    .local v6, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v8    # "nodesForWindowCount":I
    .restart local v9    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_11
    move-object/from16 v22, v6

    move/from16 v23, v8

    move-object/from16 v24, v9

    .end local v6    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v8    # "nodesForWindowCount":I
    .restart local v22    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v23    # "nodesForWindowCount":I
    :goto_b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v6, v22

    move/from16 v8, v23

    move-object/from16 v1, p0

    goto/16 :goto_4

    .line 482
    .end local v7    # "j":I
    .end local v10    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v11    # "seen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v12    # "windowId":I
    .end local v13    # "nodeCount":I
    .end local v17    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v18    # "windowCount":I
    .end local v22    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v23    # "nodesForWindowCount":I
    .local v3, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v4, "windowCount":I
    .restart local v6    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v8    # "nodesForWindowCount":I
    :cond_12
    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v22, v6

    move/from16 v23, v8

    move-object v7, v9

    move-object v9, v14

    .end local v3    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "windowCount":I
    .end local v6    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v8    # "nodesForWindowCount":I
    .end local v14    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v7, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v9, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v17    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v18    # "windowCount":I
    .restart local v22    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v23    # "nodesForWindowCount":I
    :goto_c
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v6, v22

    move/from16 v8, v23

    move-object/from16 v1, p0

    goto/16 :goto_3

    .line 555
    .end local v0    # "i":I
    .end local v7    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v17    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v18    # "windowCount":I
    .end local v22    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v23    # "nodesForWindowCount":I
    :cond_13
    monitor-exit v2

    .line 556
    return-void

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 4

    .line 351
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCache()V

    .line 356
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 357
    .local v1, "nodesForWindowCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 358
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 359
    .local v3, "windowId":I
    invoke-direct {p0, v3}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    .line 357
    .end local v3    # "windowId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    .end local v2    # "i":I
    :cond_0
    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 363
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 364
    .end local v1    # "nodesForWindowCount":I
    monitor-exit v0

    .line 365
    return-void

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4
    .param p1, "windowId"    # I
    .param p2, "accessibilityNodeId"    # J

    .line 219
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 221
    .local v1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v1, :cond_0

    .line 222
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 224
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 225
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v2, :cond_1

    .line 228
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    move-object v2, v3

    .line 233
    :cond_1
    monitor-exit v0

    return-object v2

    .line 234
    .end local v1    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3
    .param p1, "windowId"    # I

    .line 271
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 273
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v1, :cond_0

    .line 274
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 276
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 277
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindows()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 240
    monitor-exit v0

    return-object v2

    .line 243
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 244
    .local v1, "windowCount":I
    if-lez v1, :cond_3

    .line 246
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    .line 247
    .local v2, "sortedWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 249
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 250
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 251
    .local v4, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    .end local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 257
    .local v3, "sortedWindowCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .local v4, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_2

    .line 259
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 260
    .local v6, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 258
    .end local v6    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 264
    .end local v5    # "i":I
    :cond_2
    monitor-exit v0

    return-object v4

    .line 266
    .end local v2    # "sortedWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v3    # "sortedWindowCount":I
    .end local v4    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :cond_3
    monitor-exit v0

    return-object v2

    .line 267
    .end local v1    # "windowCount":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 126
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 128
    .local v1, "eventType":I
    const-wide/32 v2, 0x7fffffff

    sparse-switch v1, :sswitch_data_0

    .end local v1    # "eventType":I
    goto/16 :goto_1

    .line 138
    .restart local v1    # "eventType":I
    :sswitch_0
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 139
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v4, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 140
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    goto/16 :goto_1

    .line 130
    :sswitch_1
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 134
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 135
    goto :goto_1

    .line 173
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 174
    goto :goto_1

    .line 160
    :sswitch_3
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    :try_start_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v3

    .line 162
    .local v3, "windowId":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    .line 163
    .local v4, "sourceId":J
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 165
    invoke-direct {p0, v3, v4, v5}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0, v3, v4, v5}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 169
    .end local v3    # "windowId":I
    .end local v4    # "sourceId":J
    :goto_0
    monitor-exit v2

    .line 170
    goto :goto_1

    .line 169
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 178
    :sswitch_4
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .end local v1    # "eventType":I
    goto :goto_1

    .line 145
    .restart local v1    # "eventType":I
    :sswitch_5
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 148
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 149
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 150
    goto :goto_1

    .line 156
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 157
    nop

    .line 181
    .end local v1    # "eventType":I
    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    if-eqz v0, :cond_4

    .line 184
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->checkIntegrity()V

    .line 186
    :cond_4
    return-void

    .line 181
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x4 -> :sswitch_6
        0x8 -> :sswitch_5
        0x10 -> :sswitch_6
        0x20 -> :sswitch_4
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_6
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x400000 -> :sswitch_4
    .end sparse-switch
.end method

.method public setWindows(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCache()V

    .line 90
    if-nez p1, :cond_0

    .line 91
    monitor-exit v0

    return-void

    .line 93
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 94
    .local v1, "windowCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 95
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 96
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {p0, v3}, Landroid/view/accessibility/AccessibilityCache;->addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 94
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    .line 99
    .end local v1    # "windowCount":I
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
