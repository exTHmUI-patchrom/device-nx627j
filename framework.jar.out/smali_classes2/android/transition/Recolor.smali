.class public Landroid/transition/Recolor;
.super Landroid/transition/Transition;
.source "Recolor.java"


# static fields
.field private static final PROPNAME_BACKGROUND:Ljava/lang/String; = "android:recolor:background"

.field private static final PROPNAME_TEXT_COLOR:Ljava/lang/String; = "android:recolor:textColor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 52
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:recolor:background"

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:recolor:textColor"

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    .line 55
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 54
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 66
    invoke-direct {p0, p1}, Landroid/transition/Recolor;->captureValues(Landroid/transition/TransitionValues;)V

    .line 67
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 61
    invoke-direct {p0, p1}, Landroid/transition/Recolor;->captureValues(Landroid/transition/TransitionValues;)V

    .line 62
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 72
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 75
    :cond_0
    iget-object v1, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 76
    .local v1, "view":Landroid/view/View;
    iget-object v2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:recolor:background"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 77
    .local v2, "startBackground":Landroid/graphics/drawable/Drawable;
    iget-object v3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:recolor:background"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 78
    .local v3, "endBackground":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 79
    .local v4, "changed":Z
    instance-of v5, v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v5, :cond_1

    instance-of v5, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_1

    .line 80
    move-object v5, v2

    check-cast v5, Landroid/graphics/drawable/ColorDrawable;

    .line 81
    .local v5, "startColor":Landroid/graphics/drawable/ColorDrawable;
    move-object v9, v3

    check-cast v9, Landroid/graphics/drawable/ColorDrawable;

    .line 82
    .local v9, "endColor":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v11

    if-eq v10, v11, :cond_1

    .line 83
    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 84
    const/4 v0, 0x1

    .line 85
    .end local v4    # "changed":Z
    .local v0, "changed":Z
    const-string v4, "color"

    new-array v8, v8, [I

    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v10

    aput v10, v8, v7

    .line 86
    invoke-virtual {v9}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v7

    aput v7, v8, v6

    .line 85
    invoke-static {v3, v4, v8}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4

    .line 89
    .end local v0    # "changed":Z
    .end local v5    # "startColor":Landroid/graphics/drawable/ColorDrawable;
    .end local v9    # "endColor":Landroid/graphics/drawable/ColorDrawable;
    .restart local v4    # "changed":Z
    :cond_1
    instance-of v5, v1, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 90
    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 91
    .local v5, "textView":Landroid/widget/TextView;
    iget-object v9, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v10, "android:recolor:textColor"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 92
    .local v9, "start":I
    iget-object v10, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:recolor:textColor"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 93
    .local v10, "end":I
    if-eq v9, v10, :cond_2

    .line 94
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    const/4 v0, 0x1

    .line 96
    .end local v4    # "changed":Z
    .restart local v0    # "changed":Z
    const-string/jumbo v4, "textColor"

    new-array v8, v8, [I

    aput v9, v8, v7

    aput v10, v8, v6

    invoke-static {v5, v4, v8}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4

    .line 99
    .end local v0    # "changed":Z
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v9    # "start":I
    .end local v10    # "end":I
    .restart local v4    # "changed":Z
    :cond_2
    return-object v0

    .line 73
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "startBackground":Landroid/graphics/drawable/Drawable;
    .end local v3    # "endBackground":Landroid/graphics/drawable/Drawable;
    .end local v4    # "changed":Z
    :cond_3
    :goto_0
    return-object v0
.end method
