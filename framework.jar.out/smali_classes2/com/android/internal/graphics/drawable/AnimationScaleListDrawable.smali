.class public Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "AnimationScaleListDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationScaleListDrawable"


# instance fields
.field private mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;)V

    .line 54
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 57
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 59
    new-instance v0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;Landroid/content/res/Resources;)V

    .line 60
    .local v0, "newState":Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;
    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->onStateChange([I)Z

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$1;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
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

    .line 96
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    .line 97
    .local v0, "state":Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 100
    .local v1, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    if-eq v3, v2, :cond_7

    .line 101
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .local v5, "depth":I
    if-ge v3, v1, :cond_1

    const/4 v3, 0x3

    if-eq v4, v3, :cond_7

    .line 103
    :cond_1
    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    .line 104
    goto :goto_0

    .line 107
    :cond_2
    if-gt v5, v1, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 108
    goto :goto_0

    .line 112
    :cond_3
    sget-object v6, Lcom/android/internal/R$styleable;->AnimationScaleListDrawableItem:[I

    invoke-static {p1, p4, p3, v6}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 114
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 115
    .local v7, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    if-nez v7, :cond_6

    .line 119
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v4, v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    goto :goto_1

    .line 121
    :cond_4
    if-ne v4, v3, :cond_5

    .line 127
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_2

    .line 122
    :cond_5
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_6
    :goto_2
    invoke-virtual {v0, v7}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->addDrawable(Landroid/graphics/drawable/Drawable;)I

    .line 131
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 132
    .end local v5    # "depth":I
    :cond_7
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 240
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->onStateChange([I)Z

    .line 243
    return-void
.end method

.method public clearMutated()V
    .locals 1

    .line 145
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mMutated:Z

    .line 147
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
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

    .line 80
    sget-object v0, Lcom/android/internal/R$styleable;->AnimationScaleListDrawable:[I

    invoke-static {p1, p4, p3, v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->updateDensity(Landroid/content/res/Resources;)V

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->onStateChange([I)Z

    .line 88
    return-void
.end method

.method public isRunning()Z
    .locals 3

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 169
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_0

    .line 170
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    .line 172
    :cond_0
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    invoke-virtual {v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mutate()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mMutated:Z

    .line 140
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "stateSet"    # [I

    .line 70
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v0

    .line 71
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    invoke-virtual {v1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->getCurrentDrawableIndexBasedOnScale()I

    move-result v1

    .line 72
    .local v1, "idx":I
    invoke-virtual {p0, v1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->selectDrawable(I)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 247
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 249
    instance-of v0, p1, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    if-eqz v0, :cond_0

    .line 250
    move-object v0, p1

    check-cast v0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    .line 252
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    .line 153
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 155
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    .line 161
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 163
    :cond_0
    return-void
.end method
