.class public Landroid/graphics/drawable/AnimatedImageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedImageDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedImageDrawable$State;
    }
.end annotation


# static fields
.field private static final FINISHED:I = -0x1

.field public static final LOOP_INFINITE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPEAT_INFINITE:I = -0x1

.field private static final REPEAT_UNDEFINED:I = -0x2


# instance fields
.field private mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Animatable2$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mHandler:Landroid/os/Handler;

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mStarting:Z

.field private mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 190
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedImageDrawable$State;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;JLjava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 192
    return-void
.end method

.method public constructor <init>(JLandroid/graphics/ImageDecoder;IIIILandroid/graphics/Rect;Ljava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V
    .locals 18
    .param p1, "nativeImageDecoder"    # J
    .param p3, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "srcDensity"    # I
    .param p7, "dstDensity"    # I
    .param p8, "cropRect"    # Landroid/graphics/Rect;
    .param p9, "inputStream"    # Ljava/io/InputStream;
    .param p10, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 295
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 487
    const/4 v0, 0x0

    iput-object v0, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 296
    move/from16 v0, p4

    invoke-static {v0, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v10

    .line 297
    .end local p4    # "width":I
    .local v10, "width":I
    invoke-static/range {p5 .. p7}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v11

    .line 299
    .end local p5    # "height":I
    .local v11, "height":I
    if-nez v9, :cond_0

    .line 300
    iput v10, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    .line 301
    iput v11, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    goto :goto_0

    .line 303
    :cond_0
    iget v0, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    iget v1, v9, Landroid/graphics/Rect;->top:I

    .line 304
    invoke-static {v1, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v1

    iget v2, v9, Landroid/graphics/Rect;->right:I

    .line 305
    invoke-static {v2, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v2

    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 306
    invoke-static {v3, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v3

    .line 303
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 307
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    .line 308
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    .line 311
    :goto_0
    new-instance v12, Landroid/graphics/drawable/AnimatedImageDrawable$State;

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move v3, v10

    move v4, v11

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedImageDrawable;->nCreate(JLandroid/graphics/ImageDecoder;IILandroid/graphics/Rect;)J

    move-result-wide v2

    move-object v0, v12

    move-object v1, v6

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedImageDrawable$State;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;JLjava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V

    iput-object v12, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 314
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nNativeByteSize(J)J

    move-result-wide v0

    .line 315
    .local v0, "nativeSize":J
    new-instance v2, Llibcore/util/NativeAllocationRegistry;

    const-class v3, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 316
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-static {}, Landroid/graphics/drawable/AnimatedImageDrawable;->nGetNativeFinalizer()J

    move-result-wide v14

    move-object v12, v2

    move-wide/from16 v16, v0

    invoke-direct/range {v12 .. v17}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    .line 317
    .local v2, "registry":Llibcore/util/NativeAllocationRegistry;
    iget-object v3, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v4, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v4, v4, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-virtual {v2, v3, v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 318
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 552
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    .line 555
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic lambda$postOnAnimationEnd$2(Landroid/graphics/drawable/AnimatedImageDrawable;)V
    .locals 2

    .line 545
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 546
    .local v1, "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 547
    .end local v1    # "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    goto :goto_0

    .line 548
    :cond_0
    return-void
.end method

.method public static synthetic lambda$postOnAnimationStart$1(Landroid/graphics/drawable/AnimatedImageDrawable;)V
    .locals 2

    .line 533
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 534
    .local v1, "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 535
    .end local v1    # "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    goto :goto_0

    .line 536
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateStateFromTypedArray$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 2
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 234
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageInfo;->isAnimated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image is not animated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nCreate(JLandroid/graphics/ImageDecoder;IILandroid/graphics/Rect;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nDraw(JJ)J
.end method

.method private static native nGetAlpha(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetNativeFinalizer()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetRepeatCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nIsRunning(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nNativeByteSize(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetAlpha(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetColorFilter(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetMirrored(JZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetOnAnimationEndListener(JLandroid/graphics/drawable/AnimatedImageDrawable;)V
.end method

.method private static native nSetRepeatCount(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nStart(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nStop(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private onAnimationEnd()V
    .locals 2

    .line 566
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 568
    .local v1, "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 569
    .end local v1    # "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    goto :goto_0

    .line 571
    :cond_0
    return-void
.end method

.method private postOnAnimationEnd()V
    .locals 2

    .line 540
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 541
    return-void

    .line 544
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$dGAkP-tKNvqn_qCWdrQRL806ExQ;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$dGAkP-tKNvqn_qCWdrQRL806ExQ;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 549
    return-void
.end method

.method private postOnAnimationStart()V
    .locals 2

    .line 528
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 529
    return-void

    .line 532
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$6aWLU8OYhdfACSejz5_iGirYxUk;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$6aWLU8OYhdfACSejz5_iGirYxUk;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 537
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;I)V
    .locals 13
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "srcDensityOverride"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 206
    .local v0, "oldState":Landroid/graphics/drawable/AnimatedImageDrawable$State;
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 207
    .local v1, "r":Landroid/content/res/Resources;
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 208
    .local v3, "srcResId":I
    const/4 v4, 0x1

    const/4 v5, -0x2

    if-eqz v3, :cond_5

    .line 210
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 211
    .local v6, "value":Landroid/util/TypedValue;
    invoke-virtual {v1, v3, p2, v6, v4}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 212
    const v7, 0xffff

    if-lez p2, :cond_1

    iget v8, v6, Landroid/util/TypedValue;->density:I

    if-lez v8, :cond_1

    iget v8, v6, Landroid/util/TypedValue;->density:I

    if-eq v8, v7, :cond_1

    .line 214
    iget v8, v6, Landroid/util/TypedValue;->density:I

    if-ne v8, p2, :cond_0

    .line 215
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v8, v6, Landroid/util/TypedValue;->density:I

    goto :goto_0

    .line 217
    :cond_0
    iget v8, v6, Landroid/util/TypedValue;->density:I

    .line 218
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v8, v9

    div-int/2addr v8, p2

    iput v8, v6, Landroid/util/TypedValue;->density:I

    .line 222
    :cond_1
    :goto_0
    const/4 v8, 0x0

    .line 223
    .local v8, "density":I
    iget v9, v6, Landroid/util/TypedValue;->density:I

    if-nez v9, :cond_2

    .line 224
    const/16 v8, 0xa0

    goto :goto_1

    .line 225
    :cond_2
    iget v9, v6, Landroid/util/TypedValue;->density:I

    if-eq v9, v7, :cond_3

    .line 226
    iget v8, v6, Landroid/util/TypedValue;->density:I

    .line 229
    :cond_3
    :goto_1
    const/4 v7, 0x0

    move-object v9, v7

    .line 231
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v1, v3, v6}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v10

    .line 232
    .local v10, "is":Ljava/io/InputStream;
    invoke-static {v1, v10, v8}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object v11

    .line 233
    .local v11, "source":Landroid/graphics/ImageDecoder$Source;
    sget-object v12, Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$Cgt3NliB7ZYUONyDd-eQGdYbEKc;->INSTANCE:Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$Cgt3NliB7ZYUONyDd-eQGdYbEKc;

    invoke-static {v11, v12}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v12

    .line 241
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "source":Landroid/graphics/ImageDecoder$Source;
    nop

    .line 243
    instance-of v10, v9, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v10, :cond_4

    .line 250
    iget-object v10, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v10, v10, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    .line 252
    .local v10, "repeatCount":I
    move-object v11, v9

    check-cast v11, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 253
    .local v11, "other":Landroid/graphics/drawable/AnimatedImageDrawable;
    iget-object v12, v11, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iput-object v12, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 254
    iput-object v7, v11, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 255
    iget v7, v11, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    iput v7, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    .line 256
    iget v7, v11, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    iput v7, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    .line 257
    if-eq v10, v5, :cond_5

    .line 258
    invoke-virtual {p0, v10}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    .end local v6    # "value":Landroid/util/TypedValue;
    .end local v8    # "density":I
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "repeatCount":I
    .end local v11    # "other":Landroid/graphics/drawable/AnimatedImageDrawable;
    goto :goto_2

    .line 244
    .restart local v6    # "value":Landroid/util/TypedValue;
    .restart local v8    # "density":I
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": <animated-image> did not decode animated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 238
    :catch_0
    move-exception v2

    .line 239
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": <animated-image> requires a valid \'src\' attribute"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 262
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "value":Landroid/util/TypedValue;
    .end local v8    # "density":I
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_2
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v7

    iput-object v7, v6, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    .line 263
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v6, v6, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    iget-object v6, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v6, v6, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v6, v6, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    aget v6, v6, v2

    if-eqz v6, :cond_6

    goto :goto_3

    .line 265
    :cond_6
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": <animated-image> requires a valid \'src\' attribute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_7
    :goto_3
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    const/4 v7, 0x3

    iget-boolean v10, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    invoke-virtual {p1, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    .line 272
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 274
    .local v4, "repeatCount":I
    if-eq v4, v5, :cond_8

    .line 275
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    .line 278
    :cond_8
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 280
    .local v2, "autoStart":Z
    if-eqz v2, :cond_9

    iget-object v5, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v5, v5, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    cmp-long v5, v5, v8

    if-eqz v5, :cond_9

    .line 281
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    .line 283
    :cond_9
    return-void
.end method


# virtual methods
.method public clearAnimationCallbacks()V
    .locals 3

    .line 521
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 523
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v1, v1, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v1, v2, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetOnAnimationEndListener(JLandroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 525
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 335
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 339
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mStarting:Z

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mStarting:Z

    .line 342
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->postOnAnimationStart()V

    .line 345
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Landroid/graphics/drawable/AnimatedImageDrawable;->nDraw(JJ)J

    move-result-wide v0

    .line 348
    .local v0, "nextUpdate":J
    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 349
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_1

    .line 350
    new-instance v2, Landroid/graphics/drawable/-$$Lambda$AlQeVq8Y-kfuQeb-JLZ0ueV4DE8;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/-$$Lambda$AlQeVq8Y-kfuQeb-JLZ0ueV4DE8;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    iput-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mRunnable:Ljava/lang/Runnable;

    .line 352
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {p0, v2, v3, v4}, Landroid/graphics/drawable/AnimatedImageDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 353
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 355
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->postOnAnimationEnd()V

    .line 357
    :cond_3
    :goto_0
    return-void

    .line 336
    .end local v0    # "nextUpdate":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called draw on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlpha()I
    .locals 4

    .line 376
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nGetAlpha(J)I

    move-result v0

    return v0

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called getAlpha on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 399
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 327
    iget v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 322
    iget v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getLoopCount(I)I
    .locals 1
    .param p1, "loopCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 404
    const/4 v0, -0x3

    return v0
.end method

.method public getRepeatCount()I
    .locals 4

    .line 169
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v1, v1, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/drawable/AnimatedImageDrawable;->nGetRepeatCount(J)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    .line 176
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    return v0

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called getRepeatCount on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 199
    sget-object v0, Lcom/android/internal/R$styleable;->AnimatedImageDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 200
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mSrcDensityOverride:I

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;I)V

    .line 201
    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    .line 431
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-boolean v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    return v0
.end method

.method public isRunning()Z
    .locals 4

    .line 443
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nIsRunning(J)Z

    move-result v0

    return v0

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called isRunning on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 6
    .param p1, "layoutDirection"    # I

    .line 420
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-boolean v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v2, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move v1, v0

    nop

    .line 425
    .local v1, "mirror":Z
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v2, v2, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v2, v3, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetMirrored(JZ)V

    .line 426
    return v0

    .line 421
    .end local v1    # "mirror":Z
    :cond_2
    :goto_0
    return v1
.end method

.method public registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 491
    if-nez p1, :cond_0

    .line 492
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 497
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetOnAnimationEndListener(JLandroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 500
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 501
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_2
    return-void
.end method

.method public setAlpha(I)V
    .locals 4
    .param p1, "alpha"    # I

    .line 361
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    .line 366
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetAlpha(JI)V

    .line 371
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    .line 372
    return-void

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called setAlpha on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alpha must be between 0 and 255! provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutoMirrored(Z)V
    .locals 4
    .param p1, "mirrored"    # Z

    .line 409
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-boolean v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    if-eq v0, p1, :cond_0

    .line 410
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iput-boolean p1, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    .line 411
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetMirrored(JZ)V

    .line 413
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    .line 416
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 384
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_1

    .line 389
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 390
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    .line 391
    .local v0, "nativeFilter":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v2, v2, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetColorFilter(JJ)V

    .line 392
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    .line 394
    .end local v0    # "nativeFilter":J
    :cond_1
    return-void

    .line 385
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called setColorFilter on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLoopCount(I)V
    .locals 0
    .param p1, "loopCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    .line 156
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 4
    .param p1, "repeatCount"    # I

    .line 138
    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    .line 142
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    if-eq v0, p1, :cond_0

    .line 143
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iput p1, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    .line 144
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetRepeatCount(JI)V

    .line 148
    :cond_0
    return-void

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value passed to setRepeatCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 4

    .line 460
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nStart(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mStarting:Z

    .line 466
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    .line 468
    :cond_0
    return-void

    .line 461
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called start on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 4

    .line 478
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nStop(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->postOnAnimationEnd()V

    .line 484
    :cond_0
    return-void

    .line 479
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called stop on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 507
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 508
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->clearAnimationCallbacks()V

    .line 516
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 509
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
