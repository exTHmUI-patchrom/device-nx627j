.class Landroid/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;
    .locals 23
    .param p0, "view"    # Landroid/view/View;
    .param p1, "values"    # Landroid/transition/TransitionValues;
    .param p2, "viewPosX"    # I
    .param p3, "viewPosY"    # I
    .param p4, "startX"    # F
    .param p5, "startY"    # F
    .param p6, "endX"    # F
    .param p7, "endY"    # F
    .param p8, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p9, "transition"    # Landroid/transition/Transition;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p6

    move/from16 v11, p7

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationX()F

    move-result v12

    .line 55
    .local v12, "terminalX":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationY()F

    move-result v13

    .line 56
    .local v13, "terminalY":F
    iget-object v0, v9, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v1, 0x102047d

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [I

    .line 57
    .local v14, "startPosition":[I
    if-eqz v14, :cond_0

    .line 58
    const/4 v0, 0x0

    aget v0, v14, v0

    sub-int v0, v0, p2

    int-to-float v0, v0

    add-float/2addr v0, v12

    .line 59
    .end local p4    # "startX":F
    .local v0, "startX":F
    const/4 v1, 0x1

    aget v1, v14, v1

    sub-int v1, v1, p3

    int-to-float v1, v1

    add-float/2addr v1, v13

    .line 62
    .end local p5    # "startY":F
    .local v1, "startY":F
    move v7, v0

    move v6, v1

    goto :goto_0

    .end local v0    # "startX":F
    .end local v1    # "startY":F
    .restart local p4    # "startX":F
    .restart local p5    # "startY":F
    :cond_0
    move/from16 v7, p4

    move/from16 v6, p5

    .end local p4    # "startX":F
    .end local p5    # "startY":F
    .local v6, "startY":F
    .local v7, "startX":F
    :goto_0
    sub-float v0, v7, v12

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int v15, p2, v0

    .line 63
    .local v15, "startPosX":I
    sub-float v0, v6, v13

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int v16, p3, v0

    .line 65
    .local v16, "startPosY":I
    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 66
    invoke-virtual {v8, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 67
    cmpl-float v0, v7, v10

    if-nez v0, :cond_1

    cmpl-float v0, v6, v11

    if-nez v0, :cond_1

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v5, v0

    .line 71
    .local v5, "path":Landroid/graphics/Path;
    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 72
    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v8, v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 76
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    new-instance v17, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v2, v9, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object v1, v8

    move v3, v15

    move-object/from16 v19, v4

    move/from16 v4, v16

    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .local v19, "anim":Landroid/animation/ObjectAnimator;
    move-object/from16 v20, v5

    move v5, v12

    .end local v5    # "path":Landroid/graphics/Path;
    .local v20, "path":Landroid/graphics/Path;
    move/from16 v21, v6

    move v6, v13

    .end local v6    # "startY":F
    .local v21, "startY":F
    move/from16 v22, v7

    move-object/from16 v7, v18

    .end local v7    # "startX":F
    .local v22, "startX":F
    invoke-direct/range {v0 .. v7}, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/transition/TranslationAnimationCreator$1;)V

    .line 78
    .local v0, "listener":Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
    move-object/from16 v1, p9

    invoke-virtual {v1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 79
    move-object/from16 v2, v19

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    .end local v19    # "anim":Landroid/animation/ObjectAnimator;
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 81
    move-object/from16 v3, p8

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    return-object v2
.end method
