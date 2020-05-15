.class public Landroid/graphics/drawable/AdaptiveIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AdaptiveIconDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;,
        Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    }
.end annotation


# static fields
.field private static final BACKGROUND_ID:I = 0x0

.field private static final DEFAULT_VIEW_PORT_SCALE:F = 0.6666667f

.field private static final EXTRA_INSET_PERCENTAGE:F = 0.25f

.field private static final FOREGROUND_ID:I = 0x1

.field public static final MASK_SIZE:F = 100.0f

.field private static final SAFEZONE_SCALE:F = 0.9166667f

.field private static sMask:Landroid/graphics/Path;


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private mChildRequestedInvalidation:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

.field private mLayersBitmap:Landroid/graphics/Bitmap;

.field private mLayersShader:Landroid/graphics/Shader;

.field private final mMask:Landroid/graphics/Path;

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private final mMaskMatrix:Landroid/graphics/Matrix;

.field private mMutated:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mSuspendChildInvalidation:Z

.field private final mTmpOutRect:Landroid/graphics/Rect;

.field private final mTransparentRegion:Landroid/graphics/Region;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 145
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 146
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 152
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 153
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createConstantState(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 155
    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    const v1, 0x104014a

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    .line 159
    :cond_0
    nop

    .line 160
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    .line 161
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    .line 162
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    .line 163
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "foregroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 187
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 188
    if-eqz p1, :cond_0

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V

    .line 191
    :cond_0
    if-eqz p2, :cond_1

    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V

    .line 194
    :cond_1
    return-void
.end method

.method private addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "layer"    # Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 203
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aput-object p2, v0, p1

    .line 204
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->invalidateCache()V

    .line 205
    return-void
.end method

.method private createChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 167
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(I)V

    .line 168
    .local v0, "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iput-object p1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    iget-object v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 170
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 171
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 172
    return-object v0
.end method

.method public static getExtraInsetFraction()F
    .locals 1

    .line 241
    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method public static getExtraInsetPercentage()F
    .locals 1

    .line 248
    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method private getMaxIntrinsicHeight()I
    .locals 4

    .line 831
    const/4 v0, -0x1

    .line 832
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 833
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v2, v2, v1

    .line 834
    .local v2, "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iget-object v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 835
    goto :goto_1

    .line 837
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 838
    .local v3, "h":I
    if-le v3, v0, :cond_1

    .line 839
    move v0, v3

    .line 832
    .end local v2    # "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v3    # "h":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 842
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private getMaxIntrinsicWidth()I
    .locals 4

    .line 811
    const/4 v0, -0x1

    .line 812
    .local v0, "width":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 813
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v2, v2, v1

    .line 814
    .local v2, "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iget-object v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 815
    goto :goto_1

    .line 817
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 818
    .local v3, "w":I
    if-le v3, v0, :cond_1

    .line 819
    move v0, v3

    .line 812
    .end local v2    # "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v3    # "w":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 822
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 16
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

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 454
    move-object/from16 v3, p4

    iget-object v4, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 456
    .local v4, "state":Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 459
    .local v5, "innerDepth":I
    const/4 v7, 0x0

    .line 460
    .local v7, "childIndex":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    .local v9, "type":I
    if-eq v8, v6, :cond_8

    .line 461
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    move v10, v8

    .local v10, "depth":I
    if-ge v8, v5, :cond_0

    const/4 v8, 0x3

    if-eq v9, v8, :cond_8

    .line 462
    :cond_0
    const/4 v8, 0x2

    if-eq v9, v8, :cond_2

    .line 463
    nop

    .line 459
    .end local v9    # "type":I
    .end local v10    # "depth":I
    :cond_1
    :goto_1
    move-object/from16 v14, p2

    goto :goto_0

    .line 466
    .restart local v9    # "type":I
    .restart local v10    # "depth":I
    :cond_2
    if-le v10, v5, :cond_3

    .line 467
    goto :goto_1

    .line 469
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 470
    .local v11, "tagName":Ljava/lang/String;
    const-string v12, "background"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 471
    const/4 v7, 0x0

    goto :goto_2

    .line 472
    :cond_4
    const-string v12, "foreground"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 473
    const/4 v7, 0x1

    .line 478
    :goto_2
    new-instance v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iget v13, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    invoke-direct {v12, v13}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(I)V

    .line 479
    .local v12, "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    sget-object v13, Lcom/android/internal/R$styleable;->AdaptiveIconDrawableLayer:[I

    invoke-static {v1, v3, v2, v13}, Landroid/graphics/drawable/AdaptiveIconDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 481
    .local v13, "a":Landroid/content/res/TypedArray;
    invoke-direct {v0, v12, v13}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 482
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 488
    iget-object v14, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_7

    iget-object v14, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    if-nez v14, :cond_7

    .line 489
    :goto_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move v9, v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_5

    goto :goto_3

    .line 491
    :cond_5
    if-ne v9, v8, :cond_6

    .line 498
    iget-object v8, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v8, v8, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    move-object/from16 v14, p2

    invoke-static {v1, v14, v2, v8, v3}, Landroid/graphics/drawable/Drawable;->createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 500
    iget-object v8, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 501
    iget v8, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v15, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 502
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v15

    or-int/2addr v8, v15

    iput v8, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    goto :goto_4

    .line 492
    :cond_6
    move-object/from16 v14, p2

    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": <foreground> or <background> tag requires a \'drawable\'attribute or child tag defining a drawable"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 504
    :cond_7
    move-object/from16 v14, p2

    :goto_4
    invoke-direct {v0, v7, v12}, Landroid/graphics/drawable/AdaptiveIconDrawable;->addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V

    .line 505
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v13    # "a":Landroid/content/res/TypedArray;
    goto/16 :goto_0

    .line 506
    .end local v10    # "depth":I
    :cond_8
    move-object/from16 v14, p2

    return-void
.end method

.method private resumeChildInvalidation()V
    .locals 2

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSuspendChildInvalidation:Z

    .line 577
    iget-boolean v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mChildRequestedInvalidation:Z

    if-eqz v1, :cond_0

    .line 578
    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mChildRequestedInvalidation:Z

    .line 579
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->invalidateSelf()V

    .line 581
    :cond_0
    return-void
.end method

.method private suspendChildInvalidation()V
    .locals 1

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSuspendChildInvalidation:Z

    .line 566
    return-void
.end method

.method private updateLayerBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    return-void

    .line 297
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->suspendChildInvalidation()V

    .line 298
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBoundsInternal(Landroid/graphics/Rect;)V

    .line 299
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateMaskBoundsInternal(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->resumeChildInvalidation()V

    .line 302
    nop

    .line 303
    return-void

    .line 301
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->resumeChildInvalidation()V

    throw v0
.end method

.method private updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 309
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 310
    .local v0, "cX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v1

    .line 312
    .local v2, "cY":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .local v1, "count":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 313
    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v4, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v4, v4, v3

    .line 314
    .local v4, "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    if-nez v4, :cond_0

    .line 315
    goto :goto_1

    .line 317
    :cond_0
    iget-object v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 318
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_1

    .line 319
    goto :goto_1

    .line 322
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3faaaaab

    div-float/2addr v6, v7

    float-to-int v6, v6

    .line 323
    .local v6, "insetWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v7, v8

    .line 324
    .local v7, "insetHeight":I
    iget-object v8, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    .line 325
    .local v8, "outRect":Landroid/graphics/Rect;
    sub-int v9, v0, v6

    sub-int v10, v2, v7

    add-int v11, v0, v6

    add-int v12, v2, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 327
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 312
    .end local v4    # "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "insetWidth":I
    .end local v7    # "insetHeight":I
    .end local v8    # "outRect":Landroid/graphics/Rect;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    .end local v1    # "count":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private updateLayerFromTypedArray(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "layer"    # Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .line 509
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 512
    .local v0, "state":Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    iget v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 515
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 517
    iget v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 519
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 520
    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 525
    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 529
    :cond_0
    iput-object v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 530
    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 531
    iget v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 532
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 534
    :cond_1
    return-void
.end method

.method private updateMaskBoundsInternal(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Rect;

    .line 332
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 333
    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 335
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 336
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 337
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 338
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    .line 341
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 342
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 343
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 346
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 347
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 348
    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 350
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 351
    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    .line 352
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 8
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 416
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 418
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 419
    .local v0, "state":Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    if-nez v0, :cond_0

    .line 420
    return-void

    .line 423
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    .line 424
    .local v1, "density":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->setDensity(I)V

    .line 426
    iget-object v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 427
    .local v3, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    nop

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_3

    .line 428
    aget-object v4, v3, v2

    .line 429
    .local v4, "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->setDensity(I)V

    .line 431
    iget-object v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    if-eqz v5, :cond_1

    .line 432
    iget-object v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    sget-object v6, Lcom/android/internal/R$styleable;->AdaptiveIconDrawableLayer:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 434
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v4, v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 435
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 438
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 439
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 440
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 443
    iget v6, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 427
    .end local v4    # "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 538
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearMutated()V
    .locals 4

    .line 873
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 874
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 875
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 876
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 877
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 878
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 875
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 881
    .end local v2    # "i":I
    :cond_1
    iput-boolean v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMutated:Z

    .line 882
    return-void
.end method

.method createConstantState(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 176
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 356
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    if-nez v0, :cond_4

    .line 360
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 361
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 363
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 364
    goto :goto_1

    .line 366
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 367
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 368
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 362
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "i":I
    :cond_3
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 374
    :cond_4
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 375
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 376
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 378
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_5
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 677
    const/4 v0, -0x3

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 281
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 604
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 847
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    .line 849
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    return-object v0

    .line 851
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 270
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 637
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 640
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    .line 642
    :goto_0
    return-void
.end method

.method public getIconMask()Landroid/graphics/Path;
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 827
    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMaxIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 807
    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMaxIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 721
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    return v0

    .line 724
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 388
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 389
    return-void
.end method

.method public getSafeZone()Landroid/graphics/Region;
    .locals 4

    .line 394
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 395
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f6aaaab

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 396
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 397
    .local v0, "p":Landroid/graphics/Path;
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 398
    new-instance v1, Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 399
    .local v1, "safezoneRegion":Landroid/graphics/Region;
    invoke-virtual {v1, v0, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 400
    return-object v1
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 405
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 407
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 408
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 409
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 411
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 1

    .line 764
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->hasFocusStateSpecified()Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
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

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 213
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 214
    .local v0, "state":Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    if-nez v0, :cond_0

    .line 215
    return-void

    .line 220
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v2

    .line 221
    .local v2, "deviceDensity":I
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->setDensity(I)V

    .line 222
    iget v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSrcDensityOverride:I

    iput v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    .line 224
    iget-object v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 225
    .local v3, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    nop

    .local v1, "i":I
    :goto_0
    iget-object v4, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 226
    aget-object v4, v3, v1

    .line 227
    .local v4, "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->setDensity(I)V

    .line 225
    .end local v4    # "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 231
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 585
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSuspendChildInvalidation:Z

    if-eqz v0, :cond_0

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mChildRequestedInvalidation:Z

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->invalidateSelf()V

    .line 590
    :goto_0
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    .line 383
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 384
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 742
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->access$000(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;)Z

    move-result v0

    return v0
.end method

.method public isProjected()Z
    .locals 5

    .line 546
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 547
    return v1

    .line 550
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 551
    .local v0, "layers":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 552
    aget-object v4, v0, v3

    iget-object v4, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 553
    return v1

    .line 551
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 556
    .end local v3    # "i":I
    :cond_2
    return v2
.end method

.method public isStateful()Z
    .locals 1

    .line 758
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 3

    .line 747
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 748
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 749
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 750
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 751
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 748
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 754
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 856
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMutated:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 857
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createConstantState(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 858
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 859
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 860
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 858
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 864
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMutated:Z

    .line 866
    :cond_2
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 286
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    return-void

    .line 289
    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 290
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 5
    .param p1, "level"    # I

    .line 788
    const/4 v0, 0x0

    .line 790
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 791
    .local v1, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 792
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 793
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 794
    const/4 v0, 0x1

    .line 791
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 798
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 799
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 802
    :cond_2
    return v0
.end method

.method protected onStateChange([I)Z
    .locals 5
    .param p1, "state"    # [I

    .line 769
    const/4 v0, 0x0

    .line 771
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 772
    .local v1, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 773
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 774
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 775
    const/4 v0, 0x1

    .line 772
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 779
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 780
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 783
    :cond_2
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 594
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 595
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 672
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 673
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 3
    .param p1, "mirrored"    # Z

    .line 729
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->access$002(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Z)Z

    .line 731
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 732
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 733
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 734
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 735
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 732
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 738
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 682
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 683
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 684
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 685
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 686
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 683
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setDither(Z)V
    .locals 3
    .param p1, "dither"    # Z

    .line 661
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 662
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 663
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 664
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 665
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 662
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setHotspot(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 609
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 610
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 611
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 612
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 613
    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 610
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 620
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 621
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 622
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 623
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 624
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 621
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 628
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 629
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    goto :goto_1

    .line 631
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 633
    :goto_1
    return-void
.end method

.method public setOpacity(I)V
    .locals 1
    .param p1, "opacity"    # I

    .line 716
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iput p1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    .line 717
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 693
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 694
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v1, 0x2

    .line 695
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 696
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 697
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 698
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 695
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 701
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 705
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 706
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v1, 0x2

    .line 707
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 708
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 709
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 710
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 707
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 713
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 646
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 647
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 649
    .local v1, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 650
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 651
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 652
    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 649
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 656
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 599
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 600
    return-void
.end method
