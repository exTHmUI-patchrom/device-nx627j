.class public Lnubia/widget/NubiaDigitalClockWithCity;
.super Landroid/widget/FrameLayout;
.source "NubiaDigitalClockWithCity.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaDigitalClockWithCity$HourFormatChangeObserver;
    }
.end annotation


# instance fields
.field private m12HourFormat:Ljava/lang/String;

.field private m24HourFormat:Ljava/lang/String;

.field private mAmString:Ljava/lang/String;

.field private mAmpmString:Ljava/lang/String;

.field private mAmpmView:Landroid/widget/TextView;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mCityView:Landroid/widget/TextView;

.field private mDateFormat:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHourFormatChangeObserver:Landroid/database/ContentObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24Hour:Z

.field private mPmString:Ljava/lang/String;

.field private mTimeView:Landroid/widget/TextView;

.field private mTimeZone:Ljava/lang/String;

.field private mWeekFormat:Ljava/lang/String;

.field private mWeekView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/NubiaDigitalClockWithCity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/NubiaDigitalClockWithCity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 92
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v2, Lnubia/widget/NubiaDigitalClockWithCity$1;

    invoke-direct {v2, v0}, Lnubia/widget/NubiaDigitalClockWithCity$1;-><init>(Lnubia/widget/NubiaDigitalClockWithCity;)V

    iput-object v2, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    const-string v2, "layout_inflater"

    .line 95
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 96
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x1

    const v4, 0x30a0007

    invoke-virtual {v2, v4, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 100
    const v4, 0x30800c4

    invoke-virtual {v0, v4}, Lnubia/widget/NubiaDigitalClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    .line 101
    iget-object v4, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fonts/nubia_bold.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    const/high16 v4, 0x3080000

    invoke-virtual {v0, v4}, Lnubia/widget/NubiaDigitalClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    .line 104
    const v4, 0x3080018

    invoke-virtual {v0, v4}, Lnubia/widget/NubiaDigitalClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    .line 105
    const v4, 0x3080031

    invoke-virtual {v0, v4}, Lnubia/widget/NubiaDigitalClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    .line 106
    const v4, 0x30800ca

    invoke-virtual {v0, v4}, Lnubia/widget/NubiaDigitalClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    .line 108
    sget-object v4, Lcn/nubia/internal/R$styleable;->ClockWidgetDigitalClockWithCity:[I

    const/4 v5, 0x0

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual {v1, v6, v4, v7, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 112
    .local v4, "a":Landroid/content/res/TypedArray;
    nop

    .line 113
    const/4 v8, 0x0

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .line 116
    .local v9, "ampmTextSize":F
    nop

    .line 117
    const/4 v10, 0x7

    invoke-virtual {v4, v10, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 120
    .local v10, "timeTextSize":F
    nop

    .line 121
    const/4 v11, 0x3

    invoke-virtual {v4, v11, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 124
    .local v11, "cityTextSize":F
    nop

    .line 125
    const/4 v12, 0x5

    invoke-virtual {v4, v12, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 129
    .local v8, "dateTextSize":F
    float-to-int v12, v9

    if-eqz v12, :cond_0

    .line 130
    iget-object v12, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    invoke-virtual {v12, v3, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 132
    :cond_0
    float-to-int v12, v10

    if-eqz v12, :cond_1

    .line 133
    iget-object v12, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v12, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 135
    :cond_1
    float-to-int v12, v11

    if-eqz v12, :cond_2

    .line 136
    iget-object v12, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-virtual {v12, v3, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 138
    :cond_2
    float-to-int v12, v8

    if-eqz v12, :cond_3

    .line 139
    iget-object v12, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v12, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    iget-object v12, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v12, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 143
    :cond_3
    nop

    .line 144
    const/4 v12, -0x1

    invoke-virtual {v4, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    .line 147
    .local v13, "ampmTextColor":I
    const/4 v14, 0x6

    .line 148
    invoke-virtual {v4, v14, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 151
    .local v14, "timeTextColor":I
    const/4 v15, 0x2

    .line 152
    invoke-virtual {v4, v15, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    .line 155
    .local v15, "cityTextColor":I
    const/4 v3, 0x4

    .line 156
    invoke-virtual {v4, v3, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 160
    .local v3, "dateTextColor":I
    if-eq v13, v12, :cond_4

    .line 161
    iget-object v5, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    :cond_4
    if-eq v14, v12, :cond_5

    .line 163
    iget-object v5, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    :cond_5
    if-eq v15, v12, :cond_6

    .line 165
    iget-object v5, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    :cond_6
    if-eq v3, v12, :cond_7

    .line 169
    iget-object v5, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v5, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    :cond_7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    iget-object v5, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeZone:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 176
    iget-object v5, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeZone:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    goto :goto_0

    .line 178
    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    .line 181
    :goto_0
    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-direct {v5}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "ampmArray":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v5, v12

    iput-object v12, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmString:Ljava/lang/String;

    .line 183
    const/4 v12, 0x1

    aget-object v12, v5, v12

    iput-object v12, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mPmString:Ljava/lang/String;

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 186
    .local v12, "res":Landroid/content/res/Resources;
    move-object/from16 v16, v2

    const v2, 0x30c000e

    .line 187
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .local v16, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateFormat:Ljava/lang/String;

    .line 188
    const v2, 0x30c000f

    .line 189
    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnubia/widget/NubiaDigitalClockWithCity;->m12HourFormat:Ljava/lang/String;

    .line 190
    const v2, 0x30c0010

    .line 191
    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnubia/widget/NubiaDigitalClockWithCity;->m24HourFormat:Ljava/lang/String;

    .line 192
    const v2, 0x30c0011

    .line 193
    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekFormat:Ljava/lang/String;

    .line 195
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mIs24Hour:Z

    .line 196
    return-void
.end method

.method static synthetic access$002(Lnubia/widget/NubiaDigitalClockWithCity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaDigitalClockWithCity;
    .param p1, "x1"    # Ljava/util/Calendar;

    .line 31
    iput-object p1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lnubia/widget/NubiaDigitalClockWithCity;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaDigitalClockWithCity;

    .line 31
    invoke-direct {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lnubia/widget/NubiaDigitalClockWithCity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaDigitalClockWithCity;

    .line 31
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lnubia/widget/NubiaDigitalClockWithCity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaDigitalClockWithCity;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mIs24Hour:Z

    return p1
.end method

.method private onTimeChanged()V
    .locals 10

    .line 243
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 244
    iget-boolean v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mIs24Hour:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->m24HourFormat:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->m12HourFormat:Ljava/lang/String;

    .line 245
    .local v0, "timeFormat":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 247
    .local v1, "time":Ljava/lang/CharSequence;
    iget-object v2, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v2, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 252
    iget-boolean v2, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mIs24Hour:Z

    if-eqz v2, :cond_1

    .line 253
    iget-object v2, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 255
    :cond_1
    iget-object v2, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v2, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmString:Ljava/lang/String;

    goto :goto_1

    .line 257
    :cond_2
    iget-object v2, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mPmString:Ljava/lang/String;

    :goto_1
    iput-object v2, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmString:Ljava/lang/String;

    .line 258
    iget-object v2, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    iget-object v3, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const v9, 0x10010

    .line 261
    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "date":Ljava/lang/String;
    iget-object v3, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v3, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekFormat:Ljava/lang/String;

    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 267
    .local v3, "week":Ljava/lang/CharSequence;
    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .line 208
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 210
    iget-boolean v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAttached:Z

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAttached:Z

    .line 213
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 221
    new-instance v2, Lnubia/widget/NubiaDigitalClockWithCity$HourFormatChangeObserver;

    invoke-direct {v2, p0}, Lnubia/widget/NubiaDigitalClockWithCity$HourFormatChangeObserver;-><init>(Lnubia/widget/NubiaDigitalClockWithCity;)V

    iput-object v2, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mHourFormatChangeObserver:Landroid/database/ContentObserver;

    .line 222
    invoke-virtual {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mHourFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 227
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->onTimeChanged()V

    .line 228
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 232
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 234
    iget-boolean v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAttached:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    invoke-virtual {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mHourFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAttached:Z

    .line 240
    :cond_0
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 2
    .param p1, "cityName"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :goto_0
    return-void
.end method

.method public setLightClock(Z)V
    .locals 4
    .param p1, "isLight"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 294
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 297
    :cond_0
    const/16 v0, 0xff

    if-eqz p1, :cond_1

    .line 298
    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    const/16 v2, 0x3b

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    :goto_0
    return-void

    .line 295
    :cond_2
    :goto_1
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 314
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    return-void

    .line 315
    :cond_1
    :goto_0
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    return-void

    .line 286
    :cond_0
    iput-object p1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeZone:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeZone:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    .line 288
    invoke-direct {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->onTimeChanged()V

    .line 289
    return-void
.end method
