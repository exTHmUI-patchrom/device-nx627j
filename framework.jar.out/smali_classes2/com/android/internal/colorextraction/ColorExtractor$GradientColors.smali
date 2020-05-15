.class public Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
.super Ljava/lang/Object;
.source "ColorExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/ColorExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradientColors"
.end annotation


# instance fields
.field private mMainColor:I

.field private mSecondaryColor:I

.field private mSupportsDarkText:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 282
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 286
    .local v1, "other":Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    iget v2, v1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    iget v3, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    iget v3, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, v1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    iget-boolean v3, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 283
    .end local v1    # "other":Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    :cond_2
    :goto_0
    return v0
.end method

.method public getMainColor()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 293
    iget v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    .line 294
    .local v0, "code":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    add-int/2addr v2, v3

    .line 295
    .end local v0    # "code":I
    .local v2, "code":I
    mul-int/2addr v1, v2

    iget-boolean v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    .line 296
    .end local v2    # "code":I
    .local v1, "code":I
    return v1
.end method

.method public set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1
    .param p1, "other"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 263
    iget v0, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    iput v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    .line 264
    iget v0, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    iput v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    .line 265
    iget-boolean v0, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    iput-boolean v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    .line 266
    return-void
.end method

.method public setMainColor(I)V
    .locals 0
    .param p1, "mainColor"    # I

    .line 251
    iput p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    .line 252
    return-void
.end method

.method public setSecondaryColor(I)V
    .locals 0
    .param p1, "secondaryColor"    # I

    .line 255
    iput p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    .line 256
    return-void
.end method

.method public setSupportsDarkText(Z)V
    .locals 0
    .param p1, "supportsDarkText"    # Z

    .line 259
    iput-boolean p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    .line 260
    return-void
.end method

.method public supportsDarkText()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GradientColors("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    .line 302
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    return-object v0
.end method
