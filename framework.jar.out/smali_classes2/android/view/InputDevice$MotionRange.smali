.class public final Landroid/view/InputDevice$MotionRange;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionRange"
.end annotation


# instance fields
.field private mAxis:I

.field private mFlat:F

.field private mFuzz:F

.field private mMax:F

.field private mMin:F

.field private mResolution:F

.field private mSource:I


# direct methods
.method private constructor <init>(IIFFFFF)V
    .locals 0
    .param p1, "axis"    # I
    .param p2, "source"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "flat"    # F
    .param p6, "fuzz"    # F
    .param p7, "resolution"    # F

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    iput p1, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    .line 854
    iput p2, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    .line 855
    iput p3, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    .line 856
    iput p4, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    .line 857
    iput p5, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    .line 858
    iput p6, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    .line 859
    iput p7, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    .line 860
    return-void
.end method

.method synthetic constructor <init>(IIFFFFFLandroid/view/InputDevice$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # F
    .param p4, "x3"    # F
    .param p5, "x4"    # F
    .param p6, "x5"    # F
    .param p7, "x6"    # F
    .param p8, "x7"    # Landroid/view/InputDevice$1;

    .line 842
    invoke-direct/range {p0 .. p7}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFF)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/InputDevice$MotionRange;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/InputDevice$MotionRange;

    .line 842
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    return v0
.end method

.method static synthetic access$200(Landroid/view/InputDevice$MotionRange;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/InputDevice$MotionRange;

    .line 842
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    return v0
.end method

.method static synthetic access$400(Landroid/view/InputDevice$MotionRange;)F
    .locals 1
    .param p0, "x0"    # Landroid/view/InputDevice$MotionRange;

    .line 842
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    return v0
.end method

.method static synthetic access$500(Landroid/view/InputDevice$MotionRange;)F
    .locals 1
    .param p0, "x0"    # Landroid/view/InputDevice$MotionRange;

    .line 842
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    return v0
.end method

.method static synthetic access$600(Landroid/view/InputDevice$MotionRange;)F
    .locals 1
    .param p0, "x0"    # Landroid/view/InputDevice$MotionRange;

    .line 842
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    return v0
.end method

.method static synthetic access$700(Landroid/view/InputDevice$MotionRange;)F
    .locals 1
    .param p0, "x0"    # Landroid/view/InputDevice$MotionRange;

    .line 842
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    return v0
.end method

.method static synthetic access$800(Landroid/view/InputDevice$MotionRange;)F
    .locals 1
    .param p0, "x0"    # Landroid/view/InputDevice$MotionRange;

    .line 842
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    return v0
.end method


# virtual methods
.method public getAxis()I
    .locals 1

    .line 867
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    return v0
.end method

.method public getFlat()F
    .locals 1

    .line 924
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    return v0
.end method

.method public getFuzz()F
    .locals 1

    .line 936
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    return v0
.end method

.method public getMax()F
    .locals 1

    .line 904
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    return v0
.end method

.method public getMin()F
    .locals 1

    .line 896
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    return v0
.end method

.method public getRange()F
    .locals 2

    .line 912
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    iget v1, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getResolution()F
    .locals 1

    .line 944
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    return v0
.end method

.method public getSource()I
    .locals 1

    .line 875
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    return v0
.end method

.method public isFromSource(I)Z
    .locals 1
    .param p1, "source"    # I

    .line 888
    invoke-virtual {p0}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
