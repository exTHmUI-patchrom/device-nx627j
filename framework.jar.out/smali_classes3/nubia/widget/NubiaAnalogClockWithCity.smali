.class public Lnubia/widget/NubiaAnalogClockWithCity;
.super Landroid/widget/FrameLayout;
.source "NubiaAnalogClockWithCity.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mAmString:Ljava/lang/String;

.field private mAmpmString:Ljava/lang/String;

.field private mAnalogClock:Lnubia/widget/NubiaAnalogClock;

.field private mApmView:Landroid/widget/TextView;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mCityView:Landroid/widget/TextView;

.field private mDateFormat:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24Hour:Z

.field private mPmString:Ljava/lang/String;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/NubiaAnalogClockWithCity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/NubiaAnalogClockWithCity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 211
    new-instance v0, Lnubia/widget/NubiaAnalogClockWithCity$1;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaAnalogClockWithCity$1;-><init>(Lnubia/widget/NubiaAnalogClockWithCity;)V

    iput-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    new-instance v0, Lnubia/widget/NubiaAnalogClockWithCity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lnubia/widget/NubiaAnalogClockWithCity$2;-><init>(Lnubia/widget/NubiaAnalogClockWithCity;Landroid/os/Handler;)V

    iput-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 53
    const-string v0, "layout_inflater"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 55
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x1

    const v2, 0x30a0005

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    const v2, 0x3080001

    invoke-virtual {p0, v2}, Lnubia/widget/NubiaAnalogClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnubia/widget/NubiaAnalogClock;

    iput-object v2, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAnalogClock:Lnubia/widget/NubiaAnalogClock;

    .line 60
    const v2, 0x3080017

    invoke-virtual {p0, v2}, Lnubia/widget/NubiaAnalogClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    .line 61
    const v2, 0x3080016

    invoke-virtual {p0, v2}, Lnubia/widget/NubiaAnalogClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateView:Landroid/widget/TextView;

    .line 62
    const v2, 0x3080003

    invoke-virtual {p0, v2}, Lnubia/widget/NubiaAnalogClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mApmView:Landroid/widget/TextView;

    .line 63
    sget-object v2, Lcn/nubia/internal/R$styleable;->ClockWidgetAnalogClockWithCity:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 67
    .local v2, "a":Landroid/content/res/TypedArray;
    nop

    .line 68
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 71
    .local v5, "cityTextSize":F
    nop

    .line 72
    const/4 v6, -0x1

    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 76
    .local v7, "cityTextColor":I
    nop

    .line 77
    const/4 v8, 0x3

    invoke-virtual {v2, v8, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 80
    .local v4, "dateTextSize":F
    nop

    .line 81
    const/4 v8, 0x2

    invoke-virtual {v2, v8, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 86
    .local v8, "dateTextColor":I
    float-to-int v9, v5

    if-eqz v9, :cond_0

    .line 87
    iget-object v9, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-virtual {v9, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    :cond_0
    if-eq v7, v6, :cond_1

    .line 89
    iget-object v9, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    :cond_1
    float-to-int v9, v4

    if-eqz v9, :cond_2

    .line 93
    iget-object v9, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v9, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 94
    :cond_2
    if-eq v8, v6, :cond_3

    .line 95
    iget-object v6, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    iput-object v6, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 100
    .local v6, "res":Landroid/content/res/Resources;
    const v9, 0x30c0012

    .line 101
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateFormat:Ljava/lang/String;

    .line 103
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mIs24Hour:Z

    .line 105
    new-instance v9, Ljava/text/DateFormatSymbols;

    invoke-direct {v9}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v9}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, "ampmArray":[Ljava/lang/String;
    aget-object v3, v9, v3

    iput-object v3, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAmString:Ljava/lang/String;

    .line 107
    aget-object v1, v9, v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mPmString:Ljava/lang/String;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaAnalogClockWithCity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClockWithCity;

    .line 31
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnubia/widget/NubiaAnalogClockWithCity;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClockWithCity;

    .line 31
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$202(Lnubia/widget/NubiaAnalogClockWithCity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClockWithCity;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mIs24Hour:Z

    return p1
.end method

.method static synthetic access$300(Lnubia/widget/NubiaAnalogClockWithCity;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClockWithCity;

    .line 31
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogClockWithCity;->updateTime()V

    return-void
.end method

.method private updateTime()V
    .locals 8

    .line 180
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 181
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const v7, 0x10010

    .line 184
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "dateFormat":Ljava/lang/String;
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-boolean v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mIs24Hour:Z

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mApmView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 191
    :cond_2
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mApmView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAmString:Ljava/lang/String;

    goto :goto_1

    .line 193
    :cond_3
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mPmString:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAmpmString:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mApmView:Landroid/widget/TextView;

    iget-object v2, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAmpmString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 120
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 122
    iget-boolean v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAttached:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 123
    iput-boolean v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAttached:Z

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    .line 138
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 142
    :cond_1
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogClockWithCity;->updateTime()V

    .line 143
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 200
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 202
    iget-boolean v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAttached:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAttached:Z

    .line 207
    :cond_0
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 209
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 2
    .param p1, "city"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 171
    if-nez p1, :cond_0

    .line 172
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method public setLightClock(Z)V
    .locals 4
    .param p1, "isLight"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 238
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAnalogClock:Lnubia/widget/NubiaAnalogClock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mApmView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAnalogClock:Lnubia/widget/NubiaAnalogClock;

    invoke-virtual {v0, p1}, Lnubia/widget/NubiaAnalogClock;->setLightClock(Z)V

    .line 242
    const/16 v0, 0xff

    if-eqz p1, :cond_1

    .line 243
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mApmView:Landroid/widget/TextView;

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    const/16 v2, 0x3b

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mApmView:Landroid/widget/TextView;

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    :goto_0
    return-void

    .line 239
    :cond_2
    :goto_1
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 9
    .param p1, "timezone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 148
    if-nez p1, :cond_0

    .line 149
    return-void

    .line 150
    :cond_0
    iput-object p1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 152
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAnalogClock:Lnubia/widget/NubiaAnalogClock;

    invoke-virtual {v0, p1}, Lnubia/widget/NubiaAnalogClock;->setTimezone(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 154
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const v8, 0x10010

    .line 154
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "dateFormat":Ljava/lang/String;
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-boolean v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mIs24Hour:Z

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mApmView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 161
    :cond_2
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mApmView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAmString:Ljava/lang/String;

    goto :goto_1

    .line 163
    :cond_3
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mPmString:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAmpmString:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mApmView:Landroid/widget/TextView;

    iget-object v2, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAmpmString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_2
    return-void
.end method
