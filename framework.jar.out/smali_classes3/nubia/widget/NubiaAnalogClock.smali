.class public Lnubia/widget/NubiaAnalogClock;
.super Landroid/view/View;
.source "NubiaAnalogClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private m24Hour:Z

.field private mAmString:Ljava/lang/String;

.field private mAmpmPaint:Landroid/graphics/Paint;

.field private mAmpmString:Ljava/lang/String;

.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mContext:Landroid/content/Context;

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F

.field private mPmString:Ljava/lang/String;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/NubiaAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/NubiaAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mHandler:Landroid/os/Handler;

    .line 290
    new-instance v0, Lnubia/widget/NubiaAnalogClock$1;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaAnalogClock$1;-><init>(Lnubia/widget/NubiaAnalogClock;)V

    iput-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    iput-object p1, p0, Lnubia/widget/NubiaAnalogClock;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "ampmArray":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    iput-object v2, p0, Lnubia/widget/NubiaAnalogClock;->mAmString:Ljava/lang/String;

    .line 59
    const/4 v2, 0x1

    aget-object v3, v0, v2

    iput-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mPmString:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 62
    .local v3, "resources":Landroid/content/res/Resources;
    sget-object v4, Lcn/nubia/internal/R$styleable;->ClockWidgetAnalogClock:[I

    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 64
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    .line 66
    const v5, 0x3070011

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 69
    :cond_0
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 70
    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    .line 71
    const v5, 0x3070017

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 74
    :cond_1
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    .line 76
    const v5, 0x3070015

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 80
    :cond_2
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogClock;->is24Hour()V

    .line 82
    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 83
    new-instance v5, Landroid/text/format/Time;

    iget-object v6, p0, Lnubia/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    goto :goto_0

    .line 85
    :cond_3
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 88
    :goto_0
    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, p0, Lnubia/widget/NubiaAnalogClock;->mDialWidth:I

    .line 89
    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lnubia/widget/NubiaAnalogClock;->mDialHeight:I

    .line 91
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    const/high16 v5, 0x420c0000    # 35.0f

    invoke-virtual {v4, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 94
    .local v2, "textSize":F
    const/high16 v5, -0x10000

    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 95
    .local v1, "textColor":I
    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaAnalogClock;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClock;

    .line 25
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lnubia/widget/NubiaAnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClock;
    .param p1, "x1"    # Landroid/text/format/Time;

    .line 25
    iput-object p1, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$200(Lnubia/widget/NubiaAnalogClock;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClock;

    .line 25
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogClock;->is24Hour()V

    return-void
.end method

.method static synthetic access$300(Lnubia/widget/NubiaAnalogClock;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClock;

    .line 25
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogClock;->onTimeChanged()V

    return-void
.end method

.method private is24Hour()V
    .locals 1

    .line 260
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/NubiaAnalogClock;->m24Hour:Z

    goto :goto_0

    .line 263
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/NubiaAnalogClock;->m24Hour:Z

    .line 265
    :goto_0
    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    .line 268
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 270
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    .line 271
    .local v0, "hour":I
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    .line 272
    .local v1, "minute":I
    iget-object v2, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->second:I

    .line 274
    .local v2, "second":I
    int-to-float v3, v1

    int-to-float v4, v2

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lnubia/widget/NubiaAnalogClock;->mMinutes:F

    .line 275
    int-to-float v3, v0

    iget v4, p0, Lnubia/widget/NubiaAnalogClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lnubia/widget/NubiaAnalogClock;->mHour:F

    .line 276
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnubia/widget/NubiaAnalogClock;->mChanged:Z

    .line 279
    iget-boolean v3, p0, Lnubia/widget/NubiaAnalogClock;->m24Hour:Z

    if-nez v3, :cond_1

    .line 280
    const/16 v3, 0xc

    if-ge v0, v3, :cond_0

    .line 281
    iget-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mAmString:Ljava/lang/String;

    iput-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    goto :goto_0

    .line 283
    :cond_0
    iget-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mPmString:Ljava/lang/String;

    iput-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    goto :goto_0

    .line 286
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    .line 288
    :goto_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .line 109
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 111
    iget-boolean v0, p0, Lnubia/widget/NubiaAnalogClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/NubiaAnalogClock;->mAttached:Z

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/NubiaAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lnubia/widget/NubiaAnalogClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 126
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 133
    :goto_0
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogClock;->onTimeChanged()V

    .line 134
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 138
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 140
    iget-boolean v0, p0, Lnubia/widget/NubiaAnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/NubiaAnalogClock;->mAttached:Z

    .line 144
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 179
    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 181
    iget-boolean v2, v0, Lnubia/widget/NubiaAnalogClock;->mChanged:Z

    .line 182
    .local v2, "changed":Z
    if-eqz v2, :cond_0

    .line 183
    const/4 v3, 0x0

    iput-boolean v3, v0, Lnubia/widget/NubiaAnalogClock;->mChanged:Z

    .line 186
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaAnalogClock;->getRight()I

    move-result v3

    .line 187
    .local v3, "right":I
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaAnalogClock;->getLeft()I

    move-result v4

    .line 188
    .local v4, "left":I
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaAnalogClock;->getBottom()I

    move-result v5

    .line 189
    .local v5, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaAnalogClock;->getTop()I

    move-result v6

    .line 191
    .local v6, "top":I
    sub-int v7, v3, v4

    .line 192
    .local v7, "availableWidth":I
    sub-int v8, v5, v6

    .line 194
    .local v8, "availableHeight":I
    div-int/lit8 v9, v7, 0x2

    .line 195
    .local v9, "x":I
    div-int/lit8 v10, v8, 0x2

    .line 197
    .local v10, "y":I
    iget-object v11, v0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 198
    .local v11, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 199
    .local v12, "w":I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 201
    .local v13, "h":I
    const/4 v14, 0x0

    .line 203
    .local v14, "scaled":Z
    if-lt v7, v12, :cond_2

    if-ge v8, v13, :cond_1

    goto :goto_0

    .line 211
    :cond_1
    move/from16 v16, v3

    move/from16 v17, v4

    goto :goto_1

    .line 204
    :cond_2
    :goto_0
    const/4 v14, 0x1

    .line 205
    int-to-float v15, v7

    move/from16 v16, v3

    int-to-float v3, v12

    .end local v3    # "right":I
    .local v16, "right":I
    div-float/2addr v15, v3

    int-to-float v3, v8

    move/from16 v17, v4

    int-to-float v4, v13

    .end local v4    # "left":I
    .local v17, "left":I
    div-float/2addr v3, v4

    invoke-static {v15, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 207
    .local v3, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 208
    int-to-float v4, v9

    int-to-float v15, v10

    invoke-virtual {v1, v3, v3, v4, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 211
    .end local v3    # "scale":F
    :goto_1
    if-eqz v2, :cond_3

    .line 212
    div-int/lit8 v3, v12, 0x2

    sub-int v3, v9, v3

    div-int/lit8 v4, v13, 0x2

    sub-int v4, v10, v4

    div-int/lit8 v15, v12, 0x2

    add-int/2addr v15, v9

    div-int/lit8 v18, v13, 0x2

    move/from16 v19, v5

    add-int v5, v10, v18

    .end local v5    # "bottom":I
    .local v19, "bottom":I
    invoke-virtual {v11, v3, v4, v15, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 214
    .end local v19    # "bottom":I
    .restart local v5    # "bottom":I
    :cond_3
    move/from16 v19, v5

    .end local v5    # "bottom":I
    .restart local v19    # "bottom":I
    :goto_2
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 216
    iget-boolean v3, v0, Lnubia/widget/NubiaAnalogClock;->m24Hour:Z

    if-nez v3, :cond_4

    iget-object v3, v0, Lnubia/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 217
    iget-object v3, v0, Lnubia/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 218
    .local v3, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget-object v4, v0, Lnubia/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    div-int/lit8 v5, v12, 0x2

    sub-int v5, v9, v5

    int-to-float v5, v5

    div-int/lit8 v15, v13, 0x2

    add-int/2addr v15, v10

    int-to-float v15, v15

    move/from16 v20, v6

    iget v6, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    .end local v6    # "top":I
    .local v20, "top":I
    sub-float/2addr v15, v6

    iget-object v6, v0, Lnubia/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v15, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .end local v3    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    goto :goto_3

    .line 221
    .end local v20    # "top":I
    .restart local v6    # "top":I
    :cond_4
    move/from16 v20, v6

    .end local v6    # "top":I
    .restart local v20    # "top":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 222
    iget v3, v0, Lnubia/widget/NubiaAnalogClock;->mMinutes:F

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v3, v4

    int-to-float v5, v9

    int-to-float v6, v10

    invoke-virtual {v1, v3, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 223
    iget-object v3, v0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 224
    .local v3, "minuteHand":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    .line 225
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 226
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 227
    div-int/lit8 v5, v12, 0x2

    sub-int v5, v9, v5

    div-int/lit8 v6, v13, 0x2

    sub-int v6, v10, v6

    div-int/lit8 v15, v12, 0x2

    add-int/2addr v15, v9

    div-int/lit8 v18, v13, 0x2

    add-int v4, v10, v18

    invoke-virtual {v3, v5, v6, v15, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 229
    :cond_5
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 233
    iget v4, v0, Lnubia/widget/NubiaAnalogClock;->mHour:F

    const/high16 v5, 0x41400000    # 12.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float/2addr v4, v5

    int-to-float v5, v9

    int-to-float v6, v10

    invoke-virtual {v1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 234
    iget-object v4, v0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 235
    .local v4, "hourHand":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6

    .line 236
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 237
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 238
    div-int/lit8 v5, v12, 0x2

    sub-int v5, v9, v5

    div-int/lit8 v6, v13, 0x2

    sub-int v6, v10, v6

    div-int/lit8 v15, v12, 0x2

    add-int/2addr v15, v9

    div-int/lit8 v18, v13, 0x2

    add-int v0, v10, v18

    invoke-virtual {v4, v5, v6, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 240
    :cond_6
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 244
    if-eqz v14, :cond_7

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 247
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 150
    .local v0, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 151
    .local v1, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 152
    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 154
    .local v3, "heightSize":I
    const/high16 v4, 0x3f800000    # 1.0f

    .line 155
    .local v4, "hScale":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 157
    .local v5, "vScale":F
    if-eqz v0, :cond_0

    iget v6, p0, Lnubia/widget/NubiaAnalogClock;->mDialWidth:I

    if-ge v1, v6, :cond_0

    .line 158
    int-to-float v6, v1

    iget v7, p0, Lnubia/widget/NubiaAnalogClock;->mDialWidth:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 161
    :cond_0
    if-eqz v2, :cond_1

    iget v6, p0, Lnubia/widget/NubiaAnalogClock;->mDialHeight:I

    if-ge v3, v6, :cond_1

    .line 162
    int-to-float v6, v3

    iget v7, p0, Lnubia/widget/NubiaAnalogClock;->mDialHeight:I

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 165
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 167
    .local v6, "scale":F
    iget v7, p0, Lnubia/widget/NubiaAnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    invoke-static {v7, p1}, Lnubia/widget/NubiaAnalogClock;->resolveSize(II)I

    move-result v7

    iget v8, p0, Lnubia/widget/NubiaAnalogClock;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v8, v8

    .line 168
    invoke-static {v8, p2}, Lnubia/widget/NubiaAnalogClock;->resolveSize(II)I

    move-result v8

    .line 167
    invoke-virtual {p0, v7, v8}, Lnubia/widget/NubiaAnalogClock;->setMeasuredDimension(II)V

    .line 169
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/NubiaAnalogClock;->mChanged:Z

    .line 175
    return-void
.end method

.method public setLightClock(Z)V
    .locals 4
    .param p1, "isLight"    # Z

    .line 309
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 312
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 313
    .local v0, "resources":Landroid/content/res/Resources;
    iget v1, p0, Lnubia/widget/NubiaAnalogClock;->mDialWidth:I

    const/16 v2, 0x21c

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 314
    const v1, 0x307000e

    if-eqz p1, :cond_1

    .line 315
    const v2, 0x307000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 316
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 317
    const v1, 0x307000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 319
    :cond_1
    const v2, 0x3070012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 320
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 321
    const v1, 0x307000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 323
    :goto_0
    iput-boolean v3, p0, Lnubia/widget/NubiaAnalogClock;->mChanged:Z

    .line 324
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClock;->invalidate()V

    goto :goto_2

    .line 325
    :cond_2
    iget v1, p0, Lnubia/widget/NubiaAnalogClock;->mDialWidth:I

    const/16 v2, 0x193

    if-ne v1, v2, :cond_4

    .line 326
    const v1, 0x3070016

    if-eqz p1, :cond_3

    .line 327
    const v2, 0x307000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 328
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 329
    const v1, 0x3070013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 331
    :cond_3
    const v2, 0x3070010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 332
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 333
    const v1, 0x3070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 335
    :goto_1
    iput-boolean v3, p0, Lnubia/widget/NubiaAnalogClock;->mChanged:Z

    .line 336
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClock;->invalidate()V

    .line 339
    :cond_4
    :goto_2
    return-void

    .line 310
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_5
    :goto_3
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezone"    # Ljava/lang/String;

    .line 251
    if-nez p1, :cond_0

    .line 252
    return-void

    .line 253
    :cond_0
    iput-object p1, p0, Lnubia/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    .line 254
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 255
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogClock;->onTimeChanged()V

    .line 256
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClock;->invalidate()V

    .line 257
    return-void
.end method
