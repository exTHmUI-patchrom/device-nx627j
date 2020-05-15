.class public Lcom/android/internal/widget/PointerLocationView$PointerState;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private mAltEstimator:Landroid/view/VelocityTracker$Estimator;

.field private mAltXVelocity:F

.field private mAltYVelocity:F

.field private mBoundingBottom:F

.field private mBoundingLeft:F

.field private mBoundingRight:F

.field private mBoundingTop:F

.field private mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mCurDown:Z

.field private mEstimator:Landroid/view/VelocityTracker$Estimator;

.field private mHasBoundingBox:Z

.field private mToolType:I

.field private mTraceCount:I

.field private mTraceCurrent:[Z

.field private mTraceX:[F

.field private mTraceY:[F

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x20

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    .line 51
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    .line 52
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    .line 59
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 76
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    .line 77
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget-boolean v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .line 48
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .line 48
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget-boolean v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .line 48
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .line 48
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .line 48
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .line 48
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .line 48
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .line 48
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;

    return-object v0
.end method


# virtual methods
.method public addTrace(FFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "current"    # Z

    .line 84
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    array-length v0, v0

    .line 85
    .local v0, "traceCapacity":I
    iget v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    if-ne v1, v0, :cond_0

    .line 86
    mul-int/lit8 v0, v0, 0x2

    .line 87
    new-array v1, v0, [F

    .line 88
    .local v1, "newTraceX":[F
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    iget v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    .line 91
    new-array v2, v0, [F

    .line 92
    .local v2, "newTraceY":[F
    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    iget v5, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    .line 95
    new-array v3, v0, [Z

    .line 96
    .local v3, "newTraceCurrent":[Z
    iget-object v5, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    iget v6, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    invoke-static {v5, v4, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iput-object v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    .line 100
    .end local v1    # "newTraceX":[F
    .end local v2    # "newTraceY":[F
    .end local v3    # "newTraceCurrent":[Z
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    aput p1, v1, v2

    .line 101
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    aput p2, v1, v2

    .line 102
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    aput-boolean p3, v1, v2

    .line 103
    iget v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    .line 104
    return-void
.end method

.method public clearTrace()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    .line 81
    return-void
.end method
