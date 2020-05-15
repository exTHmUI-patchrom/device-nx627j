.class public final Landroid/accessibilityservice/GestureDescription;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;,
        Landroid/accessibilityservice/GestureDescription$GestureStep;,
        Landroid/accessibilityservice/GestureDescription$TouchPoint;,
        Landroid/accessibilityservice/GestureDescription$StrokeDescription;,
        Landroid/accessibilityservice/GestureDescription$Builder;
    }
.end annotation


# static fields
.field private static final MAX_GESTURE_DURATION_MS:J = 0xea60L

.field private static final MAX_STROKE_COUNT:I = 0xa


# instance fields
.field private final mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPos:[F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "strokes":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$StrokeDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    .line 73
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/accessibilityservice/GestureDescription$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Landroid/accessibilityservice/GestureDescription$1;

    .line 40
    invoke-direct {p0, p1}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)J
    .locals 2
    .param p0, "x0"    # Ljava/util/List;

    .line 40
    invoke-static {p0}, Landroid/accessibilityservice/GestureDescription;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Landroid/accessibilityservice/GestureDescription;J)J
    .locals 2
    .param p0, "x0"    # Landroid/accessibilityservice/GestureDescription;
    .param p1, "x1"    # J

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/GestureDescription;->getNextKeyPointAtLeast(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Landroid/accessibilityservice/GestureDescription;J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I
    .locals 1
    .param p0, "x0"    # Landroid/accessibilityservice/GestureDescription;
    .param p1, "x1"    # J
    .param p3, "x2"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/GestureDescription;->getPointsForTime(J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I

    move-result v0

    return v0
.end method

.method public static getMaxGestureDuration()J
    .locals 2

    .line 67
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public static getMaxStrokeCount()I
    .locals 1

    .line 58
    const/16 v0, 0xa

    return v0
.end method

.method private getNextKeyPointAtLeast(J)J
    .locals 8
    .param p1, "offset"    # J

    .line 103
    const-wide v0, 0x7fffffffffffffffL

    .line 104
    .local v0, "nextKeyPoint":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 105
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iget-wide v3, v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    .line 106
    .local v3, "thisStartTime":J
    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    cmp-long v5, v3, p1

    if-ltz v5, :cond_0

    .line 107
    move-wide v0, v3

    .line 109
    :cond_0
    iget-object v5, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iget-wide v5, v5, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    .line 110
    .local v5, "thisEndTime":J
    cmp-long v7, v5, v0

    if-gez v7, :cond_1

    cmp-long v7, v5, p1

    if-ltz v7, :cond_1

    .line 111
    move-wide v0, v5

    .line 104
    .end local v3    # "thisStartTime":J
    .end local v5    # "thisEndTime":J
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "i":I
    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    const-wide/16 v2, -0x1

    goto :goto_1

    :cond_3
    move-wide v2, v0

    :goto_1
    return-wide v2
.end method

.method private getPointsForTime(J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I
    .locals 9
    .param p1, "time"    # J
    .param p3, "touchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "numPointsFound":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "numPointsFound":I
    :goto_0
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 127
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 128
    .local v3, "strokeDescription":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    invoke-virtual {v3, p1, p2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->hasPointForTime(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    aget-object v4, p3, v2

    invoke-virtual {v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getId()I

    move-result v5

    iput v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 130
    aget-object v4, p3, v2

    .line 131
    invoke-virtual {v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getContinuedStrokeId()I

    move-result v5

    iput v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 132
    aget-object v4, p3, v2

    .line 133
    invoke-virtual {v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getContinuedStrokeId()I

    move-result v5

    const/4 v6, 0x1

    if-gez v5, :cond_0

    iget-wide v7, v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    cmp-long v5, p1, v7

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    iput-boolean v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 135
    aget-object v4, p3, v2

    invoke-virtual {v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->willContinue()Z

    move-result v5

    if-nez v5, :cond_1

    iget-wide v7, v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v5, p1, v7

    if-nez v5, :cond_1

    move v5, v6

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    iput-boolean v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 137
    iget-object v4, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    invoke-virtual {v3, p1, p2, v4}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getPosForTime(J[F)Z

    .line 138
    aget-object v4, p3, v2

    iget-object v5, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 139
    aget-object v4, p3, v2

    iget-object v5, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 140
    add-int/lit8 v2, v2, 0x1

    .line 126
    .end local v3    # "strokeDescription":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    :cond_3
    return v2
.end method

.method private static getTotalDuration(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;)J"
        }
    .end annotation

    .line 149
    .local p0, "paths":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$StrokeDescription;>;"
    const-wide/high16 v0, -0x8000000000000000L

    .line 150
    .local v0, "latestEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 151
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 152
    .local v3, "path":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    iget-wide v4, v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 150
    .end local v3    # "path":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v2    # "i":I
    :cond_0
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public getStroke(I)Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .locals 1
    .param p1, "index"    # I

    .line 93
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    return-object v0
.end method

.method public getStrokeCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
