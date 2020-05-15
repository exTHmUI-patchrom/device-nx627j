.class public Landroid/content/res/GradientColor;
.super Landroid/content/res/ComplexColor;
.source "GradientColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/GradientColor$GradientColorFactory;,
        Landroid/content/res/GradientColor$GradientTileMode;
    }
.end annotation


# static fields
.field private static final DBG_GRADIENT:Z = false

.field private static final TAG:Ljava/lang/String; = "GradientColor"

.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1


# instance fields
.field private mCenterColor:I

.field private mCenterX:F

.field private mCenterY:F

.field private mChangingConfigurations:I

.field private mDefaultColor:I

.field private mEndColor:I

.field private mEndX:F

.field private mEndY:F

.field private mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

.field private mGradientRadius:F

.field private mGradientType:I

.field private mHasCenterColor:Z

.field private mItemColors:[I

.field private mItemOffsets:[F

.field private mItemsThemeAttrs:[[I

.field private mShader:Landroid/graphics/Shader;

.field private mStartColor:I

.field private mStartX:F

.field private mStartY:F

.field private mThemeAttrs:[I

.field private mTileMode:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 129
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 105
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 107
    iput v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 108
    iput v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 109
    iput v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 110
    iput v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 112
    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 113
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 114
    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 115
    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 117
    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 119
    iput v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 130
    return-void
.end method

.method private constructor <init>(Landroid/content/res/GradientColor;)V
    .locals 2
    .param p1, "copy"    # Landroid/content/res/GradientColor;

    .line 132
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 105
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 107
    iput v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 108
    iput v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 109
    iput v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 110
    iput v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 112
    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 113
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 114
    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 115
    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 117
    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 119
    iput v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 133
    if-eqz p1, :cond_3

    .line 134
    iget v0, p1, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 135
    iget v0, p1, Landroid/content/res/GradientColor;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    .line 136
    iget-object v0, p1, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 137
    iget v0, p1, Landroid/content/res/GradientColor;->mGradientType:I

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 138
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 139
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 140
    iget v0, p1, Landroid/content/res/GradientColor;->mStartX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 141
    iget v0, p1, Landroid/content/res/GradientColor;->mStartY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 142
    iget v0, p1, Landroid/content/res/GradientColor;->mEndX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 143
    iget v0, p1, Landroid/content/res/GradientColor;->mEndY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 144
    iget v0, p1, Landroid/content/res/GradientColor;->mStartColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 145
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 146
    iget v0, p1, Landroid/content/res/GradientColor;->mEndColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 147
    iget-boolean v0, p1, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 148
    iget v0, p1, Landroid/content/res/GradientColor;->mGradientRadius:F

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 149
    iget v0, p1, Landroid/content/res/GradientColor;->mTileMode:I

    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 151
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemColors:[I

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemColors:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    .line 154
    :cond_0
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemOffsets:[F

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemOffsets:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    .line 158
    :cond_1
    iget-object v0, p1, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p1, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 161
    :cond_2
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    invoke-virtual {v0}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 165
    :cond_3
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/GradientColor;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/res/GradientColor;

    .line 73
    iget v0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    return v0
.end method

.method private applyItemsAttrsTheme(Landroid/content/res/Resources$Theme;)V
    .locals 9
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 395
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-nez v0, :cond_0

    .line 396
    return-void

    .line 399
    :cond_0
    const/4 v0, 0x0

    .line 401
    .local v0, "hasUnresolvedAttrs":Z
    iget-object v1, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 402
    .local v1, "themeAttrsList":[[I
    array-length v2, v1

    .line 403
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "hasUnresolvedAttrs":Z
    :goto_0
    if-ge v0, v2, :cond_3

    .line 404
    aget-object v5, v1, v0

    if-eqz v5, :cond_2

    .line 405
    aget-object v5, v1, v0

    sget-object v6, Lcom/android/internal/R$styleable;->GradientColorItem:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 411
    .local v5, "a":Landroid/content/res/TypedArray;
    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v6

    aput-object v6, v1, v0

    .line 412
    aget-object v6, v1, v0

    if-eqz v6, :cond_1

    .line 413
    const/4 v4, 0x1

    .line 416
    :cond_1
    iget-object v6, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    iget-object v7, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    aget v7, v7, v0

    invoke-virtual {v5, v3, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v6, v0

    .line 417
    iget-object v6, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    iget-object v7, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    aget v7, v7, v0

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    aput v7, v6, v0

    .line 425
    iget v6, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 427
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 403
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    .end local v0    # "i":I
    :cond_3
    if-nez v4, :cond_4

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 434
    :cond_4
    return-void
.end method

.method private applyRootAttrsTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 575
    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    sget-object v1, Lcom/android/internal/R$styleable;->GradientColor:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 578
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 580
    invoke-direct {p0, v0}, Landroid/content/res/GradientColor;->updateRootElementState(Landroid/content/res/TypedArray;)V

    .line 583
    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 584
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 585
    return-void
.end method

.method private applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 565
    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    .line 566
    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->applyRootAttrsTheme(Landroid/content/res/Resources$Theme;)V

    .line 568
    :cond_0
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz v0, :cond_1

    .line 569
    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->applyItemsAttrsTheme(Landroid/content/res/Resources$Theme;)V

    .line 571
    :cond_1
    invoke-direct {p0}, Landroid/content/res/GradientColor;->onColorsChange()V

    .line 572
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 261
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    .end local v2    # "type":I
    goto :goto_0

    .line 266
    .restart local v2    # "type":I
    :cond_0
    if-ne v2, v3, :cond_1

    .line 270
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object v1

    return-object v1

    .line 267
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "name":Ljava/lang/String;
    const-string v1, "gradient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    new-instance v1, Landroid/content/res/GradientColor;

    invoke-direct {v1}, Landroid/content/res/GradientColor;-><init>()V

    .line 291
    .local v1, "gradientColor":Landroid/content/res/GradientColor;
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/content/res/GradientColor;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 292
    return-object v1

    .line 286
    .end local v1    # "gradientColor":Landroid/content/res/GradientColor;
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid gradient color tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    sget-object v0, Lcom/android/internal/R$styleable;->GradientColor:[I

    invoke-static {p1, p4, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 302
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/content/res/GradientColor;->updateRootElementState(Landroid/content/res/TypedArray;)V

    .line 303
    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 304
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    invoke-direct {p0}, Landroid/content/res/GradientColor;->validateXmlContent()V

    .line 309
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/GradientColor;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 311
    invoke-direct {p0}, Landroid/content/res/GradientColor;->onColorsChange()V

    .line 312
    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 21
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 324
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 329
    .local v1, "innerDepth":I
    const/16 v3, 0x14

    new-array v3, v3, [F

    .line 330
    .local v3, "offsetList":[F
    array-length v4, v3

    new-array v4, v4, [I

    .line 331
    .local v4, "colorList":[I
    array-length v5, v3

    new-array v5, v5, [[I

    .line 333
    .local v5, "themeAttrsList":[[I
    const/4 v6, 0x0

    .line 334
    .local v6, "listSize":I
    const/4 v7, 0x0

    move-object v8, v3

    move v3, v7

    .line 335
    .local v3, "hasUnresolvedAttrs":Z
    .local v8, "offsetList":[F
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v10, v9

    .line 335
    .local v10, "type":I
    if-eq v9, v2, :cond_7

    .line 336
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    move v11, v9

    .line 336
    .local v11, "depth":I
    if-ge v9, v1, :cond_1

    const/4 v9, 0x3

    if-eq v10, v9, :cond_0

    goto :goto_1

    .line 376
    .end local v11    # "depth":I
    :cond_0
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v18, v1

    move/from16 v19, v10

    goto/16 :goto_4

    .line 338
    .restart local v11    # "depth":I
    :cond_1
    :goto_1
    const/4 v9, 0x2

    if-eq v10, v9, :cond_2

    .line 339
    nop

    .line 334
    .end local v10    # "type":I
    .end local v11    # "depth":I
    :goto_2
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v18, v1

    goto/16 :goto_3

    .line 341
    .restart local v10    # "type":I
    .restart local v11    # "depth":I
    :cond_2
    if-gt v11, v1, :cond_6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v12, "item"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 342
    goto :goto_2

    .line 345
    :cond_3
    sget-object v9, Lcom/android/internal/R$styleable;->GradientColorItem:[I

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-static {v12, v14, v13, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 347
    .local v9, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    .line 348
    .local v15, "hasColor":Z
    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    .line 349
    .local v16, "hasOffset":Z
    if-eqz v15, :cond_5

    if-eqz v16, :cond_5

    .line 356
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    .line 357
    .local v2, "themeAttrs":[I
    move/from16 v18, v1

    invoke-virtual {v9, v7, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 358
    .local v1, "color":I
    .local v18, "innerDepth":I
    const/4 v7, 0x0

    move/from16 v19, v10

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 364
    .end local v10    # "type":I
    .local v7, "offset":F
    .local v19, "type":I
    iget v10, v0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v17

    or-int v10, v10, v17

    iput v10, v0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 365
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    if-eqz v2, :cond_4

    .line 368
    const/4 v3, 0x1

    .line 371
    :cond_4
    invoke-static {v4, v6, v1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v4

    .line 372
    invoke-static {v8, v6, v7}, Lcom/android/internal/util/GrowingArrayUtils;->append([FIF)[F

    move-result-object v8

    .line 373
    invoke-static {v5, v6, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v5, v10

    check-cast v5, [[I

    .line 374
    add-int/lit8 v6, v6, 0x1

    .line 375
    .end local v1    # "color":I
    .end local v2    # "themeAttrs":[I
    .end local v7    # "offset":F
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "hasColor":Z
    .end local v16    # "hasOffset":Z
    nop

    .line 334
    move/from16 v1, v18

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 350
    .end local v18    # "innerDepth":I
    .end local v19    # "type":I
    .local v1, "innerDepth":I
    .restart local v9    # "a":Landroid/content/res/TypedArray;
    .restart local v10    # "type":I
    .restart local v15    # "hasColor":Z
    .restart local v16    # "hasOffset":Z
    :cond_5
    move/from16 v18, v1

    move/from16 v19, v10

    .line 350
    .end local v1    # "innerDepth":I
    .end local v10    # "type":I
    .restart local v18    # "innerDepth":I
    .restart local v19    # "type":I
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "depth":I
    .end local v15    # "hasColor":Z
    .end local v16    # "hasOffset":Z
    .end local v18    # "innerDepth":I
    .end local v19    # "type":I
    .restart local v1    # "innerDepth":I
    :cond_6
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v18, v1

    :goto_3
    move/from16 v1, v18

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 334
    .end local v1    # "innerDepth":I
    .restart local v18    # "innerDepth":I
    goto/16 :goto_0

    .line 376
    .end local v18    # "innerDepth":I
    .restart local v1    # "innerDepth":I
    .restart local v10    # "type":I
    :cond_7
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v18, v1

    move/from16 v19, v10

    .line 376
    .end local v1    # "innerDepth":I
    .end local v10    # "type":I
    .restart local v18    # "innerDepth":I
    .restart local v19    # "type":I
    :goto_4
    if-lez v6, :cond_9

    .line 377
    if-eqz v3, :cond_8

    .line 378
    new-array v1, v6, [[I

    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 379
    iget-object v1, v0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    const/4 v2, 0x0

    invoke-static {v5, v2, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 381
    :cond_8
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 384
    :goto_5
    new-array v1, v6, [I

    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemColors:[I

    .line 385
    new-array v1, v6, [F

    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    .line 386
    iget-object v1, v0, Landroid/content/res/GradientColor;->mItemColors:[I

    const/4 v2, 0x0

    invoke-static {v4, v2, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget-object v1, v0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    invoke-static {v8, v2, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    :cond_9
    return-void
.end method

.method private onColorsChange()V
    .locals 14

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "tempColors":[I
    const/4 v1, 0x0

    .line 440
    .local v1, "tempOffsets":[F
    iget-object v2, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 441
    iget-object v2, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    array-length v2, v2

    .line 442
    .local v2, "length":I
    new-array v0, v2, [I

    .line 443
    new-array v1, v2, [F

    .line 445
    move v6, v5

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 446
    iget-object v7, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    aget v7, v7, v6

    aput v7, v0, v6

    .line 447
    iget-object v7, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    aget v7, v7, v6

    aput v7, v1, v6

    .line 445
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 449
    .end local v2    # "length":I
    .end local v6    # "i":I
    :cond_0
    goto :goto_1

    .line 450
    :cond_1
    iget-boolean v2, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    if-eqz v2, :cond_2

    .line 451
    const/4 v2, 0x3

    new-array v0, v2, [I

    .line 452
    iget v6, p0, Landroid/content/res/GradientColor;->mStartColor:I

    aput v6, v0, v5

    .line 453
    iget v6, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    aput v6, v0, v4

    .line 454
    iget v6, p0, Landroid/content/res/GradientColor;->mEndColor:I

    aput v6, v0, v3

    .line 456
    new-array v1, v2, [F

    .line 457
    const/4 v2, 0x0

    aput v2, v1, v5

    .line 459
    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v1, v4

    .line 460
    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v3

    goto :goto_1

    .line 462
    :cond_2
    new-array v0, v3, [I

    .line 463
    iget v2, p0, Landroid/content/res/GradientColor;->mStartColor:I

    aput v2, v0, v5

    .line 464
    iget v2, p0, Landroid/content/res/GradientColor;->mEndColor:I

    aput v2, v0, v4

    .line 467
    :goto_1
    array-length v2, v0

    if-ge v2, v3, :cond_3

    .line 468
    const-string v2, "GradientColor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<gradient> tag requires 2 color values specified!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_3
    iget v2, p0, Landroid/content/res/GradientColor;->mGradientType:I

    if-nez v2, :cond_4

    .line 473
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v7, p0, Landroid/content/res/GradientColor;->mStartX:F

    iget v8, p0, Landroid/content/res/GradientColor;->mStartY:F

    iget v9, p0, Landroid/content/res/GradientColor;->mEndX:F

    iget v10, p0, Landroid/content/res/GradientColor;->mEndY:F

    iget v3, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 474
    invoke-static {v3}, Landroid/content/res/GradientColor;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v13

    move-object v6, v2

    move-object v11, v0

    move-object v12, v1

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    goto :goto_2

    .line 476
    :cond_4
    iget v2, p0, Landroid/content/res/GradientColor;->mGradientType:I

    if-ne v2, v4, :cond_5

    .line 477
    new-instance v2, Landroid/graphics/RadialGradient;

    iget v7, p0, Landroid/content/res/GradientColor;->mCenterX:F

    iget v8, p0, Landroid/content/res/GradientColor;->mCenterY:F

    iget v9, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    iget v3, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 478
    invoke-static {v3}, Landroid/content/res/GradientColor;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object v6, v2

    move-object v10, v0

    move-object v11, v1

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    goto :goto_2

    .line 480
    :cond_5
    new-instance v2, Landroid/graphics/SweepGradient;

    iget v3, p0, Landroid/content/res/GradientColor;->mCenterX:F

    iget v4, p0, Landroid/content/res/GradientColor;->mCenterY:F

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v2, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 483
    :goto_2
    aget v2, v0, v5

    iput v2, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    .line 484
    return-void
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1
    .param p0, "tileMode"    # I

    .line 169
    packed-switch p0, :pswitch_data_0

    .line 177
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 175
    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 173
    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 171
    :pswitch_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRootElementState(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 186
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 188
    iget v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 190
    iget v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 192
    iget v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 194
    iget v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 197
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 199
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 202
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 205
    iget v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 207
    iget-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 209
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 211
    iget v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 214
    iget v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 227
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 229
    return-void
.end method

.method private validateXmlContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 237
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 598
    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 561
    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Landroid/content/res/GradientColor$GradientColorFactory;

    invoke-direct {v0, p0}, Landroid/content/res/GradientColor$GradientColorFactory;-><init>(Landroid/content/res/GradientColor;)V

    iput-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    .line 505
    :cond_0
    iget-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    return-object v0
.end method

.method public getDefaultColor()I
    .locals 1

    .line 493
    iget v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .line 250
    iget-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public bridge synthetic obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Landroid/content/res/GradientColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object p1

    return-object p1
.end method

.method public obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 542
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/res/GradientColor;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    new-instance v0, Landroid/content/res/GradientColor;

    invoke-direct {v0, p0}, Landroid/content/res/GradientColor;-><init>(Landroid/content/res/GradientColor;)V

    .line 547
    .local v0, "clone":Landroid/content/res/GradientColor;
    invoke-direct {v0, p1}, Landroid/content/res/GradientColor;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 548
    return-object v0

    .line 543
    .end local v0    # "clone":Landroid/content/res/GradientColor;
    :cond_1
    :goto_0
    return-object p0
.end method
