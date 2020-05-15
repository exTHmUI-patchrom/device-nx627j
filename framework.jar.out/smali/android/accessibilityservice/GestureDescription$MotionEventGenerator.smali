.class public Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionEventGenerator"
.end annotation


# static fields
.field private static sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .locals 3
    .param p0, "requiredCapacity"    # I

    .line 559
    sget-object v0, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    array-length v0, v0

    if-ge v0, p0, :cond_1

    .line 560
    :cond_0
    new-array v0, p0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    sput-object v0, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 561
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 562
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    aput-object v2, v1, v0

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    return-object v0
.end method

.method public static getGestureStepsFromGestureDescription(Landroid/accessibilityservice/GestureDescription;I)Ljava/util/List;
    .locals 9
    .param p0, "description"    # Landroid/accessibilityservice/GestureDescription;
    .param p1, "sampleTimeMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accessibilityservice/GestureDescription;",
            "I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v0, "gestureSteps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    nop

    .line 539
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription;->getStrokeCount()I

    move-result v1

    invoke-static {v1}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getCurrentTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v1

    .line 540
    .local v1, "currentTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    const/4 v2, 0x0

    .line 542
    .local v2, "currentTouchPointSize":I
    const-wide/16 v3, 0x0

    .line 543
    .local v3, "timeSinceGestureStart":J
    invoke-static {p0, v3, v4}, Landroid/accessibilityservice/GestureDescription;->access$200(Landroid/accessibilityservice/GestureDescription;J)J

    move-result-wide v5

    .line 544
    .local v5, "nextKeyPointTime":J
    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_1

    .line 545
    if-nez v2, :cond_0

    .line 546
    move-wide v7, v5

    goto :goto_1

    :cond_0
    int-to-long v7, p1

    add-long/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :goto_1
    move-wide v3, v7

    .line 547
    invoke-static {p0, v3, v4, v1}, Landroid/accessibilityservice/GestureDescription;->access$300(Landroid/accessibilityservice/GestureDescription;J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I

    move-result v2

    .line 549
    new-instance v7, Landroid/accessibilityservice/GestureDescription$GestureStep;

    invoke-direct {v7, v3, v4, v2, v1}, Landroid/accessibilityservice/GestureDescription$GestureStep;-><init>(JI[Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    invoke-static {p0, v7, v8}, Landroid/accessibilityservice/GestureDescription;->access$200(Landroid/accessibilityservice/GestureDescription;J)J

    move-result-wide v5

    goto :goto_0

    .line 555
    :cond_1
    return-object v0
.end method
