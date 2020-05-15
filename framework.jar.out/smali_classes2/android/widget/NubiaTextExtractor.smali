.class public Landroid/widget/NubiaTextExtractor;
.super Ljava/lang/Object;
.source "NubiaTextExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver;,
        Landroid/widget/NubiaTextExtractor$CheckForSimiLongPress;
    }
.end annotation


# static fields
.field private static final LONG_TOUCH_TIME:J = 0x44cL

.field private static final SIMI_TOUCH_TIME:J = 0x190L

.field private static SMART_RECOGNITION_KEY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "NubiaTextExtractor"

.field private static final TOUCH_MOVE_BOUND:F = 24.0f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/FrameLayout;

.field private mFindViewRestricted:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsExtractionCanceled:Z

.field private mLongPressDownX:F

.field private mLongPressDownY:F

.field private mNubiaTextExtractorHelper:Landroid/widget/NubiaTextExtractorHelper;

.field private mPendingCheckForSimiLongPress:Landroid/widget/NubiaTextExtractor$CheckForSimiLongPress;

.field private mRowDownX:F

.field private mRowDownY:F

.field private mSmartRecognitionObserver:Landroid/database/ContentObserver;

.field private mTouchDownTime:J

.field private mTouchPointId:I

.field private mTouchSlop:I

.field private mTouchedTextView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-string/jumbo v0, "smart_recognition"

    sput-object v0, Landroid/widget/NubiaTextExtractor;->SMART_RECOGNITION_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decorView"    # Landroid/widget/FrameLayout;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Landroid/widget/NubiaTextExtractor;->mDecorView:Landroid/widget/FrameLayout;

    .line 50
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/NubiaTextExtractor;->mTouchPointId:I

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/NubiaTextExtractor;->mLongPressDownX:F

    .line 54
    iput v1, p0, Landroid/widget/NubiaTextExtractor;->mLongPressDownY:F

    .line 56
    iput v1, p0, Landroid/widget/NubiaTextExtractor;->mRowDownX:F

    .line 57
    iput v1, p0, Landroid/widget/NubiaTextExtractor;->mRowDownY:F

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/NubiaTextExtractor;->mFindViewRestricted:Z

    .line 61
    iput-object v0, p0, Landroid/widget/NubiaTextExtractor;->mTouchedTextView:Landroid/view/View;

    .line 62
    iput-boolean v1, p0, Landroid/widget/NubiaTextExtractor;->mIsExtractionCanceled:Z

    .line 63
    iput-object v0, p0, Landroid/widget/NubiaTextExtractor;->mPendingCheckForSimiLongPress:Landroid/widget/NubiaTextExtractor$CheckForSimiLongPress;

    .line 65
    iput-object v0, p0, Landroid/widget/NubiaTextExtractor;->mNubiaTextExtractorHelper:Landroid/widget/NubiaTextExtractorHelper;

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/NubiaTextExtractor;->mTouchDownTime:J

    .line 69
    iput-object v0, p0, Landroid/widget/NubiaTextExtractor;->mSmartRecognitionObserver:Landroid/database/ContentObserver;

    .line 73
    iput-object p1, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Landroid/widget/NubiaTextExtractor;->mDecorView:Landroid/widget/FrameLayout;

    .line 75
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/widget/NubiaTextExtractor;->mTouchSlop:I

    .line 78
    :cond_0
    new-instance v0, Landroid/widget/NubiaTextExtractorHelper;

    iget-object v1, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/NubiaTextExtractor;->mDecorView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/NubiaTextExtractor;->mTouchedTextView:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/NubiaTextExtractorHelper;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/NubiaTextExtractor;->mNubiaTextExtractorHelper:Landroid/widget/NubiaTextExtractorHelper;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/NubiaTextExtractor;->mHandler:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method static synthetic access$000(Landroid/widget/NubiaTextExtractor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NubiaTextExtractor;

    .line 34
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->readSmartRecognitionStatus()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/NubiaTextExtractor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NubiaTextExtractor;

    .line 34
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->findView()V

    return-void
.end method

.method private cancelTextExtract()V
    .locals 4

    .line 129
    iget-boolean v0, p0, Landroid/widget/NubiaTextExtractor;->mIsExtractionCanceled:Z

    if-eqz v0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->removeSimiLongPressCallback()V

    .line 134
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mTouchedTextView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/NubiaTextExtractor;->mTouchedTextView:Landroid/view/View;

    .line 137
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/NubiaTextExtractor;->mTouchDownTime:J

    sub-long/2addr v0, v2

    .line 138
    .local v0, "timeDiff":J
    const-wide/16 v2, 0x190

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const-wide/16 v2, 0x44c

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 139
    iget-object v2, p0, Landroid/widget/NubiaTextExtractor;->mNubiaTextExtractorHelper:Landroid/widget/NubiaTextExtractorHelper;

    if-eqz v2, :cond_2

    .line 140
    iget-object v2, p0, Landroid/widget/NubiaTextExtractor;->mNubiaTextExtractorHelper:Landroid/widget/NubiaTextExtractorHelper;

    invoke-virtual {v2}, Landroid/widget/NubiaTextExtractorHelper;->startServiceWhenActionCancel()V

    .line 143
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/NubiaTextExtractor;->mIsExtractionCanceled:Z

    .line 144
    return-void
.end method

.method private checkForSimiLongClick(J)V
    .locals 2
    .param p1, "delay"    # J

    .line 243
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mPendingCheckForSimiLongPress:Landroid/widget/NubiaTextExtractor$CheckForSimiLongPress;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Landroid/widget/NubiaTextExtractor$CheckForSimiLongPress;

    invoke-direct {v0, p0}, Landroid/widget/NubiaTextExtractor$CheckForSimiLongPress;-><init>(Landroid/widget/NubiaTextExtractor;)V

    iput-object v0, p0, Landroid/widget/NubiaTextExtractor;->mPendingCheckForSimiLongPress:Landroid/widget/NubiaTextExtractor$CheckForSimiLongPress;

    .line 246
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/NubiaTextExtractor;->mPendingCheckForSimiLongPress:Landroid/widget/NubiaTextExtractor$CheckForSimiLongPress;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    return-void
.end method

.method private findView()V
    .locals 4

    .line 185
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mDecorView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mDecorView:Landroid/widget/FrameLayout;

    iget v1, p0, Landroid/widget/NubiaTextExtractor;->mLongPressDownX:F

    iget v2, p0, Landroid/widget/NubiaTextExtractor;->mLongPressDownY:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->findViewByTouchPoint(FFZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/NubiaTextExtractor;->mTouchedTextView:Landroid/view/View;

    .line 188
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mTouchedTextView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mTouchedTextView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mNubiaTextExtractorHelper:Landroid/widget/NubiaTextExtractorHelper;

    if-eqz v0, :cond_2

    .line 189
    :cond_1
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mNubiaTextExtractorHelper:Landroid/widget/NubiaTextExtractorHelper;

    iget-object v1, p0, Landroid/widget/NubiaTextExtractor;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/NubiaTextExtractorHelper;->setTouchTextView(Landroid/view/View;)V

    .line 191
    :cond_2
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mTouchedTextView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mTouchedTextView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mNubiaTextExtractorHelper:Landroid/widget/NubiaTextExtractorHelper;

    if-eqz v0, :cond_4

    .line 192
    :cond_3
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mNubiaTextExtractorHelper:Landroid/widget/NubiaTextExtractorHelper;

    iget v1, p0, Landroid/widget/NubiaTextExtractor;->mLongPressDownX:F

    iget v2, p0, Landroid/widget/NubiaTextExtractor;->mLongPressDownY:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/NubiaTextExtractorHelper;->setXY(FF)V

    .line 193
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mNubiaTextExtractorHelper:Landroid/widget/NubiaTextExtractorHelper;

    iget v1, p0, Landroid/widget/NubiaTextExtractor;->mRowDownX:F

    iget v2, p0, Landroid/widget/NubiaTextExtractor;->mRowDownY:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/NubiaTextExtractorHelper;->setRowXY(FF)V

    .line 194
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mNubiaTextExtractorHelper:Landroid/widget/NubiaTextExtractorHelper;

    invoke-virtual {v0}, Landroid/widget/NubiaTextExtractorHelper;->dealWithView()V

    .line 196
    :cond_4
    return-void
.end method

.method private handleActionCancel(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 227
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->cancelTextExtract()V

    .line 228
    return-void
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/NubiaTextExtractor;->mTouchDownTime:J

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 176
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/NubiaTextExtractor;->mTouchPointId:I

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/widget/NubiaTextExtractor;->mLongPressDownX:F

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Landroid/widget/NubiaTextExtractor;->mLongPressDownY:F

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Landroid/widget/NubiaTextExtractor;->mRowDownX:F

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Landroid/widget/NubiaTextExtractor;->mRowDownY:F

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/NubiaTextExtractor;->mIsExtractionCanceled:Z

    .line 182
    const-wide/16 v1, 0x190

    invoke-direct {p0, v1, v2}, Landroid/widget/NubiaTextExtractor;->checkForSimiLongClick(J)V

    .line 183
    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 200
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 201
    .local v1, "pointerId":I
    iget v2, p0, Landroid/widget/NubiaTextExtractor;->mTouchPointId:I

    if-eq v1, v2, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    const/4 v2, 0x0

    .line 205
    .local v2, "x":F
    const/4 v3, 0x0

    .line 207
    .local v3, "y":F
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    move v2, v4

    .line 208
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 212
    nop

    .line 214
    iget-object v4, p0, Landroid/widget/NubiaTextExtractor;->mDecorView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/NubiaTextExtractor;->mDecorView:Landroid/widget/FrameLayout;

    iget v5, p0, Landroid/widget/NubiaTextExtractor;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {v4, v2, v3, v5}, Landroid/widget/FrameLayout;->pointInView(FFF)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    iget v4, p0, Landroid/widget/NubiaTextExtractor;->mLongPressDownX:F

    sub-float/2addr v4, v2

    .line 215
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41c00000    # 24.0f

    cmpl-float v4, v4, v5

    if-gez v4, :cond_3

    iget v4, p0, Landroid/widget/NubiaTextExtractor;->mLongPressDownY:F

    sub-float/2addr v4, v3

    .line 216
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    goto :goto_0

    .line 220
    :cond_2
    return-void

    .line 217
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->cancelTextExtract()V

    .line 218
    return-void

    .line 209
    :catch_0
    move-exception v4

    .line 210
    .local v4, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->cancelTextExtract()V

    .line 211
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 223
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->cancelTextExtract()V

    .line 224
    return-void
.end method

.method private isSystemProcess()Z
    .locals 2

    .line 268
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readSmartRecognitionStatus()V
    .locals 4

    .line 272
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->isSystemProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/NubiaTextExtractor;->setSmartRecognitionStatus(I)V

    .line 274
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/widget/NubiaTextExtractor;->SMART_RECOGNITION_KEY:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 279
    .local v0, "isEnable":I
    const-string v1, "NubiaTextExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readSmartRecognitionStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0, v0}, Landroid/widget/NubiaTextExtractor;->setSmartRecognitionStatus(I)V

    .line 282
    .end local v0    # "isEnable":I
    :cond_1
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .line 255
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->isSystemProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mDecorView:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setSmartRecognition(I)V

    .line 257
    return-void

    .line 259
    :cond_0
    new-instance v0, Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver;-><init>(Landroid/widget/NubiaTextExtractor;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/NubiaTextExtractor;->mSmartRecognitionObserver:Landroid/database/ContentObserver;

    .line 260
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/widget/NubiaTextExtractor;->SMART_RECOGNITION_KEY:Ljava/lang/String;

    .line 262
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/NubiaTextExtractor;->mSmartRecognitionObserver:Landroid/database/ContentObserver;

    .line 261
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 265
    :cond_1
    return-void
.end method

.method private removeSimiLongPressCallback()V
    .locals 2

    .line 249
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mPendingCheckForSimiLongPress:Landroid/widget/NubiaTextExtractor$CheckForSimiLongPress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/NubiaTextExtractor;->mPendingCheckForSimiLongPress:Landroid/widget/NubiaTextExtractor$CheckForSimiLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    :cond_0
    return-void
.end method

.method private setSmartRecognitionStatus(I)V
    .locals 1
    .param p1, "isEnable"    # I

    .line 285
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mDecorView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mDecorView:Landroid/widget/FrameLayout;

    instance-of v0, v0, Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mDecorView:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setSmartRecognition(I)V

    .line 288
    :cond_0
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .line 311
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->isSystemProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mSmartRecognitionObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/NubiaTextExtractor;->mSmartRecognitionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 317
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 147
    iget-boolean v0, p0, Landroid/widget/NubiaTextExtractor;->mFindViewRestricted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    return v1

    .line 150
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mDecorView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/NubiaTextExtractor;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/NubiaTextExtractor;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 152
    .local v0, "actionMask":I
    packed-switch v0, :pswitch_data_0

    .end local v0    # "actionMask":I
    goto :goto_0

    .line 163
    .restart local v0    # "actionMask":I
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/NubiaTextExtractor;->handleActionCancel(Landroid/view/MotionEvent;)V

    .line 164
    goto :goto_0

    .line 157
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/NubiaTextExtractor;->handleActionMove(Landroid/view/MotionEvent;)V

    .line 158
    goto :goto_0

    .line 160
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/NubiaTextExtractor;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 161
    goto :goto_0

    .line 154
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/NubiaTextExtractor;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 155
    nop

    .line 168
    .end local v0    # "actionMask":I
    :goto_0
    goto :goto_1

    .line 169
    :cond_1
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->cancelTextExtract()V

    .line 171
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleBackKey()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Landroid/widget/NubiaTextExtractor;->mFindViewRestricted:Z

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->cancelTextExtract()V

    .line 126
    :cond_0
    return-void
.end method

.method public onAttachedToWindow(I)V
    .locals 3
    .param p1, "windowType"    # I

    .line 84
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-le p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/widget/NubiaTextExtractor;->mFindViewRestricted:Z

    .line 85
    iget-boolean v1, p0, Landroid/widget/NubiaTextExtractor;->mFindViewRestricted:Z

    if-eqz v1, :cond_1

    .line 86
    return-void

    .line 88
    :cond_1
    iget-object v1, p0, Landroid/widget/NubiaTextExtractor;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 89
    .local v1, "km":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/NubiaTextExtractor;->mFindViewRestricted:Z

    .line 92
    :cond_2
    iget-boolean v2, p0, Landroid/widget/NubiaTextExtractor;->mFindViewRestricted:Z

    if-eqz v2, :cond_3

    .line 93
    return-void

    .line 96
    :cond_3
    :try_start_0
    new-instance v2, Landroid/widget/NubiaTextExtractor$1;

    invoke-direct {v2, p0}, Landroid/widget/NubiaTextExtractor$1;-><init>(Landroid/widget/NubiaTextExtractor;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 103
    invoke-virtual {v2, v0}, Landroid/widget/NubiaTextExtractor$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->registerContentObserver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 111
    iget-boolean v0, p0, Landroid/widget/NubiaTextExtractor;->mFindViewRestricted:Z

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->cancelTextExtract()V

    .line 116
    :try_start_0
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractor;->unregisterContentObserver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
