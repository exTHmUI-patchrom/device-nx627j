.class public Lcom/android/internal/widget/PointerLocationView;
.super Landroid/view/View;
.source "PointerLocationView.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;,
        Lcom/android/internal/widget/PointerLocationView$PointerState;
    }
.end annotation


# static fields
.field private static final ALT_STRATEGY_PROPERY_KEY:Ljava/lang/String; = "debug.velocitytracker.alt"

.field private static final TAG:Ljava/lang/String; = "Pointer"


# instance fields
.field private final ESTIMATE_FUTURE_POINTS:I

.field private final ESTIMATE_INTERVAL:F

.field private final ESTIMATE_PAST_POINTS:I

.field private mActivePointerId:I

.field private final mAltVelocity:Landroid/view/VelocityTracker;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private final mCurrentPointPaint:Landroid/graphics/Paint;

.field private mHeaderBottom:I

.field private final mIm:Landroid/hardware/input/InputManager;

.field private mMaxNumPointers:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/PointerLocationView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintCoords:Z

.field private mReusableOvalRect:Landroid/graphics/RectF;

.field private final mTargetPaint:Landroid/graphics/Paint;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

.field private final mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final mTextLevelPaint:Landroid/graphics/Paint;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private final mVelocity:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;

    .line 138
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 107
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_PAST_POINTS:I

    .line 108
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_FUTURE_POINTS:I

    .line 109
    const v0, 0x3ca3d70a    # 0.02f

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_INTERVAL:F

    .line 121
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 133
    new-instance v0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-direct {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 209
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PointerLocationView;->setFocusableInTouchMode(Z)V

    .line 141
    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    .line 143
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    .line 144
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 145
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v2

    .line 146
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 148
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 149
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 150
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/16 v4, 0x80

    invoke-virtual {v1, v4, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 152
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 153
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    const/16 v4, 0xc0

    invoke-virtual {v1, v4, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 155
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 156
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 158
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    .line 161
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 165
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 166
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    .line 169
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v1, 0x60

    invoke-virtual {v0, v2, v3, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    new-instance v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 175
    .local v0, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iput v3, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 178
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    .line 180
    const-string v1, "debug.velocitytracker.alt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "altStrategy":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const-string v2, "Pointer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Comparing default velocity tracker strategy with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {v1}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 185
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    .line 187
    :goto_0
    return-void
.end method

.method private drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "major"    # F
    .param p5, "minor"    # F
    .param p6, "angle"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 213
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p6

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p5, v1

    sub-float v2, p2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v2, p5, v1

    add-float/2addr v2, p2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v2, p4, v1

    sub-float v2, p3, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v1

    add-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 218
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 220
    return-void
.end method

.method private logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V
    .locals 18
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "index"    # I
    .param p4, "coords"    # Landroid/view/MotionEvent$PointerCoords;
    .param p5, "id"    # I
    .param p6, "event"    # Landroid/view/MotionEvent;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    .line 444
    move-object/from16 v3, p6

    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    .line 445
    .local v4, "toolType":I
    invoke-virtual/range {p6 .. p6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    .line 447
    .local v5, "buttonState":I
    and-int/lit16 v6, v0, 0xff

    const v7, 0xff00

    packed-switch v6, :pswitch_data_0

    .line 492
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 486
    :pswitch_0
    const-string v6, "HOVER EXIT"

    .line 487
    .local v6, "prefix":Ljava/lang/String;
    goto :goto_1

    .line 483
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_1
    const-string v6, "HOVER ENTER"

    .line 484
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_1

    .line 489
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_2
    const-string v6, "SCROLL"

    .line 490
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_1

    .line 480
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_3
    const-string v6, "HOVER MOVE"

    .line 481
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_1

    .line 472
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_4
    and-int v6, v0, v7

    shr-int/lit8 v6, v6, 0x8

    if-ne v1, v6, :cond_0

    .line 474
    const-string v6, "UP"

    goto :goto_0

    .line 476
    :cond_0
    const-string v6, "MOVE"

    .line 478
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_1

    .line 464
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_5
    and-int v6, v0, v7

    shr-int/lit8 v6, v6, 0x8

    if-ne v1, v6, :cond_1

    .line 466
    const-string v6, "DOWN"

    .restart local v6    # "prefix":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 468
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_1
    const-string v6, "MOVE"

    .line 470
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_1

    .line 461
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_6
    const-string v6, "OUTSIDE"

    .line 462
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_1

    .line 458
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_7
    const-string v6, "CANCEL"

    .line 459
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_1

    .line 455
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_8
    const-string v6, "MOVE"

    .line 456
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_1

    .line 452
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_9
    const-string v6, "UP"

    .line 453
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_1

    .line 449
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_a
    const-string v6, "DOWN"

    .line 450
    .restart local v6    # "prefix":Ljava/lang/String;
    nop

    .line 492
    :goto_1
    nop

    .line 496
    const-string v7, "Pointer"

    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v9}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    .line 497
    move-object/from16 v10, p1

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v11, " id "

    invoke-virtual {v9, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    add-int/lit8 v12, p5, 0x1

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ": "

    .line 498
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    .line 499
    invoke-virtual {v9, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " ("

    .line 500
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v13, 0x3

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ", "

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ") Pressure="

    .line 501
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " Size="

    .line 502
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " TouchMajor="

    .line 503
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " TouchMinor="

    .line 504
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " ToolMajor="

    .line 505
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " ToolMinor="

    .line 506
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " Orientation="

    .line 507
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/high16 v14, 0x43340000    # 180.0f

    mul-float/2addr v12, v14

    float-to-double v13, v12

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v13, v15

    double-to-float v12, v13

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, "deg"

    .line 508
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " Tilt="

    .line 509
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0x19

    .line 510
    invoke-virtual {v2, v12}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v12

    const/high16 v14, 0x43340000    # 180.0f

    mul-float/2addr v12, v14

    float-to-double v13, v12

    div-double/2addr v13, v15

    double-to-float v12, v13

    .line 509
    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, "deg"

    .line 511
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " Distance="

    .line 512
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0x18

    invoke-virtual {v2, v12}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v12

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " VScroll="

    .line 513
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0x9

    invoke-virtual {v2, v12}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v12

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " HScroll="

    .line 514
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0xa

    invoke-virtual {v2, v12}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v12

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " BoundingBox=[("

    .line 515
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0x20

    .line 516
    invoke-virtual {v3, v12}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    const/4 v13, 0x3

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ", "

    .line 517
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0x21

    invoke-virtual {v3, v12}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ")"

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ", ("

    .line 518
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0x22

    invoke-virtual {v3, v12}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ", "

    .line 519
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0x23

    invoke-virtual {v3, v12}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ")]"

    .line 520
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " ToolType="

    .line 521
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " ButtonState="

    .line 522
    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    invoke-static {v5}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    .line 523
    invoke-virtual {v9}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 496
    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private logInputDeviceState(ILjava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # I
    .param p2, "state"    # Ljava/lang/String;

    .line 783
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 784
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    .line 785
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 787
    :cond_0
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :goto_0
    return-void
.end method

.method private logInputDevices()V
    .locals 4

    .line 776
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 777
    .local v0, "deviceIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 778
    aget v2, v0, v1

    const-string v3, "Device Enumerated"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 777
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 780
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 16
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v7, p0

    .line 425
    move-object/from16 v8, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 426
    .local v9, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 427
    .local v10, "N":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 428
    .local v11, "NI":I
    const/4 v12, 0x0

    move v0, v12

    .local v0, "historyPos":I
    :goto_0
    move v13, v0

    .end local v0    # "historyPos":I
    .local v13, "historyPos":I
    if-ge v13, v10, :cond_1

    .line 429
    move v0, v12

    .local v0, "i":I
    :goto_1
    move v14, v0

    .end local v0    # "i":I
    .local v14, "i":I
    if-ge v14, v11, :cond_0

    .line 430
    invoke-virtual {v8, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 431
    .local v15, "id":I
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v8, v14, v13, v0}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 432
    iget-object v4, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v0, v7

    move-object/from16 v1, p1

    move v2, v9

    move v3, v14

    move v5, v15

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 429
    .end local v15    # "id":I
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 428
    .end local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "historyPos":I
    .local v0, "historyPos":I
    goto :goto_0

    .line 435
    .end local v0    # "historyPos":I
    :cond_1
    nop

    .local v12, "i":I
    :goto_2
    if-ge v12, v11, :cond_2

    .line 436
    invoke-virtual {v8, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    .line 437
    .local v13, "id":I
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v8, v12, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 438
    iget-object v4, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v0, v7

    move-object/from16 v1, p1

    move v2, v9

    move v3, v12

    move v5, v13

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 435
    .end local v13    # "id":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 440
    .end local v12    # "i":I
    :cond_2
    return-void
.end method

.method private static shouldLogKey(I)Z
    .locals 2
    .param p0, "keyCode"    # I

    .line 726
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 734
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 735
    invoke-static {p0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 732
    :pswitch_0
    return v0

    .line 735
    :cond_0
    const/4 v0, 0x0

    nop

    .line 734
    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 747
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 749
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 750
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->logInputDevices()V

    .line 751
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 755
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 757
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 758
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v8, p0

    .line 224
    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v10

    .line 225
    .local v10, "w":I
    div-int/lit8 v11, v10, 0x7

    .line 226
    .local v11, "itemW":I
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    const/4 v6, 0x1

    add-int/lit8 v12, v0, 0x1

    .line 227
    .local v12, "base":I
    iget v13, v8, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 229
    .local v13, "bottom":I
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 232
    .local v14, "NP":I
    iget v0, v8, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    const/4 v15, 0x0

    if-ltz v0, :cond_5

    .line 233
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    iget v1, v8, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 235
    .local v5, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v1, 0x0

    const/4 v2, 0x0

    add-int/lit8 v0, v11, -0x1

    int-to-float v3, v0

    int-to-float v4, v13

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object v0, v9

    move-object v7, v5

    move-object/from16 v5, v16

    .end local v5    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .local v7, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "P: "

    .line 237
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, " / "

    .line 238
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v12

    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 236
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v9, v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 241
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v16

    .line 242
    .local v16, "N":I
    iget-boolean v0, v8, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v0, :cond_0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez v16, :cond_2

    .line 243
    :cond_1
    int-to-float v1, v11

    const/4 v2, 0x0

    mul-int/lit8 v0, v11, 0x2

    sub-int/2addr v0, v6

    int-to-float v3, v0

    int-to-float v4, v13

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object v0, v9

    move/from16 v19, v5

    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 244
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "X: "

    .line 245
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int v1, v6, v11

    int-to-float v1, v1

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 244
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 247
    mul-int/lit8 v0, v11, 0x2

    int-to-float v1, v0

    const/4 v2, 0x0

    mul-int/lit8 v0, v11, 0x3

    sub-int/2addr v0, v6

    int-to-float v3, v0

    int-to-float v4, v13

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 248
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "Y: "

    .line 249
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v11, 0x2

    add-int/2addr v1, v6

    int-to-float v1, v1

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 248
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 252
    :cond_2
    move/from16 v19, v5

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v0

    add-int/lit8 v1, v16, -0x1

    aget v0, v0, v1

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v1

    aget v1, v1, v15

    sub-float v5, v0, v1

    .line 253
    .local v5, "dx":F
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v0

    add-int/lit8 v1, v16, -0x1

    aget v0, v0, v1

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v1

    aget v1, v1, v15

    sub-float v4, v0, v1

    .line 254
    .local v4, "dy":F
    int-to-float v1, v11

    const/4 v2, 0x0

    mul-int/lit8 v0, v11, 0x2

    sub-int/2addr v0, v6

    int-to-float v3, v0

    int-to-float v0, v13

    .line 255
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v18

    iget-object v15, v8, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v15}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v15

    int-to-float v15, v15

    cmpg-float v15, v18, v15

    if-gez v15, :cond_3

    .line 256
    iget-object v15, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_3
    iget-object v15, v8, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 254
    :goto_0
    move/from16 v18, v0

    move-object v0, v9

    move/from16 v21, v4

    move/from16 v4, v18

    .end local v4    # "dy":F
    .local v21, "dy":F
    move v6, v5

    move-object v5, v15

    .end local v5    # "dx":F
    .local v6, "dx":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 257
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "dX: "

    .line 258
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int v2, v1, v11

    int-to-float v1, v2

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 257
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 260
    mul-int/lit8 v0, v11, 0x2

    int-to-float v1, v0

    const/4 v2, 0x0

    mul-int/lit8 v0, v11, 0x3

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v13

    .line 261
    move/from16 v15, v21

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .end local v21    # "dy":F
    .local v15, "dy":F
    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_4

    .line 262
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 260
    :goto_1
    move-object v5, v0

    goto :goto_2

    .line 262
    :cond_4
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    goto :goto_1

    .line 260
    :goto_2
    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 263
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "dY: "

    .line 264
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v2, v11, 0x2

    add-int/2addr v2, v1

    int-to-float v1, v2

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 263
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 268
    .end local v6    # "dx":F
    .end local v15    # "dy":F
    :goto_3
    mul-int/lit8 v0, v11, 0x3

    int-to-float v1, v0

    const/4 v2, 0x0

    mul-int/lit8 v0, v11, 0x4

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v13

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 269
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "Xv: "

    .line 270
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v1

    const/4 v6, 0x3

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v11, 0x3

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 269
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 273
    mul-int/lit8 v0, v11, 0x4

    int-to-float v1, v0

    const/4 v2, 0x0

    mul-int/lit8 v0, v11, 0x5

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v13

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 274
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "Yv: "

    .line 275
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v11, 0x4

    const/4 v2, 0x1

    add-int v6, v2, v1

    int-to-float v1, v6

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 274
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 278
    mul-int/lit8 v0, v11, 0x5

    int-to-float v1, v0

    const/4 v2, 0x0

    mul-int/lit8 v0, v11, 0x6

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v13

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 279
    mul-int/lit8 v0, v11, 0x5

    int-to-float v1, v0

    mul-int/lit8 v0, v11, 0x5

    int-to-float v0, v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    int-to-float v4, v11

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    sub-float v3, v0, v19

    int-to-float v4, v13

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 281
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "Prs: "

    .line 282
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v11, 0x5

    const/4 v2, 0x1

    add-int v6, v2, v1

    int-to-float v1, v6

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 281
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 285
    mul-int/lit8 v0, v11, 0x6

    int-to-float v1, v0

    const/4 v2, 0x0

    int-to-float v3, v10

    int-to-float v4, v13

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 286
    mul-int/lit8 v0, v11, 0x6

    int-to-float v1, v0

    mul-int/lit8 v0, v11, 0x6

    int-to-float v0, v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    int-to-float v4, v11

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    sub-float v3, v0, v19

    int-to-float v4, v13

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 288
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "Size: "

    .line 289
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v11, 0x6

    const/4 v2, 0x1

    add-int v6, v2, v1

    int-to-float v1, v6

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 288
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 294
    .end local v7    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v16    # "N":I
    :cond_5
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_4
    move v15, v0

    .end local v0    # "p":I
    .local v15, "p":I
    if-ge v15, v14, :cond_12

    .line 295
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 298
    .restart local v7    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v6

    .line 299
    .local v6, "N":I
    const/4 v0, 0x0

    .local v0, "lastX":F
    const/4 v1, 0x0

    .line 300
    .local v1, "lastY":F
    const/4 v2, 0x0

    .line 301
    .local v2, "haveLast":Z
    const/4 v3, 0x0

    .line 302
    .local v3, "drawn":Z
    iget-object v4, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0x80

    move/from16 v23, v10

    const/16 v10, 0xff

    .end local v10    # "w":I
    .local v23, "w":I
    invoke-virtual {v4, v10, v5, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 303
    move v4, v0

    move/from16 v18, v2

    move/from16 v16, v3

    const/4 v0, 0x0

    move v3, v1

    .end local v1    # "lastY":F
    .end local v2    # "haveLast":Z
    .local v0, "i":I
    .local v3, "lastY":F
    .local v4, "lastX":F
    .local v16, "drawn":Z
    .local v18, "haveLast":Z
    :goto_5
    move v2, v0

    .end local v0    # "i":I
    .local v2, "i":I
    if-ge v2, v6, :cond_9

    .line 304
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v0

    aget v1, v0, v2

    .line 305
    .local v1, "x":F
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v0

    aget v19, v0, v2

    .line 306
    .local v19, "y":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 307
    const/4 v0, 0x0

    .line 308
    .end local v18    # "haveLast":Z
    .local v0, "haveLast":Z
    nop

    .line 303
    move/from16 v18, v0

    move/from16 v24, v2

    move/from16 v25, v11

    move/from16 v26, v12

    move v12, v5

    goto :goto_8

    .line 310
    .end local v0    # "haveLast":Z
    .restart local v18    # "haveLast":Z
    :cond_6
    if-eqz v18, :cond_8

    .line 311
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object v0, v9

    move/from16 v22, v1

    move v1, v4

    .end local v1    # "x":F
    .local v22, "x":F
    move/from16 v24, v2

    move v2, v3

    .end local v2    # "i":I
    .local v24, "i":I
    move v10, v3

    move/from16 v3, v22

    .end local v3    # "lastY":F
    .local v10, "lastY":F
    move/from16 v25, v11

    move v11, v4

    move/from16 v4, v19

    .end local v4    # "lastX":F
    .local v11, "lastX":F
    .local v25, "itemW":I
    move/from16 v26, v12

    move v12, v5

    move-object/from16 v5, v21

    .end local v12    # "base":I
    .local v26, "base":I
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 312
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$700(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z

    move-result-object v0

    aget-boolean v0, v0, v24

    if-eqz v0, :cond_7

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    goto :goto_6

    :cond_7
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 313
    .local v0, "paint":Landroid/graphics/Paint;
    :goto_6
    invoke-virtual {v9, v11, v10, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 314
    const/16 v16, 0x1

    .end local v0    # "paint":Landroid/graphics/Paint;
    goto :goto_7

    .line 316
    .end local v10    # "lastY":F
    .end local v22    # "x":F
    .end local v24    # "i":I
    .end local v25    # "itemW":I
    .end local v26    # "base":I
    .restart local v1    # "x":F
    .restart local v2    # "i":I
    .restart local v3    # "lastY":F
    .restart local v4    # "lastX":F
    .local v11, "itemW":I
    .restart local v12    # "base":I
    :cond_8
    move/from16 v22, v1

    move/from16 v24, v2

    move v10, v3

    move/from16 v25, v11

    move/from16 v26, v12

    move v11, v4

    move v12, v5

    .end local v1    # "x":F
    .end local v2    # "i":I
    .end local v3    # "lastY":F
    .end local v4    # "lastX":F
    .end local v12    # "base":I
    .restart local v10    # "lastY":F
    .local v11, "lastX":F
    .restart local v22    # "x":F
    .restart local v24    # "i":I
    .restart local v25    # "itemW":I
    .restart local v26    # "base":I
    :goto_7
    move/from16 v4, v22

    .line 317
    .end local v11    # "lastX":F
    .restart local v4    # "lastX":F
    move/from16 v3, v19

    .line 318
    .end local v10    # "lastY":F
    .restart local v3    # "lastY":F
    const/4 v0, 0x1

    .line 303
    .end local v18    # "haveLast":Z
    .end local v19    # "y":F
    .end local v22    # "x":F
    .local v0, "haveLast":Z
    move/from16 v18, v0

    .end local v0    # "haveLast":Z
    .restart local v18    # "haveLast":Z
    :goto_8
    add-int/lit8 v0, v24, 0x1

    .end local v24    # "i":I
    .local v0, "i":I
    move v5, v12

    move/from16 v11, v25

    move/from16 v12, v26

    const/16 v10, 0xff

    goto :goto_5

    .line 321
    .end local v0    # "i":I
    .end local v25    # "itemW":I
    .end local v26    # "base":I
    .local v11, "itemW":I
    .restart local v12    # "base":I
    :cond_9
    move v10, v3

    move/from16 v25, v11

    move/from16 v26, v12

    move v11, v4

    move v12, v5

    .end local v3    # "lastY":F
    .end local v4    # "lastX":F
    .end local v12    # "base":I
    .restart local v10    # "lastY":F
    .local v11, "lastX":F
    .restart local v25    # "itemW":I
    .restart local v26    # "base":I
    if-eqz v16, :cond_c

    .line 323
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v12, v1, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 324
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v0

    const v5, -0x425c28f6    # -0.08f

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v0

    .line 325
    .local v0, "lx":F
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v1

    .line 326
    .local v1, "ly":F
    const/16 v19, -0x3

    move/from16 v21, v0

    move/from16 v22, v1

    move/from16 v0, v19

    .end local v1    # "ly":F
    .local v0, "i":I
    .local v21, "lx":F
    .local v22, "ly":F
    :goto_9
    move v4, v0

    .end local v0    # "i":I
    .local v4, "i":I
    const v24, 0x3ca3d70a    # 0.02f

    const/4 v0, 0x2

    if-gt v4, v0, :cond_a

    .line 327
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v0

    int-to-float v1, v4

    mul-float v1, v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v27

    .line 328
    .local v27, "x":F
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v0

    int-to-float v1, v4

    mul-float v1, v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v24

    .line 329
    .local v24, "y":F
    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v9

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v28, v3

    move/from16 v3, v27

    move/from16 v29, v4

    move/from16 v4, v24

    .end local v4    # "i":I
    .local v29, "i":I
    move-object/from16 v5, v28

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 330
    move/from16 v21, v27

    .line 331
    move/from16 v22, v24

    .line 326
    .end local v24    # "y":F
    .end local v27    # "x":F
    add-int/lit8 v0, v29, 0x1

    .end local v29    # "i":I
    .restart local v0    # "i":I
    const v5, -0x425c28f6    # -0.08f

    goto :goto_9

    .line 335
    .end local v0    # "i":I
    :cond_a
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0x40

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v1, v5, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 336
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v0

    const/high16 v27, 0x41800000    # 16.0f

    mul-float v28, v0, v27

    .line 337
    .local v28, "xVel":F
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v0

    mul-float v29, v0, v27

    .line 338
    .local v29, "yVel":F
    add-float v3, v11, v28

    add-float v4, v10, v29

    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v9

    move v1, v11

    move-object/from16 v31, v2

    move v2, v10

    move-object/from16 v5, v31

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 341
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 342
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1, v12, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 343
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v0

    const v1, -0x425c28f6    # -0.08f

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v0

    .line 344
    .end local v21    # "lx":F
    .local v0, "lx":F
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v1

    .line 345
    .end local v22    # "ly":F
    .restart local v1    # "ly":F
    move/from16 v21, v0

    move/from16 v22, v1

    .end local v0    # "lx":F
    .end local v1    # "ly":F
    .local v19, "i":I
    .restart local v21    # "lx":F
    .restart local v22    # "ly":F
    :goto_a
    move/from16 v5, v19

    .end local v19    # "i":I
    .local v5, "i":I
    const/4 v4, 0x2

    if-gt v5, v4, :cond_b

    .line 346
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v0

    int-to-float v1, v5

    mul-float v1, v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v17

    .line 347
    .local v17, "x":F
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v0

    int-to-float v1, v5

    mul-float v1, v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v19

    .line 348
    .local v19, "y":F
    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v9

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v30, v3

    move/from16 v3, v17

    move/from16 v31, v4

    move/from16 v4, v19

    move/from16 v32, v5

    move-object/from16 v5, v30

    .end local v5    # "i":I
    .local v32, "i":I
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 349
    move/from16 v21, v17

    .line 350
    move/from16 v22, v19

    .line 345
    .end local v17    # "x":F
    .end local v19    # "y":F
    add-int/lit8 v19, v32, 0x1

    .end local v32    # "i":I
    .local v19, "i":I
    goto :goto_a

    .line 353
    .end local v19    # "i":I
    :cond_b
    move/from16 v31, v4

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2, v1, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 354
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1000(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v0

    mul-float v17, v0, v27

    .line 355
    .end local v28    # "xVel":F
    .local v17, "xVel":F
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1100(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v0

    mul-float v19, v0, v27

    .line 356
    .end local v29    # "yVel":F
    .local v19, "yVel":F
    add-float v3, v11, v17

    add-float v4, v10, v19

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v9

    move v1, v11

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .end local v17    # "xVel":F
    .end local v19    # "yVel":F
    .end local v21    # "lx":F
    .end local v22    # "ly":F
    goto :goto_b

    .line 360
    :cond_c
    const/16 v31, 0x2

    :goto_b
    iget-boolean v0, v8, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v0, :cond_10

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 362
    const/4 v1, 0x0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 363
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v2, 0x0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 366
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 367
    .local v5, "pressureLevel":I
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    rsub-int v2, v5, 0xff

    invoke-virtual {v0, v1, v5, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 368
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 371
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    rsub-int v2, v5, 0xff

    invoke-virtual {v0, v1, v5, v2, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 372
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 373
    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iget-object v12, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 372
    move/from16 v17, v0

    move-object v0, v8

    move/from16 v19, v1

    move-object v1, v9

    move/from16 v33, v10

    move v10, v5

    move/from16 v5, v19

    .end local v5    # "pressureLevel":I
    .local v10, "pressureLevel":I
    .local v33, "lastY":F
    move/from16 v19, v6

    move/from16 v6, v17

    .end local v6    # "N":I
    .local v19, "N":I
    move/from16 v34, v11

    move/from16 v35, v13

    move/from16 v13, v31

    move-object v11, v7

    move-object v7, v12

    .end local v7    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v13    # "bottom":I
    .local v11, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .local v34, "lastX":F
    .local v35, "bottom":I
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 376
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    rsub-int v2, v10, 0xff

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v10, v3, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 377
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 378
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v5, v0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v6, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iget-object v7, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 377
    move-object v0, v8

    move-object v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 381
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    .line 382
    .local v0, "arrowSize":F
    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_d

    .line 383
    const/high16 v0, 0x41a00000    # 20.0f

    .line 385
    .end local v0    # "arrowSize":F
    .local v6, "arrowSize":F
    :cond_d
    move v6, v0

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v10, v1, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 386
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v2, v6

    mul-double/2addr v0, v2

    double-to-float v12, v0

    .line 388
    .local v12, "orientationVectorX":F
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    float-to-double v2, v6

    mul-double/2addr v0, v2

    double-to-float v5, v0

    .line 390
    .local v5, "orientationVectorY":F
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1200(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v0

    if-eq v0, v13, :cond_f

    .line 391
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1200(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 393
    move/from16 v20, v5

    goto :goto_c

    .line 399
    :cond_e
    nop

    .line 400
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v1, v0, v12

    .line 401
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v2, v0, v5

    .line 402
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v3, v0, v12

    .line 403
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v4, v0, v5

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 399
    move-object/from16 v17, v0

    move-object v0, v9

    move/from16 v20, v5

    move-object/from16 v5, v17

    .end local v5    # "orientationVectorY":F
    .local v20, "orientationVectorY":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_d

    .line 393
    .end local v20    # "orientationVectorY":F
    .restart local v5    # "orientationVectorY":F
    :cond_f
    move/from16 v20, v5

    .end local v5    # "orientationVectorY":F
    .restart local v20    # "orientationVectorY":F
    :goto_c
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 394
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v3, v0, v12

    .line 395
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v4, v0, v20

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 393
    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 408
    :goto_d
    nop

    .line 409
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v0

    float-to-double v0, v0

    .line 408
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v5, v0

    .line 410
    .local v5, "tiltScale":F
    nop

    .line 411
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v1, v12, v5

    add-float/2addr v0, v1

    .line 412
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v2, v20, v5

    add-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 410
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 416
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1300(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 417
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1400(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v1

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    .line 418
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1700(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v4

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 417
    move-object/from16 v17, v0

    move-object v0, v9

    move/from16 v21, v5

    move-object/from16 v5, v17

    .end local v5    # "tiltScale":F
    .local v21, "tiltScale":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .end local v6    # "arrowSize":F
    .end local v10    # "pressureLevel":I
    .end local v11    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v12    # "orientationVectorX":F
    .end local v16    # "drawn":Z
    .end local v18    # "haveLast":Z
    .end local v19    # "N":I
    .end local v20    # "orientationVectorY":F
    .end local v21    # "tiltScale":F
    .end local v33    # "lastY":F
    .end local v34    # "lastX":F
    goto :goto_e

    .line 294
    .end local v35    # "bottom":I
    .restart local v13    # "bottom":I
    :cond_10
    move/from16 v35, v13

    move/from16 v13, v31

    const/4 v7, 0x0

    .end local v13    # "bottom":I
    .restart local v35    # "bottom":I
    :cond_11
    :goto_e
    add-int/lit8 v0, v15, 0x1

    .end local v15    # "p":I
    .local v0, "p":I
    move/from16 v10, v23

    move/from16 v11, v25

    move/from16 v12, v26

    move/from16 v13, v35

    goto/16 :goto_4

    .line 422
    .end local v0    # "p":I
    .end local v23    # "w":I
    .end local v25    # "itemW":I
    .end local v26    # "base":I
    .end local v35    # "bottom":I
    .local v10, "w":I
    .local v11, "itemW":I
    .local v12, "base":I
    .restart local v13    # "bottom":I
    :cond_12
    move/from16 v23, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v35, v13

    .end local v10    # "w":I
    .end local v11    # "itemW":I
    .end local v12    # "base":I
    .end local v13    # "bottom":I
    .restart local v23    # "w":I
    .restart local v25    # "itemW":I
    .restart local v26    # "base":I
    .restart local v35    # "bottom":I
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 690
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 691
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 692
    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 693
    const-string v1, "Joystick"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 694
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 695
    const-string v1, "Position"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 697
    :cond_2
    const-string v1, "Generic"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 699
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onInputDeviceAdded(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 762
    const-string v0, "Device Added"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 763
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 767
    const-string v0, "Device Changed"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 768
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 772
    const-string v0, "Device Removed"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 773
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 704
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 706
    .local v0, "repeatCount":I
    if-nez v0, :cond_0

    .line 707
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Down: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 709
    :cond_0
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Repeat #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 713
    .end local v0    # "repeatCount":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 718
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    const-string v0, "Pointer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key Up: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v0, 0x1

    return v0

    .line 722
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 195
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 205
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v7, p0

    .line 528
    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 529
    .local v9, "action":I
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 531
    .local v0, "NP":I
    const/16 v10, 0x20

    const v11, 0xff00

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v9, :cond_1

    and-int/lit16 v1, v9, 0xff

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 580
    .end local v0    # "NP":I
    .local v14, "NP":I
    :cond_0
    :goto_0
    move v14, v0

    goto/16 :goto_5

    .line 533
    .end local v14    # "NP":I
    .restart local v0    # "NP":I
    :cond_1
    :goto_1
    and-int v1, v9, v11

    shr-int/lit8 v1, v1, 0x8

    .line 535
    .local v1, "index":I
    if-nez v9, :cond_3

    .line 536
    move v2, v12

    .local v2, "p":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 537
    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 538
    .local v3, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-virtual {v3}, Lcom/android/internal/widget/PointerLocationView$PointerState;->clearTrace()V

    .line 539
    invoke-static {v3, v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 536
    .end local v3    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 541
    .end local v2    # "p":I
    :cond_2
    iput-boolean v13, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 542
    iput v12, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 543
    iput v12, v7, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 544
    iget-object v2, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 545
    iget-object v2, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_3

    .line 546
    iget-object v2, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 550
    :cond_3
    iget v2, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    add-int/2addr v2, v13

    iput v2, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 551
    iget v2, v7, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    iget v3, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    if-ge v2, v3, :cond_4

    .line 552
    iget v2, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    iput v2, v7, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 555
    :cond_4
    invoke-virtual {v8, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 556
    .local v2, "id":I
    :goto_3
    if-gt v0, v2, :cond_5

    .line 557
    new-instance v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v3}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 558
    .restart local v3    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    iget-object v4, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    add-int/lit8 v0, v0, 0x1

    .line 560
    .end local v3    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    goto :goto_3

    .line 563
    :cond_5
    iget v3, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    iget-object v4, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 564
    iput v2, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 568
    :cond_6
    iget v3, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ltz v3, :cond_7

    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    iget v4, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 569
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-static {v3}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 570
    :cond_7
    iput v2, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 573
    :cond_8
    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 574
    .restart local v3    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static {v3, v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 575
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 576
    .local v4, "device":Landroid/view/InputDevice;
    if-eqz v4, :cond_9

    .line 577
    invoke-virtual {v4, v10}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 576
    move v5, v13

    goto :goto_4

    .line 577
    :cond_9
    nop

    .line 576
    move v5, v12

    :goto_4
    invoke-static {v3, v5}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1302(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .end local v1    # "index":I
    .end local v2    # "id":I
    .end local v3    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v4    # "device":Landroid/view/InputDevice;
    goto/16 :goto_0

    .line 580
    .end local v0    # "NP":I
    .restart local v14    # "NP":I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    .line 582
    .local v15, "NI":I
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 583
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 584
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 585
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 586
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 589
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    .line 590
    .local v6, "N":I
    move v0, v12

    .local v0, "historyPos":I
    :goto_6
    move v5, v0

    .end local v0    # "historyPos":I
    .local v5, "historyPos":I
    const/16 v16, 0x0

    if-ge v5, v6, :cond_11

    .line 591
    move v0, v12

    .local v0, "i":I
    :goto_7
    move v4, v0

    .end local v0    # "i":I
    .local v4, "i":I
    if-ge v4, v15, :cond_10

    .line 592
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 594
    .local v3, "id":I
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_b

    .line 595
    const-string v0, "Pointer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    nop

    .line 591
    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    goto :goto_b

    .line 599
    :cond_b
    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    goto :goto_8

    :cond_c
    move-object/from16 v0, v16

    :goto_8
    move-object v2, v0

    .line 600
    .local v2, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    if-eqz v2, :cond_d

    invoke-static {v2}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    goto :goto_9

    :cond_d
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_9
    move-object v1, v0

    .line 601
    .local v1, "coords":Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual {v8, v4, v5, v1}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 602
    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v0, :cond_e

    .line 603
    const-string v17, "Pointer"

    move-object v0, v7

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    .end local v1    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .local v18, "coords":Landroid/view/MotionEvent$PointerCoords;
    move-object v11, v2

    move v2, v9

    .end local v2    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .local v11, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    move/from16 v17, v3

    move v3, v4

    .end local v3    # "id":I
    .local v17, "id":I
    move/from16 v19, v4

    move-object/from16 v4, v18

    .end local v4    # "i":I
    .local v19, "i":I
    move/from16 v20, v5

    move/from16 v5, v17

    .end local v5    # "historyPos":I
    .local v20, "historyPos":I
    move/from16 v21, v6

    move-object v6, v8

    .end local v6    # "N":I
    .local v21, "N":I
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    goto :goto_a

    .line 605
    .end local v11    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v17    # "id":I
    .end local v18    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v19    # "i":I
    .end local v20    # "historyPos":I
    .end local v21    # "N":I
    .restart local v1    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .restart local v2    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .restart local v3    # "id":I
    .restart local v4    # "i":I
    .restart local v5    # "historyPos":I
    .restart local v6    # "N":I
    :cond_e
    move-object/from16 v18, v1

    move-object v11, v2

    move/from16 v17, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    .end local v1    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v2    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v3    # "id":I
    .end local v4    # "i":I
    .end local v5    # "historyPos":I
    .end local v6    # "N":I
    .restart local v11    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .restart local v17    # "id":I
    .restart local v18    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .restart local v19    # "i":I
    .restart local v20    # "historyPos":I
    .restart local v21    # "N":I
    :goto_a
    if-eqz v11, :cond_f

    .line 606
    move-object/from16 v0, v18

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .end local v18    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .local v0, "coords":Landroid/view/MotionEvent$PointerCoords;
    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v11, v1, v2, v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 591
    .end local v0    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v11    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v17    # "id":I
    :cond_f
    :goto_b
    add-int/lit8 v0, v19, 0x1

    .end local v19    # "i":I
    .local v0, "i":I
    move/from16 v5, v20

    move/from16 v6, v21

    const v11, 0xff00

    goto/16 :goto_7

    .line 590
    .end local v0    # "i":I
    .end local v20    # "historyPos":I
    .end local v21    # "N":I
    .restart local v5    # "historyPos":I
    .restart local v6    # "N":I
    :cond_10
    move/from16 v20, v5

    move/from16 v21, v6

    .end local v5    # "historyPos":I
    .end local v6    # "N":I
    .restart local v20    # "historyPos":I
    .restart local v21    # "N":I
    add-int/lit8 v0, v20, 0x1

    .end local v20    # "historyPos":I
    .local v0, "historyPos":I
    const v11, 0xff00

    goto/16 :goto_6

    .line 610
    .end local v0    # "historyPos":I
    .end local v21    # "N":I
    .restart local v6    # "N":I
    :cond_11
    move/from16 v21, v6

    .end local v6    # "N":I
    .restart local v21    # "N":I
    move v0, v12

    .local v0, "i":I
    :goto_c
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    if-ge v11, v15, :cond_18

    .line 611
    invoke-virtual {v8, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 613
    .local v6, "id":I
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_12

    .line 614
    const-string v0, "Pointer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    nop

    .line 610
    move v1, v10

    goto/16 :goto_10

    .line 618
    :cond_12
    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v0, :cond_13

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    goto :goto_d

    :cond_13
    move-object/from16 v0, v16

    :goto_d
    move-object v5, v0

    .line 619
    .local v5, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    if-eqz v5, :cond_14

    invoke-static {v5}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    goto :goto_e

    :cond_14
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_e
    move-object v4, v0

    .line 620
    .local v4, "coords":Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual {v8, v11, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 621
    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v0, :cond_15

    .line 622
    const-string v1, "Pointer"

    move-object v0, v7

    move v2, v9

    move v3, v11

    move-object/from16 v22, v4

    .end local v4    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .local v22, "coords":Landroid/view/MotionEvent$PointerCoords;
    move-object v12, v5

    move v5, v6

    .end local v5    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .local v12, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    move v10, v6

    move-object v6, v8

    .end local v6    # "id":I
    .local v10, "id":I
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    goto :goto_f

    .line 624
    .end local v10    # "id":I
    .end local v12    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v22    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .restart local v4    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .restart local v5    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .restart local v6    # "id":I
    :cond_15
    move-object/from16 v22, v4

    move-object v12, v5

    move v10, v6

    .end local v4    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v5    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v6    # "id":I
    .restart local v10    # "id":I
    .restart local v12    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .restart local v22    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_f
    if-eqz v12, :cond_17

    .line 625
    move-object/from16 v0, v22

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .end local v22    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .local v0, "coords":Landroid/view/MotionEvent$PointerCoords;
    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v12, v1, v2, v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 626
    iget-object v1, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 627
    iget-object v1, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 628
    iget-object v1, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    .line 629
    iget-object v1, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_16

    .line 630
    iget-object v1, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1002(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 631
    iget-object v1, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1102(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 632
    iget-object v1, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    .line 634
    :cond_16
    invoke-virtual {v8, v11}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1202(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I

    .line 636
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1300(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 637
    const/16 v1, 0x20

    invoke-virtual {v8, v1, v11}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    invoke-static {v12, v2}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1402(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 638
    const/16 v2, 0x21

    invoke-virtual {v8, v2, v11}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    invoke-static {v12, v2}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 639
    const/16 v2, 0x22

    invoke-virtual {v8, v2, v11}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    invoke-static {v12, v2}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 640
    const/16 v2, 0x23

    invoke-virtual {v8, v2, v11}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    invoke-static {v12, v2}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1702(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .end local v0    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v10    # "id":I
    .end local v12    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    goto :goto_10

    .line 610
    :cond_17
    const/16 v1, 0x20

    :goto_10
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "i":I
    .local v0, "i":I
    move v10, v1

    const/4 v12, 0x0

    goto/16 :goto_c

    .line 645
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x3

    if-eq v9, v13, :cond_19

    if-eq v9, v0, :cond_19

    and-int/lit16 v1, v9, 0xff

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1f

    .line 648
    :cond_19
    const v1, 0xff00

    and-int/2addr v1, v9

    shr-int/lit8 v1, v1, 0x8

    .line 651
    .local v1, "index":I
    invoke-virtual {v8, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 652
    .local v2, "id":I
    if-lt v2, v14, :cond_1a

    .line 653
    const-string v0, "Pointer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got pointer ID out of bounds: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " arraysize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pointerindex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " action=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 653
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-void

    .line 658
    :cond_1a
    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 659
    .local v3, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 661
    if-eq v9, v13, :cond_1e

    if-ne v9, v0, :cond_1b

    goto :goto_12

    .line 666
    :cond_1b
    iget v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    sub-int/2addr v0, v13

    iput v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 667
    iget v0, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ne v0, v2, :cond_1d

    .line 668
    if-nez v1, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 v13, 0x0

    :goto_11
    invoke-virtual {v8, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 670
    :cond_1d
    const/high16 v0, 0x7fc00000    # Float.NaN

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v0, v4}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .end local v1    # "index":I
    .end local v2    # "id":I
    .end local v3    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    goto :goto_13

    .line 663
    .restart local v1    # "index":I
    .restart local v2    # "id":I
    .restart local v3    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_1e
    :goto_12
    const/4 v4, 0x0

    iput-boolean v4, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 664
    iput v4, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 674
    .end local v1    # "index":I
    .end local v2    # "id":I
    .end local v3    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_1f
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->invalidate()V

    .line 675
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->requestFocus()Z

    .line 684
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 741
    const-string v0, "Trackball"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 742
    const/4 v0, 0x1

    return v0
.end method

.method public setPrintCoords(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 190
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 191
    return-void
.end method
