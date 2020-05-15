.class Landroid/graphics/drawable/RippleDrawable$RippleState;
.super Landroid/graphics/drawable/LayerDrawable$LayerState;
.source "RippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RippleState"
.end annotation


# instance fields
.field mColor:Landroid/content/res/ColorStateList;

.field mMaxRadius:I

.field mTouchThemeAttrs:[I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 979
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    .line 975
    const v0, -0xff01

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 976
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 981
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable$RippleState;

    if-eqz v0, :cond_0

    .line 982
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 983
    .local v0, "origs":Landroid/graphics/drawable/RippleDrawable$RippleState;
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    .line 984
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 985
    iget v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    iput v1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 987
    iget v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mDensity:I

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mDensity:I

    if-eq v1, v2, :cond_0

    .line 988
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mDensity:I

    invoke-direct {p0, v1, v2}, Landroid/graphics/drawable/RippleDrawable$RippleState;->applyDensityScaling(II)V

    .line 991
    .end local v0    # "origs":Landroid/graphics/drawable/RippleDrawable$RippleState;
    :cond_0
    return-void
.end method

.method private applyDensityScaling(II)V
    .locals 2
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 1001
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1002
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 1005
    :cond_0
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 1009
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 1010
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1011
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1009
    :goto_1
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 1026
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getChangingConfigurations()I

    move-result v0

    .line 1027
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 1026
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1016
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 1021
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable$1;)V

    return-object v0
.end method

.method protected onDensityChanged(II)V
    .locals 0
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 995
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->onDensityChanged(II)V

    .line 997
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;->applyDensityScaling(II)V

    .line 998
    return-void
.end method
