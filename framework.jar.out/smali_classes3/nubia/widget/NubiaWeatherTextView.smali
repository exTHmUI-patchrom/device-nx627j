.class public Lnubia/widget/NubiaWeatherTextView;
.super Landroid/widget/TextView;
.source "NubiaWeatherTextView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaWeatherTextView$HourFormatChangeObserver;
    }
.end annotation


# instance fields
.field private mAmPmString:Ljava/lang/String;

.field private mAmString:Ljava/lang/String;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mContentobserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHour24:Z

.field private mPmString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaWeatherTextView;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lnubia/widget/NubiaWeatherTextView$1;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaWeatherTextView$1;-><init>(Lnubia/widget/NubiaWeatherTextView;)V

    iput-object v0, p0, Lnubia/widget/NubiaWeatherTextView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/NubiaWeatherTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnubia/widget/NubiaWeatherTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaWeatherTextView;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lnubia/widget/NubiaWeatherTextView$1;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaWeatherTextView$1;-><init>(Lnubia/widget/NubiaWeatherTextView;)V

    iput-object v0, p0, Lnubia/widget/NubiaWeatherTextView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "ampmArray":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lnubia/widget/NubiaWeatherTextView;->mAmString:Ljava/lang/String;

    .line 48
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lnubia/widget/NubiaWeatherTextView;->mPmString:Ljava/lang/String;

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaWeatherTextView;->mCalendar:Ljava/util/Calendar;

    .line 50
    invoke-virtual {p0}, Lnubia/widget/NubiaWeatherTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lnubia/widget/NubiaWeatherTextView;->mIsHour24:Z

    .line 51
    return-void
.end method

.method static synthetic access$002(Lnubia/widget/NubiaWeatherTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaWeatherTextView;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lnubia/widget/NubiaWeatherTextView;->mIsHour24:Z

    return p1
.end method

.method static synthetic access$100(Lnubia/widget/NubiaWeatherTextView;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaWeatherTextView;

    .line 22
    invoke-direct {p0}, Lnubia/widget/NubiaWeatherTextView;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$202(Lnubia/widget/NubiaWeatherTextView;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaWeatherTextView;
    .param p1, "x1"    # Ljava/util/Calendar;

    .line 22
    iput-object p1, p0, Lnubia/widget/NubiaWeatherTextView;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$300(Lnubia/widget/NubiaWeatherTextView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaWeatherTextView;

    .line 22
    iget-object v0, p0, Lnubia/widget/NubiaWeatherTextView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 3

    .line 109
    iget-object v0, p0, Lnubia/widget/NubiaWeatherTextView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 110
    iget-boolean v0, p0, Lnubia/widget/NubiaWeatherTextView;->mIsHour24:Z

    if-eqz v0, :cond_0

    .line 111
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaWeatherTextView;->setVisibility(I)V

    goto :goto_1

    .line 113
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaWeatherTextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lnubia/widget/NubiaWeatherTextView;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnubia/widget/NubiaWeatherTextView;->mAmString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnubia/widget/NubiaWeatherTextView;->mPmString:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lnubia/widget/NubiaWeatherTextView;->mAmPmString:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lnubia/widget/NubiaWeatherTextView;->mAmPmString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaWeatherTextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .line 55
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 56
    iget-boolean v0, p0, Lnubia/widget/NubiaWeatherTextView;->mAttached:Z

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/NubiaWeatherTextView;->mAttached:Z

    .line 58
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lnubia/widget/NubiaWeatherTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lnubia/widget/NubiaWeatherTextView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lnubia/widget/NubiaWeatherTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 63
    new-instance v2, Lnubia/widget/NubiaWeatherTextView$HourFormatChangeObserver;

    invoke-direct {v2, p0}, Lnubia/widget/NubiaWeatherTextView$HourFormatChangeObserver;-><init>(Lnubia/widget/NubiaWeatherTextView;)V

    iput-object v2, p0, Lnubia/widget/NubiaWeatherTextView;->mContentobserver:Landroid/database/ContentObserver;

    .line 64
    invoke-virtual {p0}, Lnubia/widget/NubiaWeatherTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lnubia/widget/NubiaWeatherTextView;->mContentobserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 66
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lnubia/widget/NubiaWeatherTextView;->onTimeChanged()V

    .line 67
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 71
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 72
    iget-boolean v0, p0, Lnubia/widget/NubiaWeatherTextView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lnubia/widget/NubiaWeatherTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaWeatherTextView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    invoke-virtual {p0}, Lnubia/widget/NubiaWeatherTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaWeatherTextView;->mContentobserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/NubiaWeatherTextView;->mAttached:Z

    .line 77
    :cond_0
    return-void
.end method
