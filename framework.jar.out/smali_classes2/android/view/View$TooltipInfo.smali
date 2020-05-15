.class Landroid/view/View$TooltipInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TooltipInfo"
.end annotation


# instance fields
.field mAnchorX:I

.field mAnchorY:I

.field mHideTooltipRunnable:Ljava/lang/Runnable;

.field mHoverSlop:I

.field mShowTooltipRunnable:Ljava/lang/Runnable;

.field mTooltipFromLongClick:Z

.field mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

.field mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View$1;

    .line 4337
    invoke-direct {p0}, Landroid/view/View$TooltipInfo;-><init>()V

    return-void
.end method

.method static synthetic access$3500(Landroid/view/View$TooltipInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View$TooltipInfo;

    .line 4337
    invoke-direct {p0}, Landroid/view/View$TooltipInfo;->clearAnchorPos()V

    return-void
.end method

.method static synthetic access$3600(Landroid/view/View$TooltipInfo;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View$TooltipInfo;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 4337
    invoke-direct {p0, p1}, Landroid/view/View$TooltipInfo;->updateAnchorPos(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private clearAnchorPos()V
    .locals 1

    .line 4395
    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    .line 4396
    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    .line 4397
    return-void
.end method

.method private updateAnchorPos(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 4381
    .local v0, "newAnchorX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 4382
    .local v1, "newAnchorY":I
    iget v2, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/view/View$TooltipInfo;->mHoverSlop:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    sub-int v2, v1, v2

    .line 4383
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/view/View$TooltipInfo;->mHoverSlop:I

    if-gt v2, v3, :cond_0

    .line 4384
    const/4 v2, 0x0

    return v2

    .line 4386
    :cond_0
    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    .line 4387
    iput v1, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    .line 4388
    const/4 v2, 0x1

    return v2
.end method
