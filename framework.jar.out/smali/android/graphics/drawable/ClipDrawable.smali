.class public Landroid/graphics/drawable/ClipDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "ClipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ClipDrawable$ClipState;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x1

.field private static final MAX_LEVEL:I = 0x2710

.field public static final VERTICAL:I = 0x2


# instance fields
.field private mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 64
    new-instance v0, Landroid/graphics/drawable/ClipDrawable$ClipState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/ClipDrawable$ClipState;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/ClipDrawable$ClipState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 235
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 237
    iput-object p1, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 238
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/ClipDrawable$ClipState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/ClipDrawable$1;

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I
    .param p3, "orientation"    # I

    .line 77
    new-instance v0, Landroid/graphics/drawable/ClipDrawable$ClipState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/ClipDrawable$ClipState;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    .line 79
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput p2, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 80
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput p3, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 82
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 132
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 133
    .local v0, "state":Landroid/graphics/drawable/ClipDrawable$ClipState;
    if-nez v0, :cond_0

    .line 134
    return-void

    .line 138
    :cond_0
    iget v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    .line 141
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/ClipDrawable$ClipState;->access$002(Landroid/graphics/drawable/ClipDrawable$ClipState;[I)[I

    .line 143
    const/4 v1, 0x2

    iget v2, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 145
    const/4 v1, 0x0

    iget v2, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 147
    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-static {v0}, Landroid/graphics/drawable/ClipDrawable$ClipState;->access$000(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 124
    invoke-static {v0}, Landroid/graphics/drawable/ClipDrawable$ClipState;->access$000(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <clip> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 101
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 103
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 104
    .local v0, "state":Landroid/graphics/drawable/ClipDrawable$ClipState;
    if-nez v0, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    invoke-static {v0}, Landroid/graphics/drawable/ClipDrawable$ClipState;->access$000(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 109
    invoke-static {v0}, Landroid/graphics/drawable/ClipDrawable$ClipState;->access$000(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->ClipDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 111
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v1}, Landroid/graphics/drawable/ClipDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 112
    invoke-direct {p0, v1}, Landroid/graphics/drawable/ClipDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    goto :goto_2

    .line 116
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v2}, Landroid/graphics/drawable/ClipDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_0

    .line 116
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 119
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 175
    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 176
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    iget-object v3, v0, Landroid/graphics/drawable/ClipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 181
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/ClipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 182
    .local v10, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v11

    .line 184
    .local v11, "level":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 185
    .local v4, "w":I
    const/4 v12, 0x0

    .line 186
    .local v12, "iw":I
    iget-object v5, v0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v5, v5, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 187
    add-int/lit8 v5, v4, 0x0

    rsub-int v6, v11, 0x2710

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x2710

    sub-int/2addr v4, v5

    .line 190
    .end local v4    # "w":I
    .local v13, "w":I
    :cond_1
    move v13, v4

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 191
    .local v4, "h":I
    const/4 v14, 0x0

    .line 192
    .local v14, "ih":I
    iget-object v5, v0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v5, v5, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 193
    add-int/lit8 v5, v4, 0x0

    rsub-int v6, v11, 0x2710

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x2710

    sub-int/2addr v4, v5

    .line 196
    .end local v4    # "h":I
    .local v15, "h":I
    :cond_2
    move v15, v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/ClipDrawable;->getLayoutDirection()I

    move-result v16

    .line 197
    .local v16, "layoutDirection":I
    iget-object v4, v0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v4, v4, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    move v5, v13

    move v6, v15

    move-object v7, v10

    move-object v8, v3

    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 199
    if-lez v13, :cond_3

    if-lez v15, :cond_3

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 201
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 202
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 205
    :cond_3
    return-void
.end method

.method public getOpacity()I
    .locals 4

    .line 158
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 160
    .local v1, "opacity":I
    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v2

    .line 165
    .local v2, "level":I
    const/16 v3, 0x2710

    if-lt v2, v3, :cond_1

    .line 166
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    return v3

    .line 170
    :cond_1
    const/4 v3, -0x3

    return v3

    .line 161
    .end local v2    # "level":I
    :cond_2
    :goto_0
    return v2
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1
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

    .line 89
    sget-object v0, Lcom/android/internal/R$styleable;->ClipDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/ClipDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 94
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ClipDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 95
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ClipDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 3

    .line 209
    new-instance v0, Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v1, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/ClipDrawable$ClipState;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 210
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    return-object v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 151
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    .line 152
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->invalidateSelf()V

    .line 153
    const/4 v0, 0x1

    return v0
.end method
