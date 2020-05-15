.class public Landroid/graphics/drawable/LevelListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "LevelListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    }
.end annotation


# instance fields
.field private mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 246
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 247
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/graphics/drawable/LevelListDrawable;Landroid/content/res/Resources;)V

    .line 248
    .local v0, "as":Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LevelListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 249
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LevelListDrawable;->onLevelChange(I)Z

    .line 250
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;Landroid/graphics/drawable/LevelListDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/LevelListDrawable$1;

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 11
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

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "low":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 104
    .local v1, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .line 104
    .local v4, "type":I
    if-eq v3, v2, :cond_8

    .line 105
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .line 105
    .local v5, "depth":I
    if-ge v3, v1, :cond_1

    const/4 v3, 0x3

    if-eq v4, v3, :cond_8

    .line 107
    :cond_1
    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    .line 108
    goto :goto_0

    .line 111
    :cond_2
    if-gt v5, v1, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 112
    goto :goto_0

    .line 115
    :cond_3
    sget-object v6, Lcom/android/internal/R$styleable;->LevelListDrawableItem:[I

    invoke-static {p1, p4, p3, v6}, Landroid/graphics/drawable/LevelListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 118
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 120
    invoke-virtual {v6, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 122
    .local v8, "high":I
    invoke-virtual {v6, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 125
    .local v7, "drawableRes":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    if-ltz v8, :cond_7

    .line 133
    if-eqz v7, :cond_4

    .line 134
    invoke-virtual {p1, v7, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 134
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 136
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v4, v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    goto :goto_1

    .line 138
    :cond_5
    if-ne v4, v3, :cond_6

    .line 144
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 147
    .restart local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v9, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-virtual {v9, v0, v8, v3}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 148
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "drawableRes":I
    .end local v8    # "high":I
    goto :goto_0

    .line 139
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    .restart local v7    # "drawableRes":I
    .restart local v8    # "high":I
    :cond_6
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_7
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": <item> tag requires a \'maxLevel\' attribute"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    .end local v5    # "depth":I
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "drawableRes":I
    .end local v8    # "high":I
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LevelListDrawable;->onLevelChange(I)Z

    .line 151
    return-void
.end method


# virtual methods
.method public addLevel(IILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "low"    # I
    .param p2, "high"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 69
    if-eqz p3, :cond_0

    .line 70
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LevelListDrawable;->onLevelChange(I)Z

    .line 74
    :cond_0
    return-void
.end method

.method public clearMutated()V
    .locals 1

    .line 171
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mMutated:Z

    .line 173
    return-void
.end method

.method bridge synthetic cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    .line 60
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->cloneConstantState()Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    move-result-object v0

    return-object v0
.end method

.method cloneConstantState()Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    .locals 3

    .line 164
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/graphics/drawable/LevelListDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
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

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableContainer;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 91
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LevelListDrawable;->updateDensity(Landroid/content/res/Resources;)V

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LevelListDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 94
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 155
    iget-boolean v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-static {v0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->access$000(Landroid/graphics/drawable/LevelListDrawable$LevelListState;)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mMutated:Z

    .line 159
    :cond_0
    return-object p0
.end method

.method protected onLevelChange(I)Z
    .locals 2
    .param p1, "level"    # I

    .line 80
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->indexOfLevel(I)I

    move-result v0

    .line 81
    .local v0, "idx":I
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LevelListDrawable;->selectDrawable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x1

    return v1

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onLevelChange(I)Z

    move-result v1

    return v1
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 239
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 241
    instance-of v0, p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    if-eqz v0, :cond_0

    .line 242
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    .line 244
    :cond_0
    return-void
.end method
