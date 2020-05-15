.class public final Landroid/graphics/pdf/PdfRenderer$Page;
.super Ljava/lang/Object;
.source "PdfRenderer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Page"
.end annotation


# static fields
.field public static final RENDER_MODE_FOR_DISPLAY:I = 0x1

.field public static final RENDER_MODE_FOR_PRINT:I = 0x2


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mHeight:I

.field private final mIndex:I

.field private mNativePage:J

.field private final mWidth:I

.field final synthetic this$0:Landroid/graphics/pdf/PdfRenderer;


# direct methods
.method private constructor <init>(Landroid/graphics/pdf/PdfRenderer;I)V
    .locals 4
    .param p1, "this$0"    # Landroid/graphics/pdf/PdfRenderer;
    .param p2, "index"    # I

    .line 306
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 307
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->access$100(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/Point;

    move-result-object v0

    .line 308
    .local v0, "size":Landroid/graphics/Point;
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    :try_start_0
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->access$200(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v2

    invoke-static {v2, v3, p2, v0}, Landroid/graphics/pdf/PdfRenderer;->access$300(JILandroid/graphics/Point;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    .line 310
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iput p2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    .line 312
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    .line 313
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    .line 314
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 315
    return-void

    .line 310
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method synthetic constructor <init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/pdf/PdfRenderer;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/graphics/pdf/PdfRenderer$1;

    .line 286
    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;I)V

    return-void
.end method

.method private doClose()V
    .locals 6

    .line 465
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 466
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_0
    iget-wide v4, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    invoke-static {v4, v5}, Landroid/graphics/pdf/PdfRenderer;->access$500(J)V

    .line 468
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    iput-wide v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    goto :goto_0

    .line 468
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 472
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 473
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->access$602(Landroid/graphics/pdf/PdfRenderer;Landroid/graphics/pdf/PdfRenderer$Page;)Landroid/graphics/pdf/PdfRenderer$Page;

    .line 474
    return-void
.end method

.method private throwIfClosed()V
    .locals 4

    .line 477
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 480
    return-void

    .line 478
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 447
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfClosed()V

    .line 448
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V

    .line 449
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 454
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 458
    :cond_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 461
    nop

    .line 462
    return-void

    .line 460
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .line 341
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 323
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 332
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    return v0
.end method

.method public render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V
    .locals 25
    .param p1, "destination"    # Landroid/graphics/Bitmap;
    .param p2, "destClip"    # Landroid/graphics/Rect;
    .param p3, "transform"    # Landroid/graphics/Matrix;
    .param p4, "renderMode"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 384
    move/from16 v15, p4

    iget-wide v3, v1, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_e

    .line 388
    const-string v3, "bitmap null"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/graphics/Bitmap;

    .line 390
    .end local p1    # "destination":Landroid/graphics/Bitmap;
    .local v14, "destination":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_d

    .line 394
    if-eqz v2, :cond_1

    .line 395
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 396
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 397
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "destBounds not in destination"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 402
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Matrix;->isAffine()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 403
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "transform not affine"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 406
    :cond_3
    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v15, v4, :cond_5

    if-ne v15, v3, :cond_4

    goto :goto_2

    .line 407
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported render mode"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    :cond_5
    :goto_2
    if-ne v15, v4, :cond_7

    if-eq v15, v3, :cond_6

    goto :goto_3

    .line 411
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Only single render mode supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 414
    :cond_7
    :goto_3
    const/4 v3, 0x0

    if-eqz v2, :cond_8

    iget v4, v2, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_8
    move v4, v3

    :goto_4
    move v12, v4

    .line 415
    .local v12, "contentLeft":I
    if-eqz v2, :cond_9

    iget v3, v2, Landroid/graphics/Rect;->top:I

    nop

    :cond_9
    move v13, v3

    .line 416
    .local v13, "contentTop":I
    if-eqz v2, :cond_a

    iget v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 417
    :cond_a
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    :goto_5
    move/from16 v16, v3

    .line 418
    .local v16, "contentRight":I
    if-eqz v2, :cond_b

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    .line 419
    :cond_b
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    :goto_6
    move/from16 v17, v3

    .line 422
    .local v17, "contentBottom":I
    if-nez p3, :cond_c

    .line 423
    sub-int v3, v16, v12

    .line 424
    .local v3, "clipWidth":I
    sub-int v4, v17, v13

    .line 426
    .local v4, "clipHeight":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object v0, v5

    .line 427
    .end local p3    # "transform":Landroid/graphics/Matrix;
    .local v0, "transform":Landroid/graphics/Matrix;
    int-to-float v5, v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v4

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 427
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 429
    int-to-float v5, v12

    int-to-float v6, v13

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 432
    .end local v3    # "clipWidth":I
    .end local v4    # "clipHeight":I
    move-object v11, v0

    goto :goto_7

    .line 432
    .end local v0    # "transform":Landroid/graphics/Matrix;
    .restart local p3    # "transform":Landroid/graphics/Matrix;
    :cond_c
    move-object/from16 v11, p3

    .line 432
    .end local p3    # "transform":Landroid/graphics/Matrix;
    .local v11, "transform":Landroid/graphics/Matrix;
    :goto_7
    iget-wide v9, v11, Landroid/graphics/Matrix;->native_instance:J

    .line 434
    .local v9, "transformPtr":J
    sget-object v18, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v18

    .line 435
    :try_start_0
    iget-object v0, v1, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->access$200(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v3

    iget-wide v5, v1, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v14

    move v8, v12

    move-wide/from16 v19, v9

    move v9, v13

    .line 435
    .end local v9    # "transformPtr":J
    .local v19, "transformPtr":J
    move/from16 v10, v16

    move-object/from16 v21, v11

    move/from16 v11, v17

    .line 435
    .end local v11    # "transform":Landroid/graphics/Matrix;
    .local v21, "transform":Landroid/graphics/Matrix;
    move/from16 v22, v12

    move/from16 v23, v13

    move-wide/from16 v12, v19

    .line 435
    .end local v12    # "contentLeft":I
    .end local v13    # "contentTop":I
    .local v22, "contentLeft":I
    .local v23, "contentTop":I
    move-object/from16 v24, v14

    move v14, v15

    .line 435
    .end local v14    # "destination":Landroid/graphics/Bitmap;
    .local v24, "destination":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-static/range {v3 .. v14}, Landroid/graphics/pdf/PdfRenderer;->access$400(JJLandroid/graphics/Bitmap;IIIIJI)V

    .line 437
    monitor-exit v18

    .line 438
    return-void

    .line 437
    .end local v19    # "transformPtr":J
    .end local v21    # "transform":Landroid/graphics/Matrix;
    .end local v22    # "contentLeft":I
    .end local v23    # "contentTop":I
    .end local v24    # "destination":Landroid/graphics/Bitmap;
    .restart local v9    # "transformPtr":J
    .restart local v11    # "transform":Landroid/graphics/Matrix;
    .restart local v12    # "contentLeft":I
    .restart local v13    # "contentTop":I
    .restart local v14    # "destination":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    move-wide/from16 v19, v9

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move-object/from16 v24, v14

    .line 437
    .end local v9    # "transformPtr":J
    .end local v11    # "transform":Landroid/graphics/Matrix;
    .end local v12    # "contentLeft":I
    .end local v13    # "contentTop":I
    .end local v14    # "destination":Landroid/graphics/Bitmap;
    .restart local v19    # "transformPtr":J
    .restart local v21    # "transform":Landroid/graphics/Matrix;
    .restart local v22    # "contentLeft":I
    .restart local v23    # "contentTop":I
    .restart local v24    # "destination":Landroid/graphics/Bitmap;
    :goto_8
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_8

    .line 391
    .end local v16    # "contentRight":I
    .end local v17    # "contentBottom":I
    .end local v19    # "transformPtr":J
    .end local v21    # "transform":Landroid/graphics/Matrix;
    .end local v22    # "contentLeft":I
    .end local v23    # "contentTop":I
    .end local v24    # "destination":Landroid/graphics/Bitmap;
    .restart local v14    # "destination":Landroid/graphics/Bitmap;
    .restart local p3    # "transform":Landroid/graphics/Matrix;
    :cond_d
    move-object/from16 v24, v14

    .line 391
    .end local v14    # "destination":Landroid/graphics/Bitmap;
    .restart local v24    # "destination":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported pixel format"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 385
    .end local v24    # "destination":Landroid/graphics/Bitmap;
    .restart local p1    # "destination":Landroid/graphics/Bitmap;
    :cond_e
    move-object/from16 v4, p1

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
.end method
