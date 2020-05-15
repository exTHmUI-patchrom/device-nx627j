.class public Landroid/widget/DigitalClock;
.super Landroid/widget/TextView;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DigitalClock$FormatChangeObserver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mCalendar:Ljava/util/Calendar;

.field mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 52
    invoke-direct {p0}, Landroid/widget/DigitalClock;->initClock()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 57
    invoke-direct {p0}, Landroid/widget/DigitalClock;->initClock()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DigitalClock;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/DigitalClock;

    .line 35
    iget-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/DigitalClock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DigitalClock;

    .line 35
    iget-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DigitalClock;

    .line 35
    iget-object v0, p0, Landroid/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DigitalClock;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DigitalClock;

    .line 35
    invoke-direct {p0}, Landroid/widget/DigitalClock;->setFormat()V

    return-void
.end method

.method private initClock()V
    .locals 1

    .line 61
    iget-object v0, p0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 64
    :cond_0
    return-void
.end method

.method private setFormat()V
    .locals 1

    .line 104
    invoke-virtual {p0}, Landroid/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DigitalClock;->mFormat:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 121
    const-class v0, Landroid/widget/DigitalClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 69
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 71
    new-instance v0, Landroid/widget/DigitalClock$FormatChangeObserver;

    invoke-direct {v0, p0}, Landroid/widget/DigitalClock$FormatChangeObserver;-><init>(Landroid/widget/DigitalClock;)V

    iput-object v0, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    .line 72
    invoke-virtual {p0}, Landroid/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    invoke-direct {p0}, Landroid/widget/DigitalClock;->setFormat()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Landroid/widget/DigitalClock$1;

    invoke-direct {v0, p0}, Landroid/widget/DigitalClock$1;-><init>(Landroid/widget/DigitalClock;)V

    iput-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    .line 92
    iget-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 93
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 99
    invoke-virtual {p0}, Landroid/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 101
    return-void
.end method
