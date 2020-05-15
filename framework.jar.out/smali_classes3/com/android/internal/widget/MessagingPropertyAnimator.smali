.class public Lcom/android/internal/widget/MessagingPropertyAnimator;
.super Ljava/lang/Object;
.source "MessagingPropertyAnimator.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field private static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field private static final APPEAR_ANIMATION_LENGTH:J = 0xd2L

.field private static final CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field private static final TAG_ALPHA_ANIMATOR:I = 0x102043a

.field private static final TAG_FIRST_LAYOUT:I = 0x102043b

.field private static final TAG_LAYOUT_TOP:I = 0x102043c

.field private static final TAG_TOP:I = 0x102043e

.field private static final TAG_TOP_ANIMATOR:I = 0x102043d

.field private static final TOP:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 36
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 42
    sget-object v0, Lcom/android/internal/widget/-$$Lambda$MessagingPropertyAnimator$7coWc0tjIUC7grCXucNFbpYTxDI;->INSTANCE:Lcom/android/internal/widget/-$$Lambda$MessagingPropertyAnimator$7coWc0tjIUC7grCXucNFbpYTxDI;

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    .line 44
    new-instance v0, Lcom/android/internal/widget/MessagingPropertyAnimator$1;

    const-string v1, "top"

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MessagingPropertyAnimator$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->TOP:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I

    .line 33
    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Z

    .line 33
    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateLayerType(Landroid/view/View;Z)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .line 182
    const v0, 0x102043a

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 183
    .local v1, "existing":Landroid/animation/ObjectAnimator;
    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 187
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_1
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 191
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 192
    sget-object v3, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    const-wide/16 v3, 0xd2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 194
    new-instance v3, Lcom/android/internal/widget/MessagingPropertyAnimator$3;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MessagingPropertyAnimator$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 201
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateLayerType(Landroid/view/View;Z)V

    .line 202
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 203
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 204
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "endAction"    # Ljava/lang/Runnable;

    .line 215
    const v0, 0x102043a

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 216
    .local v1, "existing":Landroid/animation/ObjectAnimator;
    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isHidingAnimated(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    .line 226
    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 228
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    sget-object v3, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    const-wide/16 v3, 0xd2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 230
    new-instance v3, Lcom/android/internal/widget/MessagingPropertyAnimator$4;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator$4;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    invoke-static {p0, v5}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateLayerType(Landroid/view/View;Z)V

    .line 241
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 242
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 243
    return-void

    .line 220
    .end local v2    # "animator":Landroid/animation/ObjectAnimator;
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 221
    if-eqz p1, :cond_3

    .line 222
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 224
    :cond_3
    return-void
.end method

.method public static getLayoutTop(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 90
    const v0, 0x102043c

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 91
    .local v0, "tag":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v1

    return v1

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getTop(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .line 121
    const v0, 0x102043e

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 122
    .local v0, "tag":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    return v1

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static isAnimatingAlpha(Landroid/view/View;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 255
    const v0, 0x102043a

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAnimatingTranslation(Landroid/view/View;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 251
    const v0, 0x102043d

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isFirstLayout(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 70
    const v0, 0x102043b

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 71
    .local v0, "tag":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 72
    const/4 v1, 0x1

    return v1

    .line 74
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static isHidingAnimated(Landroid/view/View;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 175
    instance-of v0, p0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v0, :cond_0

    .line 176
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->isHidingAnimated()Z

    move-result v0

    return v0

    .line 178
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$static$0(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020345

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static recycle(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 78
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setFirstLayout(Landroid/view/View;Z)V

    .line 79
    return-void
.end method

.method public static setClippingDeactivated(Landroid/view/View;Z)V
    .locals 1
    .param p0, "transformedView"    # Landroid/view/View;
    .param p1, "deactivated"    # Z

    .line 246
    sget-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    .line 248
    return-void
.end method

.method private static setFirstLayout(Landroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "first"    # Z

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x102043b

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method private static setLayoutTop(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "top"    # I

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x102043c

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method public static setToLaidOutPosition(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 259
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getLayoutTop(Landroid/view/View;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    .line 260
    return-void
.end method

.method private static setTop(Landroid/view/View;I)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x102043e

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 130
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateTopAndBottom(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method public static startLocalTranslationFrom(Landroid/view/View;ILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startTranslation"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 105
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getLayoutTop(Landroid/view/View;)I

    move-result v1

    invoke-static {p0, v0, v1, p2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    .line 106
    return-void
.end method

.method public static startLocalTranslationTo(Landroid/view/View;ILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "endTranslation"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 116
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    .line 117
    .local v0, "top":I
    add-int v1, v0, p1

    invoke-static {p0, v0, v1, p2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    .line 118
    return-void
.end method

.method private static startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 142
    const v0, 0x102043d

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 143
    .local v1, "existing":Landroid/animation/ObjectAnimator;
    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq p1, p2, :cond_2

    .line 147
    invoke-static {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isHidingAnimated(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    sget-object v2, Lcom/android/internal/widget/MessagingPropertyAnimator;->TOP:Landroid/util/IntProperty;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p2, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 152
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    .line 153
    invoke-virtual {v2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    const-wide/16 v5, 0xd2

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 155
    new-instance v3, Lcom/android/internal/widget/MessagingPropertyAnimator$2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MessagingPropertyAnimator$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 169
    invoke-static {p0, v4}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 170
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 171
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 172
    return-void

    .line 148
    .end local v2    # "animator":Landroid/animation/ObjectAnimator;
    :cond_2
    :goto_0
    invoke-static {p0, p2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    .line 149
    return-void
.end method

.method private static updateLayerType(Landroid/view/View;Z)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "animating"    # Z

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 212
    :cond_1
    :goto_0
    return-void
.end method

.method private static updateTopAndBottom(Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .line 134
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    .line 135
    .local v0, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 136
    .local v1, "height":I
    invoke-virtual {p0, v0}, Landroid/view/View;->setTop(I)V

    .line 137
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Landroid/view/View;->setBottom(I)V

    .line 138
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 60
    invoke-static {p1, p3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setLayoutTop(Landroid/view/View;I)V

    .line 61
    invoke-static {p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isFirstLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setFirstLayout(Landroid/view/View;Z)V

    .line 63
    invoke-static {p1, p3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    .line 64
    return-void

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0, p3, v1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    .line 67
    return-void
.end method
