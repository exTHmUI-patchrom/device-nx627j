.class public Landroid/view/RenderNodeAnimator;
.super Landroid/animation/Animator;
.source "RenderNodeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;,
        Landroid/view/RenderNodeAnimator$AnimationEndTask;
    }
.end annotation


# static fields
.field public static final ALPHA:I = 0xb

.field public static final LAST_VALUE:I = 0xb

.field public static final PAINT_ALPHA:I = 0x1

.field public static final PAINT_STROKE_WIDTH:I = 0x0

.field public static final ROTATION:I = 0x5

.field public static final ROTATION_X:I = 0x6

.field public static final ROTATION_Y:I = 0x7

.field public static final SCALE_X:I = 0x3

.field public static final SCALE_Y:I = 0x4

.field private static final STATE_DELAYED:I = 0x1

.field private static final STATE_FINISHED:I = 0x3

.field private static final STATE_PREPARE:I = 0x0

.field private static final STATE_RUNNING:I = 0x2

.field public static final TRANSLATION_X:I = 0x0

.field public static final TRANSLATION_Y:I = 0x1

.field public static final TRANSLATION_Z:I = 0x2

.field public static final X:I = 0x8

.field public static final Y:I = 0x9

.field public static final Z:I = 0xa

.field private static sAnimationHelper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;


# instance fields
.field private mFinalValue:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mRenderProperty:I

.field private mStartDelay:J

.field private mStartTime:J

.field private mState:I

.field private mTarget:Landroid/view/RenderNode;

.field private final mUiThreadHandlesDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field private mViewTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Landroid/view/RenderNodeAnimator$1;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/view/RenderNodeAnimator$1;-><init>(I)V

    sput-object v0, Landroid/view/RenderNodeAnimator;->sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;

    .line 461
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "finalValue"    # F

    .line 112
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 97
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 105
    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 113
    iput p1, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 114
    iput p2, p0, Landroid/view/RenderNodeAnimator;->mFinalValue:F

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 116
    invoke-static {p1, p2}, Landroid/view/RenderNodeAnimator;->nCreateAnimator(IF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 117
    return-void
.end method

.method public constructor <init>(IIFF)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .line 139
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 97
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 105
    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 140
    invoke-static {p1, p2, p3, p4}, Landroid/view/RenderNodeAnimator;->nCreateRevealAnimator(IIFF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;F)V
    .locals 3
    .param p2, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 119
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 97
    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 98
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 105
    iput-wide v1, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 120
    nop

    .line 121
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v1

    .line 120
    invoke-static {v1, v2, p2}, Landroid/view/RenderNodeAnimator;->nCreateCanvasPropertyFloatAnimator(JF)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 122
    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;IF)V
    .locals 3
    .param p2, "paintField"    # I
    .param p3, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;IF)V"
        }
    .end annotation

    .line 133
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 97
    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 98
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 105
    iput-wide v1, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 134
    nop

    .line 135
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v1

    .line 134
    invoke-static {v1, v2, p2, p3}, Landroid/view/RenderNodeAnimator;->nCreateCanvasPropertyPaintAnimator(JIF)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 136
    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 137
    return-void
.end method

.method static synthetic access$000(Landroid/view/RenderNodeAnimator;J)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/RenderNodeAnimator;
    .param p1, "x1"    # J

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->processDelayed(J)Z

    move-result v0

    return v0
.end method

.method private applyInterpolator()V
    .locals 4

    .line 163
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0}, Landroid/view/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    check-cast v0, Lcom/android/internal/view/animation/NativeInterpolatorFactory;

    invoke-interface {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactory;->createNativeInterpolator()J

    move-result-wide v0

    .local v0, "ni":J
    goto :goto_0

    .line 169
    .end local v0    # "ni":J
    :cond_1
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/RenderNodeAnimator;->nGetDuration(J)J

    move-result-wide v0

    .line 170
    .local v0, "duration":J
    iget-object v2, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v2, v0, v1}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    move-result-wide v0

    .line 172
    .local v0, "ni":J
    :goto_0
    iget-object v2, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Landroid/view/RenderNodeAnimator;->nSetInterpolator(JJ)V

    .line 173
    return-void

    .line 163
    .end local v0    # "ni":J
    :cond_2
    :goto_1
    return-void
.end method

.method private static callOnFinished(Landroid/view/RenderNodeAnimator;)V
    .locals 0
    .param p0, "animator"    # Landroid/view/RenderNodeAnimator;

    .line 517
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    .line 518
    return-void
.end method

.method private checkMutable()V
    .locals 2

    .line 149
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_0

    .line 156
    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator\'s target has been destroyed (trying to modify an animation after activity destroy?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator has already started, cannot change it now!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cloneListeners()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 429
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    .line 432
    :cond_0
    return-object v0
.end method

.method private doStart()V
    .locals 3

    .line 203
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 205
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, p0, Landroid/view/RenderNodeAnimator;->mFinalValue:F

    iput v1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 208
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->moveToRunningState()V

    .line 210
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 214
    :cond_1
    return-void
.end method

.method private static getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    .locals 2

    .line 453
    sget-object v0, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .line 454
    .local v0, "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    if-nez v0, :cond_0

    .line 455
    new-instance v1, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    invoke-direct {v1}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;-><init>()V

    move-object v0, v1

    .line 456
    sget-object v1, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 458
    :cond_0
    return-object v0
.end method

.method private init(J)V
    .locals 1
    .param p1, "ptr"    # J

    .line 145
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 146
    return-void
.end method

.method static isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z
    .locals 2
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/internal/view/animation/HasNativeInterpolator;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static mapViewPropertyToRenderProperty(I)I
    .locals 1
    .param p0, "viewProperty"    # I

    .line 109
    sget-object v0, Landroid/view/RenderNodeAnimator;->sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method private moveToRunningState()V
    .locals 2

    .line 217
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 218
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/RenderNodeAnimator;->nStart(J)V

    .line 221
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->notifyStartListeners()V

    .line 222
    return-void
.end method

.method private static native nCreateAnimator(IF)J
.end method

.method private static native nCreateCanvasPropertyFloatAnimator(JF)J
.end method

.method private static native nCreateCanvasPropertyPaintAnimator(JIF)J
.end method

.method private static native nCreateRevealAnimator(IIFF)J
.end method

.method private static native nEnd(J)V
.end method

.method private static native nGetDuration(J)J
.end method

.method private static native nSetAllowRunningAsync(JZ)V
.end method

.method private static native nSetDuration(JJ)V
.end method

.method private static native nSetInterpolator(JJ)V
.end method

.method private static native nSetListener(JLandroid/view/RenderNodeAnimator;)V
.end method

.method private static native nSetStartDelay(JJ)V
.end method

.method private static native nSetStartValue(JF)V
.end method

.method private static native nStart(J)V
.end method

.method private notifyStartListeners()V
    .locals 4

    .line 225
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 226
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 227
    .local v2, "numListeners":I
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 228
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 230
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private processDelayed(J)Z
    .locals 4
    .param p1, "frameTimeMs"    # J

    .line 443
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 444
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    goto :goto_0

    .line 445
    :cond_0
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 446
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    .line 447
    const/4 v0, 0x1

    return v0

    .line 449
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private releaseNativePtr()V
    .locals 1

    .line 420
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 424
    :cond_0
    return-void
.end method

.method private setTarget(Landroid/view/RenderNode;)V
    .locals 2
    .param p1, "node"    # Landroid/view/RenderNode;

    .line 291
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 292
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroid/view/RenderNodeAnimator;->nSetListener(JLandroid/view/RenderNodeAnimator;)V

    .line 296
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    .line 297
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->addAnimator(Landroid/view/RenderNodeAnimator;)V

    .line 298
    return-void

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 234
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 235
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 236
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 237
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->moveToRunningState()V

    .line 240
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 241
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 242
    .local v2, "numListeners":I
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 243
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 246
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->end()V

    .line 248
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "numListeners":I
    :cond_3
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .locals 2

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot clone this animator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 3

    .line 252
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 253
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 254
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 255
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    .line 257
    :cond_0
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/RenderNodeAnimator;->nEnd(J)V

    .line 259
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    .line 268
    :cond_2
    :goto_0
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 333
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 359
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getNativeAnimator()J
    .locals 2

    .line 436
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 317
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 4

    .line 338
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    iget-wide v2, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isRunning()Z
    .locals 3

    .line 343
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public isStarted()Z
    .locals 1

    .line 348
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFinished()V
    .locals 8

    .line 363
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-nez v0, :cond_0

    .line 366
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->releaseNativePtr()V

    .line 367
    return-void

    .line 369
    :cond_0
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 370
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 371
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->notifyStartListeners()V

    .line 373
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 375
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 376
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 382
    .local v3, "numListeners":I
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 383
    .local v1, "isUIThread":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 384
    nop

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 385
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 388
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Landroid/view/RenderNodeAnimator$AnimationEndTask;

    invoke-direct {v4, p0, v0}, Landroid/view/RenderNodeAnimator$AnimationEndTask;-><init>(Landroid/view/RenderNodeAnimator;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    :cond_5
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->releaseNativePtr()V

    .line 395
    return-void
.end method

.method public pause()V
    .locals 1

    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public resume()V
    .locals 1

    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 2
    .param p1, "mayRunAsync"    # Z

    .line 527
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 528
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/view/RenderNodeAnimator;->nSetAllowRunningAsync(JZ)V

    .line 529
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Landroid/view/RenderNodeAnimator;
    .locals 4
    .param p1, "duration"    # J

    .line 322
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 323
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 326
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 327
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    long-to-float v2, p1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetDuration(JJ)V

    .line 328
    return-object p0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration must be positive; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 353
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 354
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 355
    return-void
.end method

.method public setStartDelay(J)V
    .locals 3
    .param p1, "startDelay"    # J

    .line 307
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 308
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 311
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 312
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    long-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 313
    return-void

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDelay must be positive; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStartValue(F)V
    .locals 2
    .param p1, "startValue"    # F

    .line 301
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 302
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/view/RenderNodeAnimator;->nSetStartValue(JF)V

    .line 303
    return-void
.end method

.method public setTarget(Landroid/view/DisplayListCanvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .line 287
    iget-object v0, p1, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    invoke-direct {p0, v0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/RenderNode;)V

    .line 288
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 281
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    .line 282
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-direct {p0, v0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/RenderNode;)V

    .line 283
    return-void
.end method

.method public start()V
    .locals 4

    .line 177
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    if-eqz v0, :cond_4

    .line 181
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-nez v0, :cond_3

    .line 185
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 186
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->applyInterpolator()V

    .line 188
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->cancel()V

    goto :goto_1

    .line 191
    :cond_0
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->addDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    goto :goto_1

    .line 192
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetStartDelay(JJ)V

    .line 193
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    .line 197
    :goto_1
    return-void

    .line 182
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already started!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing target!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
