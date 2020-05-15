.class abstract Landroid/graphics/drawable/RippleComponent;
.super Ljava/lang/Object;
.source "RippleComponent.java"


# instance fields
.field protected final mBounds:Landroid/graphics/Rect;

.field protected mDensityScale:F

.field private mHasMaxRadius:Z

.field protected final mOwner:Landroid/graphics/drawable/RippleDrawable;

.field protected mTargetRadius:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/graphics/drawable/RippleComponent;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    .line 49
    iput-object p2, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    .line 50
    return-void
.end method

.method private static getTargetRadius(Landroid/graphics/Rect;)F
    .locals 5
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .line 73
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 74
    .local v0, "halfWidth":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 75
    .local v2, "halfHeight":F
    mul-float v1, v0, v0

    mul-float v3, v2, v2

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    return v1
.end method


# virtual methods
.method public getBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 86
    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 87
    .local v0, "r":I
    neg-int v1, v0

    neg-int v2, v0

    invoke-virtual {p1, v1, v2, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 88
    return-void
.end method

.method protected final invalidateSelf()V
    .locals 2

    .line 91
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 92
    return-void
.end method

.method public onBoundsChange()V
    .locals 1

    .line 53
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 55
    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    .line 57
    :cond_0
    return-void
.end method

.method protected final onHotspotBoundsChanged()V
    .locals 1

    .line 95
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 97
    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    .line 99
    :cond_0
    return-void
.end method

.method protected onTargetRadiusChanged(F)V
    .locals 0
    .param p1, "targetRadius"    # F

    .line 108
    return-void
.end method

.method public final setup(FI)V
    .locals 2
    .param p1, "maxRadius"    # F
    .param p2, "densityDpi"    # I

    .line 60
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    .line 62
    iput p1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 67
    :goto_0
    int-to-float v0, p2

    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mDensityScale:F

    .line 69
    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    .line 70
    return-void
.end method
