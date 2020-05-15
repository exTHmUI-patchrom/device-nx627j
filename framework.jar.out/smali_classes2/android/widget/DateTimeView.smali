.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo;
    }
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I

.field private static final sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLastDisplay:I

.field mLastFormat:Ljava/text/DateFormat;

.field private mNowText:Ljava/lang/String;

.field private mShowRelativeTime:Z

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 81
    sget-object v0, Lcom/android/internal/R$styleable;->DateTimeView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 86
    .local v2, "N":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 87
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 88
    .local v4, "attr":I
    if-eqz v4, :cond_0

    .end local v4    # "attr":I
    goto :goto_1

    .line 90
    .restart local v4    # "attr":I
    :cond_0
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 91
    .local v5, "relative":Z
    invoke-virtual {p0, v5}, Landroid/widget/DateTimeView;->setShowRelativeTime(Z)V

    .line 86
    .end local v4    # "attr":I
    .end local v5    # "relative":Z
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-void
.end method

.method static synthetic access$100(Landroid/widget/DateTimeView;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/DateTimeView;

    .line 60
    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method private computeNextMidnight(Ljava/util/TimeZone;)J
    .locals 3
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 303
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 304
    .local v0, "c":Landroid/icu/util/Calendar;
    invoke-static {p1}, Llibcore/icu/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 305
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->add(II)V

    .line 306
    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 307
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 308
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 309
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 310
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private static dayDistance(Ljava/util/TimeZone;JJ)I
    .locals 3
    .param p0, "timeZone"    # Ljava/util/TimeZone;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 331
    invoke-virtual {p0, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {p3, p4, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 332
    invoke-virtual {p0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    sub-int/2addr v0, v1

    .line 331
    return v0
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    .line 336
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static setReceiverHandler(Landroid/os/Handler;)V
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;

    .line 405
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 406
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-nez v0, :cond_0

    .line 407
    new-instance v1, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$1;)V

    move-object v0, v1

    .line 408
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 410
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->setHandler(Landroid/os/Handler;)V

    .line 411
    return-void
.end method

.method private updateNowText()V
    .locals 2

    .line 321
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-nez v0, :cond_0

    .line 322
    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104040e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    .line 326
    return-void
.end method

.method private updateRelativeTime()V
    .locals 18

    .line 237
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 238
    .local v1, "now":J
    iget-wide v3, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 241
    .local v3, "duration":J
    iget-wide v5, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v5, v1, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ltz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 243
    .local v5, "past":Z
    :goto_0
    const-wide/32 v8, 0xea60

    cmp-long v10, v3, v8

    const-wide/16 v11, 0x1

    if-gez v10, :cond_1

    .line 244
    iget-object v6, v0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-wide v6, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-long/2addr v6, v8

    add-long/2addr v6, v11

    iput-wide v6, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 246
    return-void

    .line 247
    :cond_1
    const-wide/32 v13, 0x36ee80

    cmp-long v10, v3, v13

    const-wide v15, 0x7528ad000L

    if-gez v10, :cond_3

    .line 248
    div-long v8, v3, v8

    long-to-int v8, v8

    .line 249
    .local v8, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v5, :cond_2

    .line 250
    const v10, 0x115000c

    goto :goto_1

    .line 251
    :cond_2
    const v10, 0x115000d

    .line 249
    :goto_1
    invoke-virtual {v9, v10, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    .line 253
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v6

    .line 249
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, "result":Ljava/lang/String;
    const-wide/32 v15, 0xea60

    .local v15, "millisIncrease":J
    :goto_2
    goto/16 :goto_8

    .line 255
    .end local v6    # "result":Ljava/lang/String;
    .end local v8    # "count":I
    .end local v15    # "millisIncrease":J
    :cond_3
    const-wide/32 v8, 0x5265c00

    cmp-long v10, v3, v8

    if-gez v10, :cond_5

    .line 256
    div-long v8, v3, v13

    long-to-int v8, v8

    .line 257
    .restart local v8    # "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v5, :cond_4

    .line 258
    const v10, 0x1150008

    goto :goto_3

    .line 259
    :cond_4
    const v10, 0x1150009

    .line 257
    :goto_3
    invoke-virtual {v9, v10, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    .line 261
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v6

    .line 257
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 262
    .restart local v6    # "result":Ljava/lang/String;
    const-wide/32 v15, 0x36ee80

    goto :goto_2

    .line 263
    .end local v6    # "result":Ljava/lang/String;
    .end local v8    # "count":I
    :cond_5
    cmp-long v10, v3, v15

    if-gez v10, :cond_9

    .line 265
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    .line 266
    .local v10, "timeZone":Ljava/util/TimeZone;
    iget-wide v13, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-static {v10, v13, v14, v1, v2}, Landroid/widget/DateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 267
    .local v13, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v5, :cond_6

    .line 268
    const v15, 0x1150004

    goto :goto_4

    .line 269
    :cond_6
    const v15, 0x1150005

    .line 267
    :goto_4
    invoke-virtual {v14, v15, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v14

    new-array v15, v7, [Ljava/lang/Object;

    .line 271
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v6

    .line 267
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 272
    .restart local v6    # "result":Ljava/lang/String;
    if-nez v5, :cond_8

    if-eq v13, v7, :cond_7

    goto :goto_5

    .line 276
    :cond_7
    nop

    .end local v10    # "timeZone":Ljava/util/TimeZone;
    goto :goto_6

    .line 273
    .restart local v10    # "timeZone":Ljava/util/TimeZone;
    :cond_8
    :goto_5
    invoke-direct {v0, v10}, Landroid/widget/DateTimeView;->computeNextMidnight(Ljava/util/TimeZone;)J

    move-result-wide v7

    iput-wide v7, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 274
    const-wide/16 v8, -0x1

    .line 276
    .end local v10    # "timeZone":Ljava/util/TimeZone;
    .local v8, "millisIncrease":J
    :goto_6
    move-wide v15, v8

    .line 279
    .end local v8    # "millisIncrease":J
    .restart local v15    # "millisIncrease":J
    nop

    .line 286
    move v8, v13

    goto :goto_8

    .line 280
    .end local v6    # "result":Ljava/lang/String;
    .end local v13    # "count":I
    .end local v15    # "millisIncrease":J
    :cond_9
    div-long v8, v3, v15

    long-to-int v8, v8

    .line 281
    .local v8, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v5, :cond_a

    .line 282
    const v10, 0x1150010

    goto :goto_7

    .line 283
    :cond_a
    const v10, 0x1150011

    .line 281
    :goto_7
    invoke-virtual {v9, v10, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    .line 285
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v6

    .line 281
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 286
    .restart local v6    # "result":Ljava/lang/String;
    nop

    .restart local v15    # "millisIncrease":J
    :goto_8
    move-wide v9, v15

    .line 288
    .end local v15    # "millisIncrease":J
    .local v9, "millisIncrease":J
    const-wide/16 v13, -0x1

    cmp-long v7, v9, v13

    if-eqz v7, :cond_c

    .line 289
    if-eqz v5, :cond_b

    .line 290
    iget-wide v13, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-int/lit8 v7, v8, 0x1

    int-to-long v11, v7

    mul-long/2addr v11, v9

    add-long/2addr v13, v11

    const-wide/16 v11, 0x1

    add-long/2addr v13, v11

    iput-wide v13, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_9

    .line 292
    :cond_b
    iget-wide v13, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    int-to-long v11, v8

    mul-long/2addr v11, v9

    sub-long/2addr v13, v11

    const-wide/16 v11, 0x1

    add-long/2addr v13, v11

    iput-wide v13, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 295
    :cond_c
    :goto_9
    invoke-virtual {v0, v6}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    return-void
.end method


# virtual methods
.method clearFormatAndUpdate()V
    .locals 1

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 341
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 342
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 100
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 101
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 102
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-nez v0, :cond_0

    .line 103
    new-instance v1, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$1;)V

    move-object v0, v1

    .line 104
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 106
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    .line 112
    iget-boolean v1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 115
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 315
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 316
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 317
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 318
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 119
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 120
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 121
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 346
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 347
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_9

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 351
    .local v0, "now":J
    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 353
    .local v2, "duration":J
    iget-wide v4, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v4, v0, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 355
    .local v4, "past":Z
    :goto_0
    const-wide/32 v7, 0xea60

    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    .line 356
    iget-object v5, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    .local v5, "result":Ljava/lang/String;
    :goto_1
    goto/16 :goto_6

    .line 357
    .end local v5    # "result":Ljava/lang/String;
    :cond_1
    const-wide/32 v9, 0x36ee80

    cmp-long v11, v2, v9

    if-gez v11, :cond_3

    .line 358
    div-long v7, v2, v7

    long-to-int v7, v7

    .line 359
    .local v7, "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v4, :cond_2

    .line 361
    const v9, 0x115000a

    goto :goto_2

    .line 363
    :cond_2
    const v9, 0x115000b

    .line 359
    :goto_2
    invoke-virtual {v8, v9, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    .line 365
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v5

    .line 359
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 366
    .end local v7    # "count":I
    :cond_3
    const-wide/32 v7, 0x5265c00

    cmp-long v7, v2, v7

    if-gez v7, :cond_5

    .line 367
    div-long v7, v2, v9

    long-to-int v7, v7

    .line 368
    .restart local v7    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v4, :cond_4

    .line 370
    const v9, 0x1150006

    goto :goto_3

    .line 372
    :cond_4
    const v9, 0x1150007

    .line 368
    :goto_3
    invoke-virtual {v8, v9, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    .line 374
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v5

    .line 368
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 375
    .end local v7    # "count":I
    :cond_5
    const-wide v7, 0x7528ad000L

    cmp-long v9, v2, v7

    if-gez v9, :cond_7

    .line 377
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 378
    .local v7, "timeZone":Ljava/util/TimeZone;
    iget-wide v8, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-static {v7, v8, v9, v0, v1}, Landroid/widget/DateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 379
    .local v8, "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v4, :cond_6

    .line 381
    const v10, 0x1150002

    goto :goto_4

    .line 383
    :cond_6
    const v10, 0x1150003

    .line 379
    :goto_4
    invoke-virtual {v9, v10, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    .line 385
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v5

    .line 379
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 387
    .end local v7    # "timeZone":Ljava/util/TimeZone;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_6

    .line 388
    .end local v5    # "result":Ljava/lang/String;
    .end local v8    # "count":I
    :cond_7
    div-long v7, v2, v7

    long-to-int v7, v7

    .line 389
    .local v7, "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v4, :cond_8

    .line 391
    const v9, 0x115000e

    goto :goto_5

    .line 393
    :cond_8
    const v9, 0x115000f

    .line 389
    :goto_5
    invoke-virtual {v8, v9, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    .line 395
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v5

    .line 389
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 397
    .end local v7    # "count":I
    .restart local v5    # "result":Ljava/lang/String;
    :goto_6
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 399
    .end local v0    # "now":J
    .end local v2    # "duration":J
    .end local v4    # "past":Z
    .end local v5    # "result":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method public setShowRelativeTime(Z)V
    .locals 0
    .param p1, "showRelativeTime"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 137
    iput-boolean p1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    .line 138
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 139
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 140
    return-void
.end method

.method public setTime(J)V
    .locals 10
    .param p1, "time"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 128
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 129
    .local v0, "t":Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 131
    new-instance v1, Ljava/util/Date;

    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v4, v2, -0x76c

    iget v5, v0, Landroid/text/format/Time;->month:I

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    iget v7, v0, Landroid/text/format/Time;->hour:I

    iget v8, v0, Landroid/text/format/Time;->minute:I

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v1, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 132
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 133
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 145
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    .local v0, "gotVisible":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 150
    :cond_1
    return-void
.end method

.method update()V
    .locals 19

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto/16 :goto_6

    .line 156
    :cond_0
    iget-boolean v1, v0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v1, :cond_1

    .line 157
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->updateRelativeTime()V

    .line 158
    return-void

    .line 162
    :cond_1
    iget-object v1, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 164
    .local v1, "time":Ljava/util/Date;
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 165
    .local v2, "t":Landroid/text/format/Time;
    iget-wide v3, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 166
    const/4 v3, 0x0

    iput v3, v2, Landroid/text/format/Time;->second:I

    .line 168
    iget v4, v2, Landroid/text/format/Time;->hour:I

    add-int/lit8 v4, v4, -0xc

    iput v4, v2, Landroid/text/format/Time;->hour:I

    .line 169
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 170
    .local v4, "twelveHoursBefore":J
    iget v6, v2, Landroid/text/format/Time;->hour:I

    add-int/lit8 v6, v6, 0xc

    iput v6, v2, Landroid/text/format/Time;->hour:I

    .line 171
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 172
    .local v6, "twelveHoursAfter":J
    iput v3, v2, Landroid/text/format/Time;->hour:I

    .line 173
    iput v3, v2, Landroid/text/format/Time;->minute:I

    .line 174
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 175
    .local v8, "midnightBefore":J
    iget v10, v2, Landroid/text/format/Time;->monthDay:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v2, Landroid/text/format/Time;->monthDay:I

    .line 176
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 178
    .local v12, "midnightAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 179
    .local v14, "nowMillis":J
    invoke-virtual {v2, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 180
    iput v3, v2, Landroid/text/format/Time;->second:I

    .line 181
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v14

    .line 185
    cmp-long v3, v14, v8

    if-ltz v3, :cond_2

    cmp-long v3, v14, v12

    if-ltz v3, :cond_3

    :cond_2
    cmp-long v3, v14, v4

    if-ltz v3, :cond_4

    cmp-long v3, v14, v6

    if-gez v3, :cond_4

    .line 187
    :cond_3
    const/4 v11, 0x0

    .line 188
    .local v11, "display":I
    goto :goto_0

    .line 191
    .end local v11    # "display":I
    :cond_4
    nop

    .line 191
    .restart local v11    # "display":I
    :goto_0
    move v3, v11

    .line 197
    .end local v11    # "display":I
    .local v3, "display":I
    iget v10, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    if-ne v3, v10, :cond_5

    iget-object v10, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    if-eqz v10, :cond_5

    .line 199
    iget-object v10, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 199
    .local v10, "format":Ljava/text/DateFormat;
    goto :goto_2

    .line 201
    .end local v10    # "format":Ljava/text/DateFormat;
    :cond_5
    packed-switch v3, :pswitch_data_0

    .line 209
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 209
    .end local v1    # "time":Ljava/util/Date;
    .end local v2    # "t":Landroid/text/format/Time;
    .local v17, "time":Ljava/util/Date;
    .local v18, "t":Landroid/text/format/Time;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unknown display value: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    .end local v17    # "time":Ljava/util/Date;
    .end local v18    # "t":Landroid/text/format/Time;
    .restart local v1    # "time":Ljava/util/Date;
    .restart local v2    # "t":Landroid/text/format/Time;
    :pswitch_0
    const/4 v10, 0x3

    invoke-static {v10}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v10

    .line 207
    .restart local v10    # "format":Ljava/text/DateFormat;
    goto :goto_1

    .line 203
    .end local v10    # "format":Ljava/text/DateFormat;
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v10

    .line 204
    .restart local v10    # "format":Ljava/text/DateFormat;
    nop

    .line 209
    :goto_1
    nop

    .line 211
    iput-object v10, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 215
    :goto_2
    iget-object v11, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 216
    .local v11, "text":Ljava/lang/String;
    invoke-virtual {v0, v11}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    if-nez v3, :cond_7

    .line 221
    cmp-long v16, v6, v12

    if-lez v16, :cond_6

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-wide v1, v6

    goto :goto_3

    :cond_6
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-wide v1, v12

    .line 221
    .end local v1    # "time":Ljava/util/Date;
    .end local v2    # "t":Landroid/text/format/Time;
    .restart local v17    # "time":Ljava/util/Date;
    .restart local v18    # "t":Landroid/text/format/Time;
    :goto_3
    iput-wide v1, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_5

    .line 224
    .end local v17    # "time":Ljava/util/Date;
    .end local v18    # "t":Landroid/text/format/Time;
    .restart local v1    # "time":Ljava/util/Date;
    .restart local v2    # "t":Landroid/text/format/Time;
    :cond_7
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 224
    .end local v1    # "time":Ljava/util/Date;
    .end local v2    # "t":Landroid/text/format/Time;
    .restart local v17    # "time":Ljava/util/Date;
    .restart local v18    # "t":Landroid/text/format/Time;
    iget-wide v1, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v1, v1, v14

    if-gez v1, :cond_8

    .line 226
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_5

    .line 230
    :cond_8
    cmp-long v1, v4, v8

    if-gez v1, :cond_9

    .line 231
    move-wide v1, v4

    goto :goto_4

    :cond_9
    move-wide v1, v8

    :goto_4
    iput-wide v1, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 234
    :goto_5
    return-void

    .line 154
    .end local v3    # "display":I
    .end local v4    # "twelveHoursBefore":J
    .end local v6    # "twelveHoursAfter":J
    .end local v8    # "midnightBefore":J
    .end local v10    # "format":Ljava/text/DateFormat;
    .end local v11    # "text":Ljava/lang/String;
    .end local v12    # "midnightAfter":J
    .end local v14    # "nowMillis":J
    .end local v17    # "time":Ljava/util/Date;
    .end local v18    # "t":Landroid/text/format/Time;
    :cond_a
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
