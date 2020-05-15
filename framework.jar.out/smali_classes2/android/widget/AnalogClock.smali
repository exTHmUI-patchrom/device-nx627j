.class public Landroid/widget/AnalogClock;
.super Landroid/view/View;
.source "AnalogClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 251
    new-instance v0, Landroid/widget/AnalogClock$1;

    invoke-direct {v0, p0}, Landroid/widget/AnalogClock$1;-><init>(Landroid/widget/AnalogClock;)V

    iput-object v0, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    .local v0, "r":Landroid/content/res/Resources;
    sget-object v1, Lcom/android/internal/R$styleable;->AnalogClock:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 81
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 83
    const v2, 0x108024a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 86
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 87
    iget-object v2, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 88
    const v2, 0x108024b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 91
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object v2, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 93
    const v2, 0x108024c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 96
    :cond_2
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 98
    iget-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    .line 99
    iget-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    .line 100
    return-void
.end method

.method static synthetic access$002(Landroid/widget/AnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AnalogClock;
    .param p1, "x1"    # Landroid/text/format/Time;

    .line 46
    iput-object p1, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Landroid/widget/AnalogClock;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AnalogClock;

    .line 46
    invoke-direct {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    .line 238
    iget-object v0, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 240
    iget-object v0, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    .line 241
    .local v0, "hour":I
    iget-object v1, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    .line 242
    .local v1, "minute":I
    iget-object v2, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->second:I

    .line 244
    .local v2, "second":I
    int-to-float v3, v1

    int-to-float v4, v2

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AnalogClock;->mMinutes:F

    .line 245
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/AnalogClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AnalogClock;->mHour:F

    .line 246
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 248
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0, v3}, Landroid/widget/AnalogClock;->updateContentDescription(Landroid/text/format/Time;)V

    .line 249
    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 5
    .param p1, "time"    # Landroid/text/format/Time;

    .line 266
    const/16 v0, 0x81

    .line 267
    .local v0, "flags":I
    iget-object v1, p0, Landroid/widget/AnalogClock;->mContext:Landroid/content/Context;

    .line 268
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 267
    const/16 v4, 0x81

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "contentDescription":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/widget/AnalogClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 270
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    .line 104
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 106
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 121
    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 129
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 132
    invoke-direct {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    .line 133
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 137
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 138
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    .line 142
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 177
    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 179
    iget-boolean v2, v0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 180
    .local v2, "changed":Z
    if-eqz v2, :cond_0

    .line 181
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 184
    :cond_0
    iget v3, v0, Landroid/widget/AnalogClock;->mRight:I

    iget v4, v0, Landroid/widget/AnalogClock;->mLeft:I

    sub-int/2addr v3, v4

    .line 185
    .local v3, "availableWidth":I
    iget v4, v0, Landroid/widget/AnalogClock;->mBottom:I

    iget v5, v0, Landroid/widget/AnalogClock;->mTop:I

    sub-int/2addr v4, v5

    .line 187
    .local v4, "availableHeight":I
    div-int/lit8 v5, v3, 0x2

    .line 188
    .local v5, "x":I
    div-int/lit8 v6, v4, 0x2

    .line 190
    .local v6, "y":I
    iget-object v7, v0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 191
    .local v7, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 192
    .local v8, "w":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 194
    .local v9, "h":I
    const/4 v10, 0x0

    .line 196
    .local v10, "scaled":Z
    if-lt v3, v8, :cond_1

    if-ge v4, v9, :cond_2

    .line 197
    :cond_1
    const/4 v10, 0x1

    .line 198
    int-to-float v11, v3

    int-to-float v12, v8

    div-float/2addr v11, v12

    int-to-float v12, v4

    int-to-float v13, v9

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 200
    .local v11, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 201
    int-to-float v12, v5

    int-to-float v13, v6

    invoke-virtual {v1, v11, v11, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 204
    .end local v11    # "scale":F
    :cond_2
    if-eqz v2, :cond_3

    .line 205
    div-int/lit8 v11, v8, 0x2

    sub-int v11, v5, v11

    div-int/lit8 v12, v9, 0x2

    sub-int v12, v6, v12

    div-int/lit8 v13, v8, 0x2

    add-int/2addr v13, v5

    div-int/lit8 v14, v9, 0x2

    add-int/2addr v14, v6

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 207
    :cond_3
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 210
    iget v11, v0, Landroid/widget/AnalogClock;->mHour:F

    const/high16 v12, 0x41400000    # 12.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x43b40000    # 360.0f

    mul-float/2addr v11, v12

    int-to-float v13, v5

    int-to-float v14, v6

    invoke-virtual {v1, v11, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 211
    iget-object v11, v0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 212
    .local v11, "hourHand":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_4

    .line 213
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 214
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 215
    div-int/lit8 v13, v8, 0x2

    sub-int v13, v5, v13

    div-int/lit8 v14, v9, 0x2

    sub-int v14, v6, v14

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v5

    div-int/lit8 v16, v9, 0x2

    add-int v12, v6, v16

    invoke-virtual {v11, v13, v14, v15, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    :cond_4
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 221
    iget v12, v0, Landroid/widget/AnalogClock;->mMinutes:F

    const/high16 v13, 0x42700000    # 60.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x43b40000    # 360.0f

    mul-float/2addr v12, v13

    int-to-float v13, v5

    int-to-float v14, v6

    invoke-virtual {v1, v12, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 223
    iget-object v12, v0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 224
    .local v12, "minuteHand":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    .line 225
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 226
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 227
    div-int/lit8 v13, v8, 0x2

    sub-int v13, v5, v13

    div-int/lit8 v14, v9, 0x2

    sub-int v14, v6, v14

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v5

    div-int/lit8 v16, v9, 0x2

    add-int v0, v6, v16

    invoke-virtual {v12, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 229
    :cond_5
    invoke-virtual {v12, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 232
    if-eqz v10, :cond_6

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 235
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 148
    .local v0, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 149
    .local v1, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 150
    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 152
    .local v3, "heightSize":I
    const/high16 v4, 0x3f800000    # 1.0f

    .line 153
    .local v4, "hScale":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 155
    .local v5, "vScale":F
    if-eqz v0, :cond_0

    iget v6, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    if-ge v1, v6, :cond_0

    .line 156
    int-to-float v6, v1

    iget v7, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 159
    :cond_0
    if-eqz v2, :cond_1

    iget v6, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    if-ge v3, v6, :cond_1

    .line 160
    int-to-float v6, v3

    iget v7, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 163
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 165
    .local v6, "scale":F
    iget v7, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Landroid/widget/AnalogClock;->resolveSizeAndState(III)I

    move-result v7

    iget v9, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-int v9, v9

    .line 166
    invoke-static {v9, p2, v8}, Landroid/widget/AnalogClock;->resolveSizeAndState(III)I

    move-result v8

    .line 165
    invoke-virtual {p0, v7, v8}, Landroid/widget/AnalogClock;->setMeasuredDimension(II)V

    .line 167
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 173
    return-void
.end method
