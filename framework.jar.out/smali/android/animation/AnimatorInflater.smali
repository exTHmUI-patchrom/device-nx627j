.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorInflater$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4

.field private static final sTmpTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 642
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 19
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parent"    # Landroid/animation/AnimatorSet;
    .param p5, "sequenceOrdering"    # I
    .param p6, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 649
    move/from16 v11, p6

    const/4 v0, 0x0

    .line 650
    .local v0, "anim":Landroid/animation/Animator;
    const/4 v1, 0x0

    .line 654
    .local v1, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move-object v12, v1

    .line 654
    .end local v1    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v2, "depth":I
    .local v12, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :goto_0
    move v13, v2

    .line 656
    .end local v2    # "depth":I
    .local v13, "depth":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v14, v1

    .line 656
    .local v14, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v13, :cond_0

    goto :goto_1

    .line 701
    :cond_0
    move-object/from16 v2, p2

    goto/16 :goto_5

    .line 656
    :cond_1
    :goto_1
    const/4 v1, 0x1

    if-eq v14, v1, :cond_0

    .line 659
    const/4 v1, 0x2

    if-eq v14, v1, :cond_2

    .line 660
    nop

    .line 654
    move v2, v13

    goto :goto_0

    .line 663
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 664
    .local v15, "name":Ljava/lang/String;
    const/16 v16, 0x0

    .line 666
    .local v16, "gotValues":Z
    const-string/jumbo v1, "objectAnimator"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 667
    invoke-static {v7, v8, v9, v11}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 694
    :goto_2
    move-object/from16 v2, p2

    goto/16 :goto_4

    .line 668
    :cond_3
    const-string v1, "animator"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 669
    const/4 v1, 0x0

    invoke-static {v7, v8, v9, v1, v11}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_2

    .line 670
    :cond_4
    const-string/jumbo v1, "set"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 671
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v6, v1

    .line 673
    .end local v0    # "anim":Landroid/animation/Animator;
    .local v6, "anim":Landroid/animation/Animator;
    const/4 v0, 0x0

    if-eqz v8, :cond_5

    .line 674
    sget-object v1, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    invoke-virtual {v8, v9, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 674
    .local v1, "a":Landroid/content/res/TypedArray;
    goto :goto_3

    .line 676
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_5
    sget-object v1, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    invoke-virtual {v7, v9, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 676
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :goto_3
    move-object v5, v1

    .line 678
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 679
    invoke-virtual {v5, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .line 680
    .local v17, "ordering":I
    move-object v4, v6

    check-cast v4, Landroid/animation/AnimatorSet;

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, p2

    move-object v3, v9

    move-object v9, v5

    move/from16 v5, v17

    .line 680
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .local v9, "a":Landroid/content/res/TypedArray;
    move-object/from16 v18, v6

    move v6, v11

    .line 680
    .end local v6    # "anim":Landroid/animation/Animator;
    .local v18, "anim":Landroid/animation/Animator;
    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 682
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 683
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v17    # "ordering":I
    nop

    .line 694
    move-object/from16 v0, v18

    goto :goto_4

    .line 683
    .end local v18    # "anim":Landroid/animation/Animator;
    .restart local v0    # "anim":Landroid/animation/Animator;
    :cond_6
    const-string/jumbo v1, "propertyValuesHolder"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 684
    nop

    .line 685
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 684
    move-object/from16 v2, p2

    invoke-static {v7, v8, v2, v1}, Landroid/animation/AnimatorInflater;->loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 686
    .local v1, "values":[Landroid/animation/PropertyValuesHolder;
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    instance-of v3, v0, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_7

    .line 687
    move-object v3, v0

    check-cast v3, Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 689
    :cond_7
    const/16 v16, 0x1

    .line 690
    .end local v1    # "values":[Landroid/animation/PropertyValuesHolder;
    nop

    .line 694
    :goto_4
    if-eqz v10, :cond_9

    if-nez v16, :cond_9

    .line 695
    if-nez v12, :cond_8

    .line 696
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    .line 698
    :cond_8
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "gotValues":Z
    :cond_9
    nop

    .line 654
    move v2, v13

    move-object/from16 v9, p3

    goto/16 :goto_0

    .line 691
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "gotValues":Z
    :cond_a
    move-object/from16 v2, p2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown animator name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 701
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "gotValues":Z
    :goto_5
    if-eqz v10, :cond_d

    if-eqz v12, :cond_d

    .line 702
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/Animator;

    .line 703
    .local v1, "animsArray":[Landroid/animation/Animator;
    const/4 v3, 0x0

    .line 704
    .local v3, "index":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 705
    .local v5, "a":Landroid/animation/Animator;
    add-int/lit8 v6, v3, 0x1

    .line 705
    .local v6, "index":I
    aput-object v5, v1, v3

    .line 706
    .end local v3    # "index":I
    .end local v5    # "a":Landroid/animation/Animator;
    nop

    .line 704
    move v3, v6

    goto :goto_6

    .line 707
    .end local v6    # "index":I
    .restart local v3    # "index":I
    :cond_b
    if-nez p5, :cond_c

    .line 708
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_7

    .line 710
    :cond_c
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 713
    .end local v1    # "animsArray":[Landroid/animation/Animator;
    .end local v3    # "index":I
    :cond_d
    :goto_7
    return-object v0
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2
    .param p0, "sampleKeyframe"    # Landroid/animation/Keyframe;
    .param p1, "fraction"    # F

    .line 919
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 920
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    .line 921
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 922
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    .line 923
    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    .line 919
    :goto_0
    return-object v0
.end method

.method private static createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 209
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 212
    .local v0, "stateListAnimator":Landroid/animation/StateListAnimator;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 213
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 220
    :pswitch_0
    const/4 v2, 0x0

    .line 221
    .local v2, "animator":Landroid/animation/Animator;
    const-string/jumbo v3, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 222
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 223
    .local v3, "attributeCount":I
    new-array v4, v3, [I

    .line 224
    .local v4, "states":[I
    const/4 v5, 0x0

    .line 225
    .local v5, "stateIndex":I
    const/4 v6, 0x0

    move v7, v5

    move-object v5, v2

    move v2, v6

    .line 225
    .local v2, "i":I
    .local v5, "animator":Landroid/animation/Animator;
    .local v7, "stateIndex":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 226
    invoke-interface {p2, v2}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v8

    .line 227
    .local v8, "attrName":I
    const v9, 0x10101cd

    if-ne v8, v9, :cond_0

    .line 228
    invoke-interface {p2, v2, v6}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v9

    .line 229
    .local v9, "animId":I
    invoke-static {p0, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    .line 230
    .end local v9    # "animId":I
    goto :goto_3

    .line 231
    :cond_0
    add-int/lit8 v9, v7, 0x1

    .line 232
    .local v9, "stateIndex":I
    invoke-interface {p2, v2, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 233
    move v10, v8

    goto :goto_2

    :cond_1
    neg-int v10, v8

    :goto_2
    aput v10, v4, v7

    .line 225
    .end local v7    # "stateIndex":I
    .end local v8    # "attrName":I
    move v7, v9

    .line 225
    .end local v9    # "stateIndex":I
    .restart local v7    # "stateIndex":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 236
    .end local v2    # "i":I
    :cond_2
    if-nez v5, :cond_3

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const/high16 v8, 0x3f800000    # 1.0f

    .line 237
    invoke-static {v2, v6, p1, v8}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v5

    .line 241
    :cond_3
    if-eqz v5, :cond_4

    .line 245
    nop

    .line 246
    invoke-static {v4, v7}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 246
    .end local v3    # "attributeCount":I
    .end local v4    # "states":[I
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v7    # "stateIndex":I
    goto :goto_4

    .line 242
    .restart local v3    # "attributeCount":I
    .restart local v4    # "states":[I
    .restart local v5    # "animator":Landroid/animation/Animator;
    .restart local v7    # "stateIndex":I
    :cond_4
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    const-string v6, "animation state item must have a valid animation"

    invoke-direct {v2, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    .end local v3    # "attributeCount":I
    .end local v4    # "states":[I
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v7    # "stateIndex":I
    :pswitch_1
    return-object v0

    .line 248
    :cond_5
    :goto_4
    goto :goto_0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .locals 5
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;
    .param p1, "gap"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 946
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x2

    .line 947
    .local v0, "count":I
    int-to-float v1, v0

    div-float v1, p1, v1

    .line 948
    .local v1, "increment":F
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_0

    .line 949
    aget-object v3, p0, v2

    add-int/lit8 v4, v2, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 948
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 951
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p0, "keyframes"    # [Ljava/lang/Object;
    .param p1, "header"    # Ljava/lang/String;

    .line 816
    if-eqz p0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    .line 819
    :cond_0
    const-string v0, "AnimatorInflater"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    array-length v0, p0

    .line 821
    .local v0, "count":I
    const/4 v1, 0x0

    .line 821
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 822
    aget-object v2, p0, v1

    check-cast v2, Landroid/animation/Keyframe;

    .line 823
    .local v2, "keyframe":Landroid/animation/Keyframe;
    const-string v3, "AnimatorInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keyframe "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": fraction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    const-string/jumbo v5, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", , value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string/jumbo v5, "null"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 823
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    .end local v2    # "keyframe":Landroid/animation/Keyframe;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 827
    .end local v1    # "i":I
    :cond_3
    return-void

    .line 817
    .end local v0    # "count":I
    :cond_4
    :goto_3
    return-void
.end method

.method private static getChangingConfigs(Landroid/content/res/Resources;I)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 1073
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    monitor-enter v0

    .line 1074
    :try_start_0
    sget-object v1, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1075
    sget-object v1, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->changingConfigurations:I

    monitor-exit v0

    return v1

    .line 1076
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 22
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueType"    # I
    .param p2, "valueFromId"    # I
    .param p3, "valueToId"    # I
    .param p4, "propertyName"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 275
    move-object/from16 v3, p4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 276
    .local v4, "tvFrom":Landroid/util/TypedValue;
    if-eqz v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 277
    .local v7, "hasFrom":Z
    :goto_0
    if-eqz v7, :cond_1

    iget v8, v4, Landroid/util/TypedValue;->type:I

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 278
    .local v8, "fromType":I
    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 279
    .local v9, "tvTo":Landroid/util/TypedValue;
    if-eqz v9, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 280
    .local v10, "hasTo":Z
    :goto_2
    if-eqz v10, :cond_3

    iget v11, v9, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 282
    .local v11, "toType":I
    :goto_3
    const/4 v12, 0x4

    move/from16 v13, p1

    if-ne v13, v12, :cond_7

    .line 284
    if-eqz v7, :cond_4

    invoke-static {v8}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v12

    if-nez v12, :cond_5

    :cond_4
    if-eqz v10, :cond_6

    invoke-static {v11}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 285
    :cond_5
    const/4 v12, 0x3

    .end local p1    # "valueType":I
    .local v12, "valueType":I
    :goto_4
    goto :goto_5

    .line 287
    .end local v12    # "valueType":I
    .restart local p1    # "valueType":I
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 291
    :cond_7
    move v12, v13

    .end local p1    # "valueType":I
    .restart local v12    # "valueType":I
    :goto_5
    if-nez v12, :cond_8

    const/4 v13, 0x1

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    .line 293
    .local v13, "getFloats":Z
    :goto_6
    const/4 v14, 0x0

    .line 295
    .local v14, "returnValue":Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x2

    if-ne v12, v15, :cond_11

    .line 296
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "fromString":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, "toString":Ljava/lang/String;
    if-nez v5, :cond_9

    .line 299
    const/4 v15, 0x0

    goto :goto_7

    :cond_9
    new-instance v15, Landroid/util/PathParser$PathData;

    invoke-direct {v15, v5}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 300
    .local v15, "nodesFrom":Landroid/util/PathParser$PathData;
    :goto_7
    if-nez v6, :cond_a

    .line 301
    move-object/from16 v18, v4

    const/4 v4, 0x0

    goto :goto_8

    :cond_a
    move-object/from16 v18, v4

    new-instance v4, Landroid/util/PathParser$PathData;

    .end local v4    # "tvFrom":Landroid/util/TypedValue;
    .local v18, "tvFrom":Landroid/util/TypedValue;
    invoke-direct {v4, v6}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 303
    .local v4, "nodesTo":Landroid/util/PathParser$PathData;
    :goto_8
    if-nez v15, :cond_c

    if-eqz v4, :cond_b

    goto :goto_9

    .line 323
    .end local v4    # "nodesTo":Landroid/util/PathParser$PathData;
    .end local v5    # "fromString":Ljava/lang/String;
    .end local v6    # "toString":Ljava/lang/String;
    .end local v15    # "nodesFrom":Landroid/util/PathParser$PathData;
    :cond_b
    move-object/from16 v19, v9

    move/from16 v21, v11

    move-object/from16 v20, v14

    goto/16 :goto_b

    .line 304
    .restart local v4    # "nodesTo":Landroid/util/PathParser$PathData;
    .restart local v5    # "fromString":Ljava/lang/String;
    .restart local v6    # "toString":Ljava/lang/String;
    .restart local v15    # "nodesFrom":Landroid/util/PathParser$PathData;
    :cond_c
    :goto_9
    if-eqz v15, :cond_f

    .line 305
    move-object/from16 v19, v9

    new-instance v9, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .local v19, "tvTo":Landroid/util/TypedValue;
    move-object/from16 v20, v14

    const/4 v14, 0x0

    invoke-direct {v9, v14}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$1;)V

    .line 306
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v9, "evaluator":Landroid/animation/TypeEvaluator;
    .local v20, "returnValue":Landroid/animation/PropertyValuesHolder;
    if-eqz v4, :cond_e

    .line 307
    invoke-static {v15, v4}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 311
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v15, v14, v17

    const/16 v16, 0x1

    aput-object v4, v14, v16

    invoke-static {v3, v9, v14}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 317
    .end local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    move/from16 v21, v11

    goto :goto_a

    .line 308
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_d
    new-instance v14, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v11

    const-string v11, " Can\'t morph from "

    .end local v11    # "toType":I
    .local v21, "toType":I
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 314
    .end local v21    # "toType":I
    .restart local v11    # "toType":I
    :cond_e
    move/from16 v21, v11

    .end local v11    # "toType":I
    .restart local v21    # "toType":I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v15, v2, v11

    invoke-static {v3, v9, v2}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 317
    .end local v9    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v2, "returnValue":Landroid/animation/PropertyValuesHolder;
    move-object v14, v2

    .end local v2    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_a
    goto :goto_c

    .end local v19    # "tvTo":Landroid/util/TypedValue;
    .end local v21    # "toType":I
    .local v9, "tvTo":Landroid/util/TypedValue;
    .restart local v11    # "toType":I
    :cond_f
    move-object/from16 v19, v9

    move/from16 v21, v11

    move-object/from16 v20, v14

    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v11    # "toType":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "tvTo":Landroid/util/TypedValue;
    .restart local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "toType":I
    if-eqz v4, :cond_10

    .line 318
    new-instance v2, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$1;)V

    .line 319
    .local v2, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v9, v11

    invoke-static {v3, v2, v9}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .end local v2    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "nodesTo":Landroid/util/PathParser$PathData;
    .end local v5    # "fromString":Ljava/lang/String;
    .end local v6    # "toString":Ljava/lang/String;
    .end local v15    # "nodesFrom":Landroid/util/PathParser$PathData;
    .end local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_c

    .line 323
    .end local v19    # "tvTo":Landroid/util/TypedValue;
    .end local v21    # "toType":I
    .restart local v9    # "tvTo":Landroid/util/TypedValue;
    .restart local v11    # "toType":I
    :cond_10
    :goto_b
    move-object/from16 v14, v20

    .line 399
    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v11    # "toType":I
    .restart local v19    # "tvTo":Landroid/util/TypedValue;
    .restart local v21    # "toType":I
    :goto_c
    move/from16 v9, v21

    move/from16 v11, p3

    goto/16 :goto_17

    .line 324
    .end local v18    # "tvFrom":Landroid/util/TypedValue;
    .end local v19    # "tvTo":Landroid/util/TypedValue;
    .end local v21    # "toType":I
    .local v4, "tvFrom":Landroid/util/TypedValue;
    .restart local v9    # "tvTo":Landroid/util/TypedValue;
    .restart local v11    # "toType":I
    :cond_11
    move-object/from16 v18, v4

    move-object/from16 v19, v9

    move/from16 v21, v11

    move-object/from16 v20, v14

    .end local v4    # "tvFrom":Landroid/util/TypedValue;
    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v11    # "toType":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v18    # "tvFrom":Landroid/util/TypedValue;
    .restart local v19    # "tvTo":Landroid/util/TypedValue;
    .restart local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "toType":I
    const/4 v2, 0x0

    .line 326
    .restart local v2    # "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v4, 0x3

    if-ne v12, v4, :cond_12

    .line 328
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    .line 330
    :cond_12
    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eqz v13, :cond_18

    .line 333
    if-eqz v7, :cond_16

    .line 334
    if-ne v8, v4, :cond_13

    .line 335
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .local v6, "valueFrom":F
    goto :goto_d

    .line 337
    .end local v6    # "valueFrom":F
    :cond_13
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 339
    .restart local v6    # "valueFrom":F
    :goto_d
    if-eqz v10, :cond_15

    .line 340
    move/from16 v9, v21

    if-ne v9, v4, :cond_14

    .line 341
    .end local v21    # "toType":I
    .local v9, "toType":I
    move/from16 v11, p3

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .local v4, "valueTo":F
    goto :goto_e

    .line 343
    .end local v4    # "valueTo":F
    :cond_14
    move/from16 v11, p3

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 345
    .restart local v4    # "valueTo":F
    :goto_e
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v14, 0x0

    aput v6, v5, v14

    const/4 v15, 0x1

    aput v4, v5, v15

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 358
    .end local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v5, "returnValue":Landroid/animation/PropertyValuesHolder;
    move-object v14, v5

    goto :goto_11

    .line 348
    .end local v4    # "valueTo":F
    .end local v5    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "toType":I
    .restart local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "toType":I
    :cond_15
    move/from16 v9, v21

    move/from16 v11, p3

    const/4 v14, 0x0

    const/4 v15, 0x1

    .end local v21    # "toType":I
    .restart local v9    # "toType":I
    new-array v4, v15, [F

    aput v6, v4, v14

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .end local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v4, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_10

    .line 351
    .end local v4    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "valueFrom":F
    .end local v9    # "toType":I
    .restart local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "toType":I
    :cond_16
    move/from16 v9, v21

    move/from16 v11, p3

    .end local v21    # "toType":I
    .restart local v9    # "toType":I
    if-ne v9, v4, :cond_17

    .line 352
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .local v4, "valueTo":F
    goto :goto_f

    .line 354
    .end local v4    # "valueTo":F
    :cond_17
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 356
    .restart local v4    # "valueTo":F
    :goto_f
    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 358
    .end local v4    # "valueTo":F
    .end local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_10
    move-object v14, v4

    :goto_11
    goto/16 :goto_16

    .line 361
    .end local v9    # "toType":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "toType":I
    :cond_18
    move/from16 v9, v21

    move/from16 v11, p3

    .end local v21    # "toType":I
    .restart local v9    # "toType":I
    if-eqz v7, :cond_1e

    .line 362
    if-ne v8, v4, :cond_19

    .line 363
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    .line 367
    .local v6, "valueFrom":I
    move v14, v6

    goto :goto_12

    .line 364
    .end local v6    # "valueFrom":I
    :cond_19
    invoke-static {v8}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 365
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .local v14, "valueFrom":I
    goto :goto_12

    .line 367
    .end local v14    # "valueFrom":I
    :cond_1a
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .restart local v14    # "valueFrom":I
    :goto_12
    move v6, v14

    .line 369
    .end local v14    # "valueFrom":I
    .restart local v6    # "valueFrom":I
    if-eqz v10, :cond_1d

    .line 370
    if-ne v9, v4, :cond_1b

    .line 371
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    .line 375
    .local v4, "valueTo":I
    move v5, v4

    const/4 v4, 0x0

    goto :goto_13

    .line 372
    .end local v4    # "valueTo":I
    :cond_1b
    invoke-static {v9}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 373
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .local v5, "valueTo":I
    goto :goto_13

    .line 375
    .end local v5    # "valueTo":I
    :cond_1c
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 377
    .restart local v5    # "valueTo":I
    :goto_13
    const/4 v14, 0x2

    new-array v14, v14, [I

    aput v6, v14, v4

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v3, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    goto :goto_14

    .line 379
    .end local v5    # "valueTo":I
    :cond_1d
    const/4 v4, 0x0

    const/4 v15, 0x1

    new-array v5, v15, [I

    aput v6, v5, v4

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .end local v6    # "valueFrom":I
    .end local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v14, "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_14
    goto :goto_16

    .line 382
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1e
    if-eqz v10, :cond_21

    .line 383
    if-ne v9, v4, :cond_1f

    .line 384
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    .line 388
    .restart local v4    # "valueTo":I
    move v5, v4

    const/4 v4, 0x0

    goto :goto_15

    .line 385
    .end local v4    # "valueTo":I
    :cond_1f
    invoke-static {v9}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 386
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .restart local v5    # "valueTo":I
    goto :goto_15

    .line 388
    .end local v5    # "valueTo":I
    :cond_20
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 390
    .restart local v5    # "valueTo":I
    :goto_15
    const/4 v6, 0x1

    new-array v6, v6, [I

    aput v5, v6, v4

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .end local v5    # "valueTo":I
    .end local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_16

    .line 394
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_21
    move-object/from16 v14, v20

    .end local v20    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_16
    if-eqz v14, :cond_22

    if-eqz v2, :cond_22

    .line 395
    invoke-virtual {v14, v2}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 399
    .end local v2    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_22
    :goto_17
    return-object v14
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .locals 8
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueFromId"    # I
    .param p2, "valueToId"    # I

    .line 798
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 799
    .local v0, "tvFrom":Landroid/util/TypedValue;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 800
    .local v3, "hasFrom":Z
    :goto_0
    if-eqz v3, :cond_1

    iget v4, v0, Landroid/util/TypedValue;->type:I

    goto :goto_1

    :cond_1
    move v4, v2

    .line 801
    .local v4, "fromType":I
    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 802
    .local v5, "tvTo":Landroid/util/TypedValue;
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 803
    .local v1, "hasTo":Z
    :goto_2
    if-eqz v1, :cond_3

    iget v6, v5, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    move v6, v2

    .line 807
    .local v6, "toType":I
    :goto_3
    if-eqz v3, :cond_4

    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    invoke-static {v6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 808
    :cond_5
    const/4 v2, 0x3

    .local v2, "valueType":I
    goto :goto_4

    .line 810
    .end local v2    # "valueType":I
    :cond_6
    nop

    .line 812
    .restart local v2    # "valueType":I
    :goto_4
    return v2
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 777
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 778
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 780
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 783
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 784
    .local v2, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 787
    .local v3, "hasValue":Z
    :goto_1
    if-eqz v3, :cond_2

    iget v4, v2, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 788
    const/4 v0, 0x3

    .local v0, "valueType":I
    goto :goto_2

    .line 790
    .end local v0    # "valueType":I
    :cond_2
    nop

    .line 792
    .restart local v0    # "valueType":I
    :goto_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 793
    return v0
.end method

.method private static isColorType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 1080
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 112
    nop

    .line 113
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v0

    .line 114
    .local v0, "animatorCache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/Animator;>;"
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 115
    .local v1, "animator":Landroid/animation/Animator;
    if-eqz v1, :cond_0

    .line 119
    return-object v1

    .line 123
    :cond_0
    const/4 v2, 0x0

    .line 125
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    move-object v2, v3

    .line 126
    invoke-static {p0, p1, v2, p3}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v3

    move-object v1, v3

    .line 127
    if-eqz v1, :cond_1

    .line 128
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 129
    invoke-virtual {v1}, Landroid/animation/Animator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v3

    .line 130
    .local v3, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    if-eqz v3, :cond_1

    .line 134
    int-to-long v4, p2

    invoke-virtual {v0, v4, v5, p1, v3}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v3, p0, p1}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 139
    .end local v3    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    :cond_1
    nop

    .line 153
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 139
    :cond_2
    return-object v1

    .line 153
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 146
    :catch_0
    move-exception v3

    .line 147
    .local v3, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load animation resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 150
    .local v4, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 151
    throw v4

    .line 140
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v4    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    .line 141
    .local v3, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load animation resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v4    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 145
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local v3    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v3
.end method

.method private static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "anim"    # Landroid/animation/ValueAnimator;
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1028
    const/4 v0, 0x0

    .line 1029
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 1031
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1032
    sget-object v3, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p1, p2, v3, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 1034
    :cond_0
    sget-object v3, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1038
    :goto_0
    if-eqz p3, :cond_2

    .line 1039
    if-eqz p1, :cond_1

    .line 1040
    sget-object v3, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p1, p2, v3, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_1

    .line 1043
    :cond_1
    sget-object v3, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1045
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 1048
    :cond_2
    if-nez p3, :cond_3

    .line 1049
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    move-object p3, v3

    .line 1051
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 1053
    invoke-static {p3, v0, v1, p4}, Landroid/animation/AnimatorInflater;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V

    .line 1055
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1056
    .local v2, "resID":I
    if-lez v2, :cond_5

    .line 1057
    invoke-static {p0, p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 1058
    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    instance-of v4, v3, Landroid/view/animation/BaseInterpolator;

    if-eqz v4, :cond_4

    .line 1059
    move-object v4, v3

    check-cast v4, Landroid/view/animation/BaseInterpolator;

    .line 1060
    invoke-virtual {v4}, Landroid/view/animation/BaseInterpolator;->getChangingConfiguration()I

    move-result v4

    .line 1059
    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 1062
    :cond_4
    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1065
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1066
    if-eqz v1, :cond_6

    .line 1067
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1069
    :cond_6
    return-object p3
.end method

.method private static loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 958
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 959
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 961
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 964
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :goto_0
    const/4 v2, 0x0

    .line 966
    .local v2, "keyframe":Landroid/animation/Keyframe;
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 968
    .local v3, "fraction":F
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 969
    .local v5, "keyframeValue":Landroid/util/TypedValue;
    const/4 v6, 0x1

    if-eqz v5, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v0

    .line 970
    .local v7, "hasValue":Z
    :goto_1
    const/4 v8, 0x4

    if-ne p3, v8, :cond_3

    .line 973
    if-eqz v7, :cond_2

    iget v8, v5, Landroid/util/TypedValue;->type:I

    invoke-static {v8}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 974
    const/4 p3, 0x3

    goto :goto_2

    .line 976
    :cond_2
    const/4 p3, 0x0

    .line 980
    :cond_3
    :goto_2
    if-eqz v7, :cond_5

    .line 981
    if-eq p3, v4, :cond_4

    packed-switch p3, :pswitch_data_0

    goto :goto_3

    .line 983
    :pswitch_0
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 984
    .local v4, "value":F
    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 985
    goto :goto_3

    .line 988
    .end local v4    # "value":F
    :cond_4
    :pswitch_1
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 989
    .local v4, "intValue":I
    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v2

    .line 990
    .end local v4    # "intValue":I
    :goto_3
    goto :goto_5

    .line 993
    :cond_5
    if-nez p3, :cond_6

    invoke-static {v3}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v4

    goto :goto_4

    .line 994
    :cond_6
    invoke-static {v3}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v4

    :goto_4
    move-object v2, v4

    .line 997
    :goto_5
    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 998
    .local v0, "resID":I
    if-lez v0, :cond_7

    .line 999
    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 1000
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v2, v4}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1002
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_7
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1004
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1009
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 1011
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, p2, v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    .line 1013
    return-object v0
.end method

.method private static loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .locals 20
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "propertyName"    # Ljava/lang/String;
    .param p4, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 834
    const/4 v2, 0x0

    .line 835
    .local v2, "value":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x0

    move/from16 v4, p4

    .line 838
    .end local p4    # "valueType":I
    .local v3, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .local v4, "valueType":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .line 838
    .local v6, "type":I
    const/4 v7, 0x3

    if-eq v5, v7, :cond_4

    const/4 v5, 0x1

    if-eq v6, v5, :cond_4

    .line 840
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 841
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v7, "keyframe"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 842
    const/4 v7, 0x4

    if-ne v4, v7, :cond_0

    .line 843
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    invoke-static {v0, v1, v7}, Landroid/animation/AnimatorInflater;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I

    move-result v4

    .line 845
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    invoke-static {v0, v1, v7, v4}, Landroid/animation/AnimatorInflater;->loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;

    move-result-object v7

    .line 846
    .local v7, "keyframe":Landroid/animation/Keyframe;
    if-eqz v7, :cond_2

    .line 847
    if-nez v3, :cond_1

    .line 848
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    .line 850
    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 854
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "keyframe":Landroid/animation/Keyframe;
    :cond_3
    goto :goto_0

    .line 857
    :cond_4
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v5

    .line 857
    .local v8, "count":I
    if-lez v5, :cond_f

    .line 863
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Keyframe;

    .line 864
    .local v9, "firstKeyframe":Landroid/animation/Keyframe;
    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Keyframe;

    .line 865
    .local v10, "lastKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v10}, Landroid/animation/Keyframe;->getFraction()F

    move-result v11

    .line 866
    .local v11, "endFraction":F
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v13, v11, v12

    const/4 v14, 0x0

    if-gez v13, :cond_6

    .line 867
    cmpg-float v13, v11, v14

    if-gez v13, :cond_5

    .line 868
    invoke-virtual {v10, v12}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_1

    .line 870
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v10, v12}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v15

    invoke-virtual {v3, v13, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 871
    add-int/lit8 v8, v8, 0x1

    .line 874
    :cond_6
    :goto_1
    invoke-virtual {v9}, Landroid/animation/Keyframe;->getFraction()F

    move-result v13

    .line 875
    .local v13, "startFraction":F
    cmpl-float v15, v13, v14

    if-eqz v15, :cond_8

    .line 876
    cmpg-float v15, v13, v14

    if-gez v15, :cond_7

    .line 877
    invoke-virtual {v9, v14}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_2

    .line 879
    :cond_7
    invoke-static {v9, v14}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v15

    invoke-virtual {v3, v5, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 880
    add-int/lit8 v8, v8, 0x1

    .line 883
    :cond_8
    :goto_2
    new-array v15, v8, [Landroid/animation/Keyframe;

    .line 884
    .local v15, "keyframeArray":[Landroid/animation/Keyframe;
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 885
    nop

    .line 885
    .local v5, "i":I
    :goto_3
    if-ge v5, v8, :cond_e

    .line 886
    aget-object v7, v15, v5

    .line 887
    .restart local v7    # "keyframe":Landroid/animation/Keyframe;
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v16

    cmpg-float v16, v16, v14

    if-gez v16, :cond_d

    .line 888
    if-nez v5, :cond_9

    .line 889
    invoke-virtual {v7, v14}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_6

    .line 890
    :cond_9
    add-int/lit8 v14, v8, -0x1

    if-ne v5, v14, :cond_a

    .line 891
    invoke-virtual {v7, v12}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 885
    const/16 v16, 0x0

    goto :goto_7

    .line 895
    :cond_a
    move v14, v5

    .line 896
    .local v14, "startIndex":I
    move/from16 v16, v5

    .line 897
    .local v16, "endIndex":I
    add-int/lit8 v17, v14, 0x1

    move/from16 v12, v16

    .line 897
    .end local v16    # "endIndex":I
    .local v12, "endIndex":I
    .local v17, "j":I
    :goto_4
    move/from16 v18, v17

    .line 897
    .end local v17    # "j":I
    .local v18, "j":I
    add-int/lit8 v0, v8, -0x1

    move/from16 v1, v18

    if-ge v1, v0, :cond_c

    .line 898
    .end local v18    # "j":I
    .local v1, "j":I
    aget-object v0, v15, v1

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v0

    const/16 v16, 0x0

    cmpl-float v0, v0, v16

    if-ltz v0, :cond_b

    .line 899
    goto :goto_5

    .line 901
    :cond_b
    move v12, v1

    .line 897
    add-int/lit8 v17, v1, 0x1

    .line 897
    .end local v1    # "j":I
    .restart local v17    # "j":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_4

    .line 903
    .end local v17    # "j":I
    :cond_c
    const/16 v16, 0x0

    :goto_5
    add-int/lit8 v0, v12, 0x1

    aget-object v0, v15, v0

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v0

    add-int/lit8 v1, v14, -0x1

    aget-object v1, v15, v1

    .line 904
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    sub-float/2addr v0, v1

    .line 905
    .local v0, "gap":F
    invoke-static {v15, v0, v14, v12}, Landroid/animation/AnimatorInflater;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    .line 905
    .end local v0    # "gap":F
    .end local v7    # "keyframe":Landroid/animation/Keyframe;
    .end local v12    # "endIndex":I
    .end local v14    # "startIndex":I
    goto :goto_7

    .line 885
    :cond_d
    :goto_6
    move/from16 v16, v14

    :goto_7
    add-int/lit8 v5, v5, 0x1

    move/from16 v14, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v7, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_3

    .line 909
    .end local v5    # "i":I
    :cond_e
    move-object/from16 v0, p3

    invoke-static {v0, v15}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 910
    const/4 v1, 0x3

    if-ne v4, v1, :cond_10

    .line 911
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 911
    .end local v8    # "count":I
    .end local v9    # "firstKeyframe":Landroid/animation/Keyframe;
    .end local v10    # "lastKeyframe":Landroid/animation/Keyframe;
    .end local v11    # "endFraction":F
    .end local v13    # "startFraction":F
    .end local v15    # "keyframeArray":[Landroid/animation/Keyframe;
    goto :goto_8

    .line 915
    :cond_f
    move-object/from16 v0, p3

    :cond_10
    :goto_8
    return-object v2
.end method

.method public static loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    .local v0, "resources":Landroid/content/res/Resources;
    nop

    .line 161
    invoke-virtual {v0}, Landroid/content/res/Resources;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v1

    .line 162
    .local v1, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/StateListAnimator;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 163
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    int-to-long v3, p1

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/StateListAnimator;

    .line 164
    .local v3, "animator":Landroid/animation/StateListAnimator;
    if-eqz v3, :cond_0

    .line 165
    return-object v3

    .line 167
    :cond_0
    const/4 v4, 0x0

    .line 169
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v4, v5

    .line 170
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/animation/AnimatorInflater;->createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;

    move-result-object v5

    move-object v3, v5

    .line 171
    if-eqz v3, :cond_1

    .line 172
    invoke-static {v0, p1}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/animation/StateListAnimator;->appendChangingConfigurations(I)V

    .line 173
    nop

    .line 174
    invoke-virtual {v3}, Landroid/animation/StateListAnimator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v5

    .line 175
    .local v5, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    if-eqz v5, :cond_1

    .line 176
    int-to-long v6, p1

    invoke-virtual {v1, v6, v7, v2, v5}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v5, v0, v2}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/StateListAnimator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v6

    .line 181
    .end local v5    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    :cond_1
    nop

    .line 199
    if-eqz v4, :cond_2

    .line 200
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 181
    :cond_2
    return-object v3

    .line 199
    :catchall_0
    move-exception v5

    goto :goto_0

    .line 190
    :catch_0
    move-exception v5

    .line 191
    .local v5, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 196
    .local v6, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 197
    throw v6

    .line 182
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v6    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v5

    .line 183
    .local v5, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v6    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 189
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    .end local v5    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v6    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    if-eqz v4, :cond_3

    .line 200
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v5
.end method

.method private static loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    const/4 v0, 0x0

    .line 721
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    move v2, v1

    .line 721
    .local v2, "type":I
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v1, v3, :cond_6

    const/4 v1, 0x1

    if-eq v2, v1, :cond_6

    .line 724
    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    .line 725
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 726
    goto :goto_0

    .line 729
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 731
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v7, "propertyValuesHolder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 733
    if-eqz p1, :cond_1

    .line 734
    sget-object v7, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    invoke-virtual {p1, p3, v7, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 734
    .local v7, "a":Landroid/content/res/TypedArray;
    goto :goto_1

    .line 736
    .end local v7    # "a":Landroid/content/res/TypedArray;
    :cond_1
    sget-object v7, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    invoke-virtual {p0, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 738
    .restart local v7    # "a":Landroid/content/res/TypedArray;
    :goto_1
    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 739
    .local v3, "propertyName":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-virtual {v7, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 742
    .local v5, "valueType":I
    invoke-static {p0, p1, p2, v3, v5}, Landroid/animation/AnimatorInflater;->loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 743
    .local v8, "pvh":Landroid/animation/PropertyValuesHolder;
    if-nez v8, :cond_2

    .line 744
    invoke-static {v7, v5, v4, v1, v3}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 748
    :cond_2
    if-eqz v8, :cond_4

    .line 749
    if-nez v0, :cond_3

    .line 750
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 752
    :cond_3
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_4
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 757
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v5    # "valueType":I
    .end local v7    # "a":Landroid/content/res/TypedArray;
    .end local v8    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 758
    .end local v6    # "name":Ljava/lang/String;
    goto :goto_0

    .line 760
    :cond_6
    const/4 v1, 0x0

    .line 761
    .local v1, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_7

    .line 762
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 763
    .local v3, "count":I
    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    .line 764
    nop

    .line 764
    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_7

    .line 765
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/PropertyValuesHolder;

    aput-object v5, v1, v4

    .line 764
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 768
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_7
    return-object v1
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V
    .locals 11
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F

    .line 412
    const/4 v0, 0x1

    const/16 v1, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v1, v1

    .line 414
    .local v1, "duration":J
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v4, v4

    .line 416
    .local v4, "startDelay":J
    const/4 v6, 0x4

    const/4 v7, 0x7

    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 418
    .local v7, "valueType":I
    const/4 v8, 0x6

    const/4 v9, 0x5

    if-ne v7, v6, :cond_0

    .line 419
    invoke-static {p1, v9, v8}, Landroid/animation/AnimatorInflater;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v7

    .line 422
    :cond_0
    const-string v10, ""

    invoke-static {p1, v7, v9, v8, v10}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 424
    .local v8, "pvh":Landroid/animation/PropertyValuesHolder;
    if-eqz v8, :cond_1

    .line 425
    new-array v9, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v8, v9, v3

    invoke-virtual {p0, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 428
    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 429
    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 431
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 432
    nop

    .line 433
    invoke-virtual {p1, v9, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 432
    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 435
    :cond_2
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 436
    nop

    .line 437
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 436
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 441
    :cond_3
    if-eqz p2, :cond_4

    .line 442
    invoke-static {p0, p2, v7, p3}, Landroid/animation/AnimatorInflater;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IF)V

    .line 444
    :cond_4
    return-void
.end method

.method private static setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;
    .locals 9
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "fromString":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "toString":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 459
    move-object v4, v3

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/util/PathParser$PathData;

    invoke-direct {v4, v1}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 460
    .local v4, "pathDataFrom":Landroid/util/PathParser$PathData;
    :goto_0
    if-nez v2, :cond_1

    .line 461
    move-object v5, v3

    goto :goto_1

    :cond_1
    new-instance v5, Landroid/util/PathParser$PathData;

    invoke-direct {v5, v2}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 463
    .local v5, "pathDataTo":Landroid/util/PathParser$PathData;
    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    .line 464
    if-eqz v5, :cond_3

    .line 465
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v7

    aput-object v5, v8, v6

    invoke-virtual {p0, v8}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 466
    invoke-static {v4, v5}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 467
    :cond_2
    new-instance v3, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Can\'t morph from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 471
    :cond_3
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 473
    :goto_2
    new-instance v6, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {v6, v3}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$1;)V

    move-object v0, v6

    goto :goto_3

    .line 474
    :cond_4
    if-eqz v5, :cond_5

    .line 475
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 476
    new-instance v6, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {v6, v3}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$1;)V

    move-object v0, v6

    .line 483
    :cond_5
    :goto_3
    return-object v0
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IF)V
    .locals 16
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "valueType"    # I
    .param p3, "pixelSize"    # F

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 497
    move-object/from16 v2, p0

    check-cast v2, Landroid/animation/ObjectAnimator;

    .line 498
    .local v2, "oa":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, "pathData":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v4, :cond_9

    .line 509
    nop

    .line 510
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 511
    .local v7, "propertyXName":Ljava/lang/String;
    const/4 v8, 0x3

    .line 512
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 514
    .local v8, "propertyYName":Ljava/lang/String;
    if-eq v1, v6, :cond_0

    const/4 v9, 0x4

    if-ne v1, v9, :cond_1

    .line 517
    :cond_0
    const/4 v1, 0x0

    .line 519
    .end local p2    # "valueType":I
    .local v1, "valueType":I
    :cond_1
    if-nez v7, :cond_3

    if-eqz v8, :cond_2

    goto :goto_0

    .line 520
    :cond_2
    new-instance v3, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 523
    :cond_3
    :goto_0
    invoke-static {v4}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v9

    .line 524
    .local v9, "path":Landroid/graphics/Path;
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v10, v10, p3

    .line 525
    .local v10, "error":F
    invoke-static {v9, v10}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;

    move-result-object v11

    .line 528
    .local v11, "keyframeSet":Landroid/animation/PathKeyframes;
    if-nez v1, :cond_4

    .line 529
    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v12

    .line 530
    .local v12, "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v13

    .local v13, "yKeyframes":Landroid/animation/Keyframes;
    goto :goto_1

    .line 532
    .end local v12    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v13    # "yKeyframes":Landroid/animation/Keyframes;
    :cond_4
    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v12

    .line 533
    .restart local v12    # "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v13

    .line 535
    .restart local v13    # "yKeyframes":Landroid/animation/Keyframes;
    :goto_1
    const/4 v14, 0x0

    .line 536
    .local v14, "x":Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x0

    .line 537
    .local v15, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz v7, :cond_5

    .line 538
    invoke-static {v7, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 540
    :cond_5
    if-eqz v8, :cond_6

    .line 541
    invoke-static {v8, v13}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 543
    :cond_6
    if-nez v14, :cond_7

    .line 544
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v15, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_2

    .line 545
    :cond_7
    if-nez v15, :cond_8

    .line 546
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v14, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_2

    .line 548
    :cond_8
    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v14, v6, v5

    aput-object v15, v6, v3

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 551
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v9    # "path":Landroid/graphics/Path;
    .end local v10    # "error":F
    .end local v11    # "keyframeSet":Landroid/animation/PathKeyframes;
    .end local v12    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v13    # "yKeyframes":Landroid/animation/Keyframes;
    .end local v14    # "x":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "y":Landroid/animation/PropertyValuesHolder;
    :goto_2
    goto :goto_3

    .line 552
    .end local v1    # "valueType":I
    .restart local p2    # "valueType":I
    :cond_9
    nop

    .line 553
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, "propertyName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 556
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local p2    # "valueType":I
    .restart local v1    # "valueType":I
    :goto_3
    return-void
.end method

.method private static setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V
    .locals 8
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "getFloats"    # Z
    .param p3, "hasFrom"    # Z
    .param p4, "fromType"    # I
    .param p5, "hasTo"    # Z
    .param p6, "toType"    # I

    .line 572
    const/4 v0, 0x5

    .line 573
    .local v0, "valueFromIndex":I
    const/4 v1, 0x6

    .line 574
    .local v1, "valueToIndex":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_5

    .line 577
    if-eqz p3, :cond_3

    .line 578
    if-ne p4, v4, :cond_0

    .line 579
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .local v7, "valueFrom":F
    goto :goto_0

    .line 581
    .end local v7    # "valueFrom":F
    :cond_0
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 583
    .restart local v7    # "valueFrom":F
    :goto_0
    if-eqz p5, :cond_2

    .line 584
    if-ne p6, v4, :cond_1

    .line 585
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .local v4, "valueTo":F
    goto :goto_1

    .line 587
    .end local v4    # "valueTo":F
    :cond_1
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 589
    .restart local v4    # "valueTo":F
    :goto_1
    new-array v2, v2, [F

    aput v7, v2, v6

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_3

    .line 591
    .end local v4    # "valueTo":F
    :cond_2
    new-array v2, v3, [F

    aput v7, v2, v6

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_3

    .line 594
    .end local v7    # "valueFrom":F
    :cond_3
    if-ne p6, v4, :cond_4

    .line 595
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .local v2, "valueTo":F
    goto :goto_2

    .line 597
    .end local v2    # "valueTo":F
    :cond_4
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 599
    .restart local v2    # "valueTo":F
    :goto_2
    new-array v3, v3, [F

    aput v2, v3, v6

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 601
    .end local v2    # "valueTo":F
    :goto_3
    goto/16 :goto_a

    .line 604
    :cond_5
    if-eqz p3, :cond_b

    .line 605
    if-ne p4, v4, :cond_6

    .line 606
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    float-to-int v7, v7

    .local v7, "valueFrom":I
    :goto_4
    goto :goto_5

    .line 607
    .end local v7    # "valueFrom":I
    :cond_6
    invoke-static {p4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 608
    invoke-virtual {p1, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    goto :goto_4

    .line 610
    :cond_7
    invoke-virtual {p1, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 612
    .restart local v7    # "valueFrom":I
    :goto_5
    if-eqz p5, :cond_a

    .line 613
    if-ne p6, v4, :cond_8

    .line 614
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    .local v4, "valueTo":I
    :goto_6
    goto :goto_7

    .line 615
    .end local v4    # "valueTo":I
    :cond_8
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 616
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    goto :goto_6

    .line 618
    :cond_9
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 620
    .restart local v4    # "valueTo":I
    :goto_7
    new-array v2, v2, [I

    aput v7, v2, v6

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_a

    .line 622
    .end local v4    # "valueTo":I
    :cond_a
    new-array v2, v3, [I

    aput v7, v2, v6

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_a

    .line 625
    .end local v7    # "valueFrom":I
    :cond_b
    if-eqz p5, :cond_e

    .line 626
    if-ne p6, v4, :cond_c

    .line 627
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .local v2, "valueTo":I
    :goto_8
    goto :goto_9

    .line 628
    .end local v2    # "valueTo":I
    :cond_c
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 629
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    goto :goto_8

    .line 631
    :cond_d
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 633
    .restart local v2    # "valueTo":I
    :goto_9
    new-array v3, v3, [I

    aput v2, v3, v6

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 637
    .end local v2    # "valueTo":I
    :cond_e
    :goto_a
    return-void
.end method
