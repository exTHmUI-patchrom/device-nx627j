.class Landroid/widget/TextView$TextAppearanceAttributes;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextAppearanceAttributes"
.end annotation


# instance fields
.field mAllCaps:Z

.field mElegant:Z

.field mFallbackLineSpacing:Z

.field mFontFamily:Ljava/lang/String;

.field mFontFamilyExplicit:Z

.field mFontFeatureSettings:Ljava/lang/String;

.field mFontTypeface:Landroid/graphics/Typeface;

.field mFontWeight:I

.field mHasElegant:Z

.field mHasFallbackLineSpacing:Z

.field mHasLetterSpacing:Z

.field mLetterSpacing:F

.field mShadowColor:I

.field mShadowDx:F

.field mShadowDy:F

.field mShadowRadius:F

.field mStyleIndex:I

.field mTextColor:Landroid/content/res/ColorStateList;

.field mTextColorHighlight:I

.field mTextColorHint:Landroid/content/res/ColorStateList;

.field mTextColorLink:Landroid/content/res/ColorStateList;

.field mTextSize:I

.field mTypefaceIndex:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 3419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3420
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    .line 3421
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    .line 3422
    iput-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHint:Landroid/content/res/ColorStateList;

    .line 3423
    iput-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 3424
    iput v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    .line 3425
    iput-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    .line 3426
    iput-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontTypeface:Landroid/graphics/Typeface;

    .line 3427
    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    .line 3428
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    .line 3429
    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mStyleIndex:I

    .line 3430
    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontWeight:I

    .line 3431
    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mAllCaps:Z

    .line 3432
    iput v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    .line 3433
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDx:F

    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDy:F

    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowRadius:F

    .line 3434
    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasElegant:Z

    .line 3435
    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mElegant:Z

    .line 3436
    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasFallbackLineSpacing:Z

    .line 3437
    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFallbackLineSpacing:Z

    .line 3438
    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLetterSpacing:Z

    .line 3439
    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mLetterSpacing:F

    .line 3440
    iput-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFeatureSettings:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/TextView$1;

    .line 3419
    invoke-direct {p0}, Landroid/widget/TextView$TextAppearanceAttributes;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 3444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextAppearanceAttributes {\n    mTextColorHighlight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    mTextColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mTextColorHint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mTextColorLink:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mTextSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    mFontFamily:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mFontTypeface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mFontFamilyExplicit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mTypefaceIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    mStyleIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mStyleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    mFontWeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    mAllCaps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mAllCaps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mShadowColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    mShadowDx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n    mShadowDy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n    mShadowRadius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n    mHasElegant:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasElegant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mElegant:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mElegant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mHasFallbackLineSpacing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasFallbackLineSpacing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mFallbackLineSpacing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFallbackLineSpacing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mHasLetterSpacing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLetterSpacing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mLetterSpacing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mLetterSpacing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n    mFontFeatureSettings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
