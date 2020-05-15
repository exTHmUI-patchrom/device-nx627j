.class Landroid/graphics/drawable/RippleBackground;
.super Landroid/graphics/drawable/RippleComponent;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleBackground$BackgroundProperty;
    }
.end annotation


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

.field private static final OPACITY_DURATION:I = 0x50


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mFocused:Z

.field private mHovered:Z

.field private mIsBounded:Z

.field private mOpacity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 108
    new-instance v0, Landroid/graphics/drawable/RippleBackground$1;

    const-string/jumbo v1, "opacity"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleBackground$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;Z)V
    .locals 1
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "isBounded"    # Z

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mFocused:Z

    .line 44
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mHovered:Z

    .line 49
    iput-boolean p3, p0, Landroid/graphics/drawable/RippleBackground;->mIsBounded:Z

    .line 50
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/RippleBackground;)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/RippleBackground;

    .line 30
    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/RippleBackground;F)F
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/RippleBackground;
    .param p1, "x1"    # F

    .line 30
    iput p1, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return p1
.end method

.method private onStateChanged()V
    .locals 4

    .line 84
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mFocused:Z

    if-eqz v0, :cond_0

    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mHovered:Z

    if-eqz v0, :cond_1

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 85
    .local v0, "newOpacity":F
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 89
    :cond_2
    sget-object v1, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 90
    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 91
    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    sget-object v2, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 93
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .line 57
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 58
    .local v0, "origAlpha":I
    int-to-float v1, v0

    iget v2, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 59
    .local v1, "alpha":I
    if-lez v1, :cond_0

    .line 60
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    iget v2, p0, Landroid/graphics/drawable/RippleBackground;->mTargetRadius:F

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 62
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 2

    .line 53
    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpToFinal()V
    .locals 1

    .line 96
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 100
    :cond_0
    return-void
.end method

.method public setState(ZZZ)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "hovered"    # Z
    .param p3, "pressed"    # Z

    .line 67
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mFocused:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 68
    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move p1, v0

    .line 70
    :cond_1
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mHovered:Z

    if-nez v0, :cond_3

    .line 71
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    move v1, v2

    nop

    :cond_2
    move p2, v1

    .line 73
    :cond_3
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mHovered:Z

    if-ne v0, p2, :cond_4

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mFocused:Z

    if-eq v0, p1, :cond_5

    .line 74
    :cond_4
    iput-boolean p2, p0, Landroid/graphics/drawable/RippleBackground;->mHovered:Z

    .line 75
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleBackground;->mFocused:Z

    .line 76
    invoke-direct {p0}, Landroid/graphics/drawable/RippleBackground;->onStateChanged()V

    .line 78
    :cond_5
    return-void
.end method
