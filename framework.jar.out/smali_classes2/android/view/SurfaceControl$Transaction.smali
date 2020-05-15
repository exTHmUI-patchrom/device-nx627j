.class public Landroid/view/SurfaceControl$Transaction;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transaction"
.end annotation


# static fields
.field public static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field mFreeNativeResources:Ljava/lang/Runnable;

.field private mNativeObject:J

.field private final mResizedSurfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1383
    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/view/SurfaceControl$Transaction;

    .line 1384
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1385
    invoke-static {}, Landroid/view/SurfaceControl;->access$200()J

    move-result-wide v2

    const-wide/16 v4, 0x200

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v6, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1383
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1388
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    .line 1392
    invoke-static {}, Landroid/view/SurfaceControl;->access$300()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 1393
    sget-object v0, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 1394
    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 1395
    return-void
.end method

.method private applyResizedSurfaces()V
    .locals 5

    .line 1424
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1425
    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 1426
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    .line 1427
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-static {v2}, Landroid/view/SurfaceControl;->access$500(Landroid/view/SurfaceControl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1428
    :try_start_0
    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-static {v2, v4}, Landroid/view/SurfaceControl;->access$602(Landroid/view/SurfaceControl;I)I

    .line 1429
    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v4}, Landroid/view/SurfaceControl;->access$702(Landroid/view/SurfaceControl;I)I

    .line 1430
    monitor-exit v3

    .line 1424
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1430
    .restart local v1    # "size":Landroid/graphics/Point;
    .restart local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1432
    .end local v0    # "i":I
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1433
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 1402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 1403
    return-void
.end method

.method public apply(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .line 1419
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;->applyResizedSurfaces()V

    .line 1420
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->access$400(JZ)V

    .line 1421
    return-void
.end method

.method public close()V
    .locals 2

    .line 1411
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1412
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 1413
    return-void
.end method

.method public deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/os/IBinder;J)Landroid/view/SurfaceControl$Transaction;
    .locals 8
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "handle"    # Landroid/os/IBinder;
    .param p3, "frameNumber"    # J

    .line 1534
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 1535
    return-object p0

    .line 1537
    :cond_0
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1538
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-object v5, p2

    move-wide v6, p3

    invoke-static/range {v1 .. v7}, Landroid/view/SurfaceControl;->access$2000(JJLandroid/os/IBinder;J)V

    .line 1539
    return-object p0
.end method

.method public deferTransactionUntilSurface(Landroid/view/SurfaceControl;Landroid/view/Surface;J)Landroid/view/SurfaceControl$Transaction;
    .locals 9
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "barrierSurface"    # Landroid/view/Surface;
    .param p3, "frameNumber"    # J

    .line 1544
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 1545
    return-object p0

    .line 1547
    :cond_0
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1548
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget-wide v5, p2, Landroid/view/Surface;->mNativeObject:J

    move-wide v7, p3

    invoke-static/range {v1 .. v8}, Landroid/view/SurfaceControl;->access$2100(JJJJ)V

    .line 1550
    return-object p0
.end method

.method public destroy(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 1636
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1649
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$2800(Landroid/view/SurfaceControl;)Ldalvik/system/CloseGuard;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 1651
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->access$2900(JJ)V

    .line 1652
    return-object p0
.end method

.method public detachChildren(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 1568
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1569
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->access$2400(JJ)V

    .line 1570
    return-object p0
.end method

.method public hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 1442
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1443
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$900(JJII)V

    .line 1444
    return-object p0
.end method

.method public merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "other"    # Landroid/view/SurfaceControl$Transaction;

    .line 1731
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 1732
    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1733
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->access$3600(JJ)V

    .line 1734
    return-object p0
.end method

.method public reparent(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "newParentHandle"    # Landroid/os/IBinder;

    .line 1561
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1562
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$2300(JJLandroid/os/IBinder;)V

    .line 1564
    return-object p0
.end method

.method public reparentChildren(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "newParentHandle"    # Landroid/os/IBinder;

    .line 1554
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1555
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$2200(JJLandroid/os/IBinder;)V

    .line 1556
    return-object p0
.end method

.method public setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "alpha"    # F

    .line 1481
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1482
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$1500(JJF)V

    .line 1483
    return-object p0
.end method

.method public setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 2

    .line 1709
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->access$3400(J)V

    .line 1710
    return-object p0
.end method

.method public setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "color"    # [F

    .line 1585
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1586
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$2600(JJ[F)V

    .line 1587
    return-object p0
.end method

.method public setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;
    .locals 2
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "layerStack"    # I

    .line 1671
    if-eqz p1, :cond_0

    .line 1674
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->access$3100(JLandroid/os/IBinder;I)V

    .line 1675
    return-object p0

    .line 1672
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 16
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "orientation"    # I
    .param p3, "layerStackRect"    # Landroid/graphics/Rect;
    .param p4, "displayRect"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1680
    move-object/from16 v2, p4

    if-eqz p1, :cond_2

    .line 1683
    if-eqz v1, :cond_1

    .line 1686
    if-eqz v2, :cond_0

    .line 1689
    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v3 .. v14}, Landroid/view/SurfaceControl;->access$3200(JLandroid/os/IBinder;IIIIIIIII)V

    .line 1692
    return-object v0

    .line 1687
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "displayRect must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1684
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "layerStackRect must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1681
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "displayToken must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;
    .locals 2
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1696
    if-eqz p1, :cond_1

    .line 1699
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 1703
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/SurfaceControl;->access$3300(JLandroid/os/IBinder;II)V

    .line 1704
    return-object p0

    .line 1700
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1697
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;
    .locals 5
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 1656
    if-eqz p1, :cond_1

    .line 1660
    if-eqz p2, :cond_0

    .line 1661
    iget-object v0, p2, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1662
    :try_start_0
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p2, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1, v3, v4}, Landroid/view/SurfaceControl;->access$3000(JLandroid/os/IBinder;J)V

    .line 1663
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1665
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/SurfaceControl;->access$3000(JLandroid/os/IBinder;J)V

    .line 1667
    :goto_0
    return-object p0

    .line 1657
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEarlyWakeup()Landroid/view/SurfaceControl$Transaction;
    .locals 2

    .line 1722
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->access$3500(J)V

    .line 1723
    return-object p0
.end method

.method public setFinalCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 19
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "crop"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1515
    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1516
    if-eqz v2, :cond_0

    .line 1517
    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v3 .. v10}, Landroid/view/SurfaceControl;->access$1800(JJIIII)V

    goto :goto_0

    .line 1520
    :cond_0
    iget-wide v11, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v13, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v11 .. v18}, Landroid/view/SurfaceControl;->access$1800(JJIIII)V

    .line 1523
    :goto_0
    return-object v0
.end method

.method public setGeometryAppliesWithResize(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 1598
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1599
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->access$2700(JJ)V

    .line 1600
    return-object p0
.end method

.method public setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "z"    # I

    .line 1461
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1462
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$1200(JJI)V

    .line 1463
    return-object p0
.end method

.method public setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "layerStack"    # I

    .line 1527
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1528
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$1900(JJI)V

    .line 1529
    return-object p0
.end method

.method public setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    .locals 8
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "dsdx"    # F
    .param p3, "dtdx"    # F
    .param p4, "dtdy"    # F
    .param p5, "dsdy"    # F

    .line 1488
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1489
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->access$1600(JJFFFF)V

    .line 1491
    return-object p0
.end method

.method public setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;
    .locals 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "float9"    # [F

    .line 1495
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1496
    const/4 v0, 0x0

    aget v3, p3, v0

    const/4 v0, 0x3

    aget v4, p3, v0

    const/4 v0, 0x1

    aget v5, p3, v0

    const/4 v0, 0x4

    aget v6, p3, v0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1498
    const/4 v0, 0x2

    aget v0, p3, v0

    const/4 v1, 0x5

    aget v1, p3, v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1499
    return-object p0
.end method

.method public setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 12
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "isOpaque"    # Z

    .line 1622
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1623
    if-eqz p2, :cond_0

    .line 1624
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$900(JJII)V

    goto :goto_0

    .line 1626
    :cond_0
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->access$900(JJII)V

    .line 1628
    :goto_0
    return-object p0
.end method

.method public setOverrideScalingMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "overrideScalingMode"    # I

    .line 1574
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1575
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$2500(JJI)V

    .line 1577
    return-object p0
.end method

.method public setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    .locals 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1448
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1449
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$1000(JJFF)V

    .line 1450
    return-object p0
.end method

.method public setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "z"    # I

    .line 1467
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1468
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 1469
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v4

    .line 1468
    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$1300(JJLandroid/os/IBinder;I)V

    .line 1470
    return-object p0
.end method

.method public setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 12
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "isSecure"    # Z

    .line 1608
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1609
    if-eqz p2, :cond_0

    .line 1610
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v4, 0x80

    const/16 v5, 0x80

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$900(JJII)V

    goto :goto_0

    .line 1612
    :cond_0
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/16 v11, 0x80

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->access$900(JJII)V

    .line 1614
    :goto_0
    return-object p0
.end method

.method public setSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .locals 8
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 1454
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1455
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Landroid/view/SurfaceControl;->access$1100(JJII)V

    .line 1457
    return-object p0
.end method

.method public setTransparentRegionHint(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "transparentRegion"    # Landroid/graphics/Region;

    .line 1474
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1475
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$1400(JJLandroid/graphics/Region;)V

    .line 1477
    return-object p0
.end method

.method public setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 19
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "crop"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1503
    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1504
    if-eqz v2, :cond_0

    .line 1505
    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v3 .. v10}, Landroid/view/SurfaceControl;->access$1700(JJIIII)V

    goto :goto_0

    .line 1508
    :cond_0
    iget-wide v11, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v13, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v11 .. v18}, Landroid/view/SurfaceControl;->access$1700(JJIIII)V

    .line 1511
    :goto_0
    return-object v0
.end method

.method public show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 1436
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1437
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$900(JJII)V

    .line 1438
    return-object p0
.end method

.method public skipSync(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "mask"    # I

    .line 1739
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1740
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x0

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$900(JJII)V

    .line 1741
    return-object p0
.end method
