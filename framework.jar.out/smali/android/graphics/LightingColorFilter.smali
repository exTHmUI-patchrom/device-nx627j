.class public Landroid/graphics/LightingColorFilter;
.super Landroid/graphics/ColorFilter;
.source "LightingColorFilter.java"


# instance fields
.field private mAdd:I

.field private mMul:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "mul"    # I
    .param p2, "add"    # I

    .line 52
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 53
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    .line 54
    iput p2, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    .line 55
    return-void
.end method

.method private static native native_CreateLightingFilter(II)J
.end method


# virtual methods
.method createNativeInstance()J
    .locals 2

    .line 109
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    iget v1, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    invoke-static {v0, v1}, Landroid/graphics/LightingColorFilter;->native_CreateLightingFilter(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColorAdd()I
    .locals 1

    .line 88
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    return v0
.end method

.method public getColorMultiply()I
    .locals 1

    .line 63
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    return v0
.end method

.method public setColorAdd(I)V
    .locals 1
    .param p1, "add"    # I

    .line 101
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    if-eq v0, p1, :cond_0

    .line 102
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    .line 103
    invoke-virtual {p0}, Landroid/graphics/LightingColorFilter;->discardNativeInstance()V

    .line 105
    :cond_0
    return-void
.end method

.method public setColorMultiply(I)V
    .locals 1
    .param p1, "mul"    # I

    .line 76
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    if-eq v0, p1, :cond_0

    .line 77
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    .line 78
    invoke-virtual {p0}, Landroid/graphics/LightingColorFilter;->discardNativeInstance()V

    .line 80
    :cond_0
    return-void
.end method
