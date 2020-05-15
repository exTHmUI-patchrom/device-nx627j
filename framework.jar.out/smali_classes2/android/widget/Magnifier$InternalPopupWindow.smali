.class Landroid/widget/Magnifier$InternalPopupWindow;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Magnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalPopupWindow"
.end annotation


# static fields
.field private static final CONTENT_BITMAP_ALPHA:I = 0xf2

.field private static final SURFACE_Z:I = 0x5


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapRenderNode:Landroid/view/RenderNode;

.field private mCallback:Landroid/widget/Magnifier$Callback;

.field private final mContentHeight:I

.field private final mContentWidth:I

.field private final mDestroyLock:Ljava/lang/Object;

.field private final mDisplay:Landroid/view/Display;

.field private mFirstDraw:Z

.field private mFrameDrawScheduled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLastDrawContentPositionX:I

.field private mLastDrawContentPositionY:I

.field private final mLock:Ljava/lang/Object;

.field private final mMagnifierUpdater:Ljava/lang/Runnable;

.field private final mOffsetX:I

.field private final mOffsetY:I

.field private mPendingWindowPositionUpdate:Z

.field private final mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mSurfaceHeight:I

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mSurfaceWidth:I

.field private mWindowPositionX:I

.field private mWindowPositionY:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/Surface;IIFFLandroid/os/Handler;Ljava/lang/Object;Landroid/widget/Magnifier$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "parentSurface"    # Landroid/view/Surface;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "elevation"    # F
    .param p7, "cornerRadius"    # F
    .param p8, "handler"    # Landroid/os/Handler;
    .param p9, "lock"    # Ljava/lang/Object;
    .param p10, "callback"    # Landroid/widget/Magnifier$Callback;

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    .line 481
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mDestroyLock:Ljava/lang/Object;

    .line 487
    iput-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mDisplay:Landroid/view/Display;

    .line 488
    iput-object p9, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    .line 489
    iput-object p10, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    .line 491
    iput p4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    .line 492
    iput p5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    .line 493
    int-to-float v0, p4

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    .line 494
    int-to-float v0, p5

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    .line 496
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceWidth:I

    .line 497
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceHeight:I

    .line 498
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0, p3}, Landroid/view/SurfaceSession;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 499
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 500
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceWidth:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceHeight:I

    .line 501
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string/jumbo v1, "magnifier surface"

    .line 502
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 503
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 505
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    .line 506
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 509
    new-instance v0, Landroid/view/ThreadedRenderer$SimpleRenderer;

    const-string/jumbo v1, "magnifier renderer"

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-direct {v0, p1, v1, v2}, Landroid/view/ThreadedRenderer$SimpleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V

    iput-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 514
    const-string/jumbo v0, "magnifier content"

    invoke-direct {p0, v0, p6, p7}, Landroid/widget/Magnifier$InternalPopupWindow;->createRenderNodeForBitmap(Ljava/lang/String;FF)Landroid/view/RenderNode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/view/RenderNode;

    .line 520
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/view/RenderNode;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v0

    .line 522
    .local v0, "canvas":Landroid/view/DisplayListCanvas;
    :try_start_0
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertReorderBarrier()V

    .line 523
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, v1}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 524
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertInorderBarrier()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/view/RenderNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 527
    nop

    .line 530
    iput-object p8, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    .line 531
    new-instance v1, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$t9Cn2sIi2LBUhAVikvRPKKoAwIU;

    invoke-direct {v1, p0}, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$t9Cn2sIi2LBUhAVikvRPKKoAwIU;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;)V

    iput-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    .line 532
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    .line 533
    return-void

    .line 526
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/view/RenderNode;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    throw v1
.end method

.method static synthetic access$100(Landroid/widget/Magnifier$InternalPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Magnifier$InternalPopupWindow;

    .line 424
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLastDrawContentPositionX:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/Magnifier$InternalPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Magnifier$InternalPopupWindow;

    .line 424
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLastDrawContentPositionY:I

    return v0
.end method

.method static synthetic access$602(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/widget/Magnifier$Callback;)Landroid/widget/Magnifier$Callback;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Magnifier$InternalPopupWindow;
    .param p1, "x1"    # Landroid/widget/Magnifier$Callback;

    .line 424
    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    return-object p1
.end method

.method static synthetic access$700(Landroid/widget/Magnifier$InternalPopupWindow;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Magnifier$InternalPopupWindow;

    .line 424
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Magnifier$InternalPopupWindow;

    .line 424
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private createRenderNodeForBitmap(Ljava/lang/String;FF)Landroid/view/RenderNode;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elevation"    # F
    .param p3, "cornerRadius"    # F

    .line 537
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v0

    .line 541
    .local v0, "bitmapRenderNode":Landroid/view/RenderNode;
    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 543
    invoke-virtual {v0, p2}, Landroid/view/RenderNode;->setElevation(F)Z

    .line 545
    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    .line 546
    .local v1, "outline":Landroid/graphics/Outline;
    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 547
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 548
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 549
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/RenderNode;->setClipToOutline(Z)Z

    .line 552
    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v2

    .line 554
    .local v2, "canvas":Landroid/view/DisplayListCanvas;
    const v3, -0xff0100

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/view/DisplayListCanvas;->drawColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    invoke-virtual {v0, v2}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 557
    nop

    .line 559
    return-object v0

    .line 556
    :catchall_0
    move-exception v3

    invoke-virtual {v0, v2}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    throw v3
.end method

.method private doDraw()V
    .locals 12

    .line 628
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_0
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    monitor-exit v0

    return-void

    .line 634
    :cond_0
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/view/RenderNode;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    .line 635
    invoke-virtual {v1, v2, v3}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 637
    .local v1, "canvas":Landroid/view/DisplayListCanvas;
    const/4 v2, -0x1

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/view/DisplayListCanvas;->drawColor(I)V

    .line 639
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 640
    .local v2, "srcRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-direct {v3, v5, v5, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 641
    .local v3, "dstRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 642
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 643
    const/16 v6, 0xf2

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 644
    iget-object v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/view/DisplayListCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    .end local v2    # "srcRect":Landroid/graphics/Rect;
    .end local v3    # "dstRect":Landroid/graphics/Rect;
    .end local v4    # "paint":Landroid/graphics/Paint;
    :try_start_2
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v2, v1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 647
    nop

    .line 649
    iget-boolean v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 680
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 651
    :cond_2
    :goto_0
    iget-boolean v11, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    .line 652
    .local v11, "firstDraw":Z
    iput-boolean v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    .line 653
    iget-boolean v10, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    .line 654
    .local v10, "updateWindowPosition":Z
    iput-boolean v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    .line 655
    iget v8, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionX:I

    .line 656
    .local v8, "pendingX":I
    iget v9, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionY:I

    .line 658
    .local v9, "pendingY":I
    new-instance v2, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$vZThyvjDQhg2J1GAeOWCNqy2iiw;

    move-object v6, v2

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$vZThyvjDQhg2J1GAeOWCNqy2iiw;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;IIZZ)V

    .line 679
    .end local v8    # "pendingX":I
    .end local v9    # "pendingY":I
    .end local v10    # "updateWindowPosition":Z
    .end local v11    # "firstDraw":Z
    .local v2, "callback":Landroid/view/ThreadedRenderer$FrameDrawingCallback;
    nop

    .line 680
    :goto_1
    nop

    .line 683
    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionX:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLastDrawContentPositionX:I

    .line 684
    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionY:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLastDrawContentPositionY:I

    .line 685
    iput-boolean v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    .line 686
    .end local v1    # "canvas":Landroid/view/DisplayListCanvas;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 688
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0, v2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->draw(Landroid/view/ThreadedRenderer$FrameDrawingCallback;)V

    .line 689
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    if-eqz v0, :cond_3

    .line 690
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    invoke-interface {v0}, Landroid/widget/Magnifier$Callback;->onOperationComplete()V

    .line 692
    :cond_3
    return-void

    .line 646
    .end local v2    # "callback":Landroid/view/ThreadedRenderer$FrameDrawingCallback;
    .restart local v1    # "canvas":Landroid/view/DisplayListCanvas;
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v3, v1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    throw v2

    .line 686
    .end local v1    # "canvas":Landroid/view/DisplayListCanvas;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static synthetic lambda$doDraw$0(Landroid/widget/Magnifier$InternalPopupWindow;IIZZJ)V
    .locals 5
    .param p1, "pendingX"    # I
    .param p2, "pendingY"    # I
    .param p3, "updateWindowPosition"    # Z
    .param p4, "firstDraw"    # Z
    .param p5, "frame"    # J

    .line 659
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mDestroyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    monitor-exit v0

    return-void

    .line 663
    :cond_0
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 664
    :try_start_1
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v3, p1, p2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setLightCenter(Landroid/view/Display;II)V

    .line 666
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 667
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3, p5, p6}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    .line 668
    if-eqz p3, :cond_1

    .line 669
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 671
    :cond_1
    if-eqz p4, :cond_2

    .line 672
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 673
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    .line 675
    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 676
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 678
    return-void

    .line 676
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 677
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public static synthetic lambda$t9Cn2sIi2LBUhAVikvRPKKoAwIU(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->doDraw()V

    return-void
.end method

.method private requestUpdate()V
    .locals 2

    .line 594
    iget-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    if-eqz v0, :cond_0

    .line 595
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 598
    .local v0, "request":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 599
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 600
    iput-boolean v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    .line 601
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 607
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mDestroyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_0
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->destroy()V

    .line 609
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 610
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 611
    :try_start_1
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->destroy()V

    .line 612
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 613
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V

    .line 614
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->destroy()V

    .line 615
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 616
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 619
    :cond_0
    monitor-exit v1

    .line 620
    return-void

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 609
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setContentPositionForNextDraw(II)V
    .locals 1
    .param p1, "contentX"    # I
    .param p2, "contentY"    # I

    .line 571
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionX:I

    .line 572
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionY:I

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    .line 574
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->requestUpdate()V

    .line 575
    return-void
.end method

.method public updateContent(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 586
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 589
    :cond_0
    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    .line 590
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->requestUpdate()V

    .line 591
    return-void
.end method
