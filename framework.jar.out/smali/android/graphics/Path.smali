.class public Landroid/graphics/Path;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Path$Direction;,
        Landroid/graphics/Path$FillType;,
        Landroid/graphics/Path$Op;
    }
.end annotation


# static fields
.field static final sFillTypeArray:[Landroid/graphics/Path$FillType;

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field public isSimplePath:Z

.field private mLastDirection:Landroid/graphics/Path$Direction;

.field public final mNativePath:J

.field public rects:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/graphics/Path;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Landroid/graphics/Path;->nGetFinalizer()J

    move-result-wide v2

    const-wide/16 v4, 0x30

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v6, Landroid/graphics/Path;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 245
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Path$FillType;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 60
    invoke-static {}, Landroid/graphics/Path;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    .line 61
    sget-object v0, Landroid/graphics/Path;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 5
    .param p1, "src"    # Landroid/graphics/Path;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 70
    const-wide/16 v0, 0x0

    .line 71
    .local v0, "valNative":J
    if-eqz p1, :cond_0

    .line 72
    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    .line 73
    iget-boolean v2, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 74
    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v2, :cond_0

    .line 75
    new-instance v2, Landroid/graphics/Region;

    iget-object v3, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-direct {v2, v3}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v2, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 78
    :cond_0
    invoke-static {v0, v1}, Landroid/graphics/Path;->nInit(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    .line 79
    sget-object v2, Landroid/graphics/Path;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v3, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {v2, p0, v3, v4}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 80
    return-void
.end method

.method private detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .line 528
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-nez v0, :cond_0

    .line 529
    iput-object p5, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 531
    :cond_0
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-eq v0, p5, :cond_1

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    goto :goto_0

    .line 534
    :cond_1
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 535
    :cond_2
    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    float-to-int v2, p1

    float-to-int v3, p2

    float-to-int v4, p3

    float-to-int v5, p4

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 537
    :goto_0
    return-void
.end method

.method private static native nAddArc(JFFFFFF)V
.end method

.method private static native nAddCircle(JFFFI)V
.end method

.method private static native nAddOval(JFFFFI)V
.end method

.method private static native nAddPath(JJ)V
.end method

.method private static native nAddPath(JJFF)V
.end method

.method private static native nAddPath(JJJ)V
.end method

.method private static native nAddRect(JFFFFI)V
.end method

.method private static native nAddRoundRect(JFFFFFFI)V
.end method

.method private static native nAddRoundRect(JFFFF[FI)V
.end method

.method private static native nApproximate(JF)[F
.end method

.method private static native nArcTo(JFFFFFFZ)V
.end method

.method private static native nClose(J)V
.end method

.method private static native nComputeBounds(JLandroid/graphics/RectF;)V
.end method

.method private static native nCubicTo(JFFFFFF)V
.end method

.method private static native nGetFillType(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFinalizer()J
.end method

.method private static native nIncReserve(JI)V
.end method

.method private static native nInit()J
.end method

.method private static native nInit(J)J
.end method

.method private static native nIsConvex(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nIsEmpty(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nIsRect(JLandroid/graphics/RectF;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nLineTo(JFF)V
.end method

.method private static native nMoveTo(JFF)V
.end method

.method private static native nOffset(JFF)V
.end method

.method private static native nOp(JJIJ)Z
.end method

.method private static native nQuadTo(JFFFF)V
.end method

.method private static native nRCubicTo(JFFFFFF)V
.end method

.method private static native nRLineTo(JFF)V
.end method

.method private static native nRMoveTo(JFF)V
.end method

.method private static native nRQuadTo(JFFFF)V
.end method

.method private static native nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nRewind(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSet(JJ)V
.end method

.method private static native nSetFillType(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLastPoint(JFF)V
.end method

.method private static native nTransform(JJ)V
.end method

.method private static native nTransform(JJJ)V
.end method


# virtual methods
.method public addArc(FFFFFF)V
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 616
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Landroid/graphics/Path;->nAddArc(JFFFFFF)V

    .line 617
    return-void
.end method

.method public addArc(Landroid/graphics/RectF;FF)V
    .locals 7
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    .line 604
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addArc(FFFFFF)V

    .line 605
    return-void
.end method

.method public addCircle(FFFLandroid/graphics/Path$Direction;)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "dir"    # Landroid/graphics/Path$Direction;

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 593
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    iget v6, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Landroid/graphics/Path;->nAddCircle(JFFFI)V

    .line 594
    return-void
.end method

.method public addOval(FFFFLandroid/graphics/Path$Direction;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 580
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    iget v7, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v7}, Landroid/graphics/Path;->nAddOval(JFFFFI)V

    .line 581
    return-void
.end method

.method public addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 6
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    .line 570
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    .line 571
    return-void
.end method

.method public addPath(Landroid/graphics/Path;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Path;

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 695
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nAddPath(JJ)V

    .line 696
    return-void
.end method

.method public addPath(Landroid/graphics/Path;FF)V
    .locals 7
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .line 684
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 685
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v3, p1, Landroid/graphics/Path;->mNativePath:J

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Landroid/graphics/Path;->nAddPath(JJFF)V

    .line 686
    return-void
.end method

.method public addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 7
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 704
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 705
    :cond_0
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v3, p1, Landroid/graphics/Path;->mNativePath:J

    iget-wide v5, p2, Landroid/graphics/Matrix;->native_instance:J

    invoke-static/range {v1 .. v6}, Landroid/graphics/Path;->nAddPath(JJJ)V

    .line 706
    return-void
.end method

.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .line 559
    invoke-direct/range {p0 .. p5}, Landroid/graphics/Path;->detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V

    .line 560
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v6, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->nAddRect(JFFFFI)V

    .line 561
    return-void
.end method

.method public addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    .line 546
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 547
    return-void
.end method

.method public addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V
    .locals 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "dir"    # Landroid/graphics/Path$Direction;

    move-object v0, p0

    .line 640
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/Path;->isSimplePath:Z

    .line 641
    iget-wide v2, v0, Landroid/graphics/Path;->mNativePath:J

    move-object/from16 v1, p7

    iget v10, v1, Landroid/graphics/Path$Direction;->nativeInt:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v10}, Landroid/graphics/Path;->nAddRoundRect(JFFFFFFI)V

    .line 642
    return-void
.end method

.method public addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "radii"    # [F
    .param p6, "dir"    # Landroid/graphics/Path$Direction;

    .line 670
    array-length v0, p5

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 673
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 674
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    iget v8, p6, Landroid/graphics/Path$Direction;->nativeInt:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v8}, Landroid/graphics/Path;->nAddRoundRect(JFFFF[FI)V

    .line 675
    return-void

    .line 671
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "radii[] needs 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "dir"    # Landroid/graphics/Path$Direction;

    .line 628
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 629
    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "radii"    # [F
    .param p3, "dir"    # Landroid/graphics/Path$Direction;

    .line 654
    if-eqz p1, :cond_0

    .line 657
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 658
    return-void

    .line 655
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need rect parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public approximate(F)[F
    .locals 2
    .param p1, "acceptableError"    # F

    .line 812
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 815
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nApproximate(JF)[F

    move-result-object v0

    return-object v0

    .line 813
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AcceptableError must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arcTo(FFFFFFZ)V
    .locals 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "forceMoveTo"    # Z

    move-object v0, p0

    .line 498
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/Path;->isSimplePath:Z

    .line 499
    iget-wide v2, v0, Landroid/graphics/Path;->mNativePath:J

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v10}, Landroid/graphics/Path;->nArcTo(JFFFFFFZ)V

    .line 500
    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FF)V
    .locals 8
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    .line 481
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    const/4 v7, 0x0

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 482
    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FFZ)V
    .locals 8
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "forceMoveTo"    # Z

    .line 466
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 467
    return-void
.end method

.method public close()V
    .locals 2

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 508
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nClose(J)V

    .line 509
    return-void
.end method

.method public computeBounds(Landroid/graphics/RectF;Z)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "exact"    # Z

    .line 322
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nComputeBounds(JLandroid/graphics/RectF;)V

    .line 323
    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 9
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 437
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Landroid/graphics/Path;->nCubicTo(JFFFFFF)V

    .line 438
    return-void
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 3

    .line 259
    sget-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v1, v2}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public incReserve(I)V
    .locals 2
    .param p1, "extraPtCount"    # I

    .line 333
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nIncReserve(JI)V

    .line 334
    return-void
.end method

.method public isConvex()Z
    .locals 2

    .line 210
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nIsConvex(J)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 296
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nIsEmpty(J)Z

    move-result v0

    return v0
.end method

.method public isInverseFillType()Z
    .locals 2

    .line 277
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v0

    .line 278
    .local v0, "ft":I
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    iget v1, v1, Landroid/graphics/Path$FillType;->nativeInt:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRect(Landroid/graphics/RectF;)Z
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 309
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nIsRect(JLandroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 370
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nLineTo(JFF)V

    .line 371
    return-void
.end method

.method public moveTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 343
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nMoveTo(JFF)V

    .line 344
    return-void
.end method

.method final mutateNI()J
    .locals 2

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 789
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    return-wide v0
.end method

.method public offset(FF)V
    .locals 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 732
    iget-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v0, :cond_0

    .line 734
    return-void

    .line 736
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_1

    float-to-double v0, p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    float-to-double v0, p2

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 737
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->translate(II)V

    goto :goto_0

    .line 739
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 741
    :goto_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nOffset(JFF)V

    .line 742
    return-void
.end method

.method public offset(FFLandroid/graphics/Path;)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dst"    # Landroid/graphics/Path;

    .line 717
    if-eqz p3, :cond_0

    .line 718
    invoke-virtual {p3, p0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto :goto_0

    .line 720
    :cond_0
    move-object p3, p0

    .line 722
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->offset(FF)V

    .line 723
    return-void
.end method

.method public op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Landroid/graphics/Path$Op;

    .line 172
    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-result v0

    return v0
.end method

.method public op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .locals 7
    .param p1, "path1"    # Landroid/graphics/Path;
    .param p2, "path2"    # Landroid/graphics/Path;
    .param p3, "op"    # Landroid/graphics/Path$Op;

    .line 190
    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p2, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p3}, Landroid/graphics/Path$Op;->ordinal()I

    move-result v4

    iget-wide v5, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->nOp(JJIJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 191
    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_0
    return v1
.end method

.method public quadTo(FFFF)V
    .locals 7
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 400
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/Path;->nQuadTo(JFFFF)V

    .line 401
    return-void
.end method

.method public rCubicTo(FFFFFF)V
    .locals 9
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 448
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Landroid/graphics/Path;->nRCubicTo(JFFFFFF)V

    .line 449
    return-void
.end method

.method public rLineTo(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 385
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nRLineTo(JFF)V

    .line 386
    return-void
.end method

.method public rMoveTo(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 357
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nRMoveTo(JFF)V

    .line 358
    return-void
.end method

.method public rQuadTo(FFFF)V
    .locals 7
    .param p1, "dx1"    # F
    .param p2, "dy1"    # F
    .param p3, "dx2"    # F
    .param p4, "dy2"    # F

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 419
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/Path;->nRQuadTo(JFFFF)V

    .line 420
    return-void
.end method

.method public final readOnlyNI()J
    .locals 2

    .line 784
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    return-wide v0
.end method

.method public reset()V
    .locals 3

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 89
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v0

    .line 93
    .local v0, "fillType":Landroid/graphics/Path$FillType;
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v1, v2}, Landroid/graphics/Path;->nReset(J)V

    .line 94
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 95
    return-void
.end method

.method public rewind()V
    .locals 2

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 104
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 105
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nRewind(J)V

    .line 106
    return-void
.end method

.method public set(Landroid/graphics/Path;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Path;

    .line 111
    if-ne p0, p1, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 115
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nSet(JJ)V

    .line 116
    iget-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    if-nez v0, :cond_1

    .line 117
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v0, :cond_3

    .line 123
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_4

    .line 125
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 127
    :cond_4
    :goto_0
    return-void
.end method

.method public setFillType(Landroid/graphics/Path$FillType;)V
    .locals 3
    .param p1, "ft"    # Landroid/graphics/Path$FillType;

    .line 268
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v2, p1, Landroid/graphics/Path$FillType;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Path;->nSetFillType(JI)V

    .line 269
    return-void
.end method

.method public setLastPoint(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 751
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 752
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nSetLastPoint(JFF)V

    .line 753
    return-void
.end method

.method public toggleInverseFillType()V
    .locals 3

    .line 285
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v0

    .line 286
    .local v0, "ft":I
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    iget v1, v1, Landroid/graphics/Path$FillType;->nativeInt:I

    xor-int/2addr v0, v1

    .line 287
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Path;->nSetFillType(JI)V

    .line 288
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 778
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 779
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nTransform(JJ)V

    .line 780
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 8
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "dst"    # Landroid/graphics/Path;

    .line 764
    const-wide/16 v0, 0x0

    .line 765
    .local v0, "dstNative":J
    if-eqz p2, :cond_0

    .line 766
    const/4 v2, 0x0

    iput-boolean v2, p2, Landroid/graphics/Path;->isSimplePath:Z

    .line 767
    iget-wide v0, p2, Landroid/graphics/Path;->mNativePath:J

    .line 769
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v4, p1, Landroid/graphics/Matrix;->native_instance:J

    move-wide v6, v0

    invoke-static/range {v2 .. v7}, Landroid/graphics/Path;->nTransform(JJJ)V

    .line 770
    return-void
.end method
