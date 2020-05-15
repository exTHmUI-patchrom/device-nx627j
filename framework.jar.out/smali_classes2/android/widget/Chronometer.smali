.class public Landroid/widget/Chronometer;
.super Landroid/widget/TextView;
.source "Chronometer.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Chronometer$OnChronometerTickListener;
    }
.end annotation


# static fields
.field private static final HOUR_IN_SEC:I = 0xe10

.field private static final MIN_IN_SEC:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "Chronometer"


# instance fields
.field private mBase:J

.field private mCountDown:Z

.field private mFormat:Ljava/lang/String;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mFormatterArgs:[Ljava/lang/Object;

.field private mFormatterLocale:Ljava/util/Locale;

.field private mLogged:Z

.field private mNow:J

.field private mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

.field private mRecycle:Ljava/lang/StringBuilder;

.field private mRunning:Z

.field private mStarted:Z

.field private final mTickRunnable:Ljava/lang/Runnable;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 83
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    .line 334
    new-instance v1, Landroid/widget/Chronometer$1;

    invoke-direct {v1, p0}, Landroid/widget/Chronometer$1;-><init>(Landroid/widget/Chronometer;)V

    iput-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    .line 116
    sget-object v1, Lcom/android/internal/R$styleable;->Chronometer:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 118
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Chronometer;->setCountDown(Z)V

    .line 120
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    invoke-direct {p0}, Landroid/widget/Chronometer;->init()V

    .line 123
    return-void
.end method

.method static synthetic access$000(Landroid/widget/Chronometer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Chronometer;

    .line 59
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/Chronometer;J)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Chronometer;
    .param p1, "x1"    # J

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/Chronometer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Chronometer;

    .line 59
    iget-object v0, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static formatDuration(J)Ljava/lang/String;
    .locals 8
    .param p0, "ms"    # J

    .line 354
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    long-to-int v0, v0

    .line 355
    .local v0, "duration":I
    if-gez v0, :cond_0

    .line 356
    neg-int v0, v0

    .line 359
    :cond_0
    const/4 v1, 0x0

    .line 360
    .local v1, "h":I
    const/4 v2, 0x0

    .line 362
    .local v2, "m":I
    const/16 v3, 0xe10

    if-lt v0, v3, :cond_1

    .line 363
    div-int/lit16 v1, v0, 0xe10

    .line 364
    mul-int/lit16 v3, v1, 0xe10

    sub-int/2addr v0, v3

    .line 366
    :cond_1
    const/16 v3, 0x3c

    if-lt v0, v3, :cond_2

    .line 367
    div-int/lit8 v2, v0, 0x3c

    .line 368
    mul-int/lit8 v3, v2, 0x3c

    sub-int/2addr v0, v3

    .line 370
    :cond_2
    move v3, v0

    .line 372
    .local v3, "s":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v4, "measures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/util/Measure;>;"
    if-lez v1, :cond_3

    .line 374
    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_3
    if-lez v2, :cond_4

    .line 377
    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_4
    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-object v6, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v5, v6}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v5

    .line 382
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/icu/util/Measure;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/icu/util/Measure;

    invoke-virtual {v5, v6}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v5

    .line 381
    return-object v5
.end method

.method private init()V
    .locals 2

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    .line 127
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 128
    return-void
.end method

.method private updateRunning()V
    .locals 4

    .line 321
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Chronometer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 322
    .local v0, "running":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mRunning:Z

    if-eq v0, v1, :cond_2

    .line 323
    if-eqz v0, :cond_1

    .line 324
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/widget/Chronometer;->updateText(J)V

    .line 325
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 326
    iget-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/Chronometer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 328
    :cond_1
    iget-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 330
    :goto_1
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    .line 332
    :cond_2
    return-void
.end method

.method private declared-synchronized updateText(J)V
    .locals 10
    .param p1, "now"    # J

    monitor-enter p0

    .line 286
    :try_start_0
    iput-wide p1, p0, Landroid/widget/Chronometer;->mNow:J

    .line 287
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mCountDown:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long v0, p1, v0

    .line 288
    .local v0, "seconds":J
    :goto_0
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    move-wide v0, v2

    .line 289
    const/4 v2, 0x0

    .line 290
    .local v2, "negative":Z
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    .line 291
    neg-long v0, v0

    .line 292
    const/4 v2, 0x1

    .line 294
    :cond_1
    iget-object v3, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    invoke-static {v3, v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "text":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 296
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10403d0

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v3, v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 299
    :cond_2
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 300
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 301
    .local v6, "loc":Ljava/util/Locale;
    iget-object v7, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 302
    :cond_3
    iput-object v6, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    .line 303
    new-instance v7, Ljava/util/Formatter;

    iget-object v8, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v7, v8, v6}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v7, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    .line 305
    :cond_4
    iget-object v7, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 306
    iget-object v7, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    aput-object v3, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :try_start_1
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    iget-object v7, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    iget-object v8, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    invoke-virtual {v5, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 309
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    .line 315
    goto :goto_1

    .line 310
    :catch_0
    move-exception v5

    .line 311
    .local v5, "ex":Ljava/util/IllegalFormatException;
    :try_start_2
    iget-boolean v7, p0, Landroid/widget/Chronometer;->mLogged:Z

    if-nez v7, :cond_5

    .line 312
    const-string v7, "Chronometer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal format string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput-boolean v4, p0, Landroid/widget/Chronometer;->mLogged:Z

    .line 317
    .end local v5    # "ex":Ljava/util/IllegalFormatException;
    .end local v6    # "loc":Ljava/util/Locale;
    :cond_5
    :goto_1
    invoke-virtual {p0, v3}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 285
    .end local v0    # "seconds":J
    .end local v2    # "negative":Z
    .end local v3    # "text":Ljava/lang/String;
    .end local p1    # "now":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/Chronometer;
    throw p1
.end method


# virtual methods
.method dispatchChronometerTick()V
    .locals 1

    .line 346
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    invoke-interface {v0, p0}, Landroid/widget/Chronometer$OnChronometerTickListener;->onChronometerTick(Landroid/widget/Chronometer;)V

    .line 349
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 392
    const-class v0, Landroid/widget/Chronometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBase()J
    .locals 2

    .line 184
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    return-wide v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 4

    .line 387
    iget-wide v0, p0, Landroid/widget/Chronometer;->mNow:J

    iget-wide v2, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/widget/Chronometer;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getOnChronometerTickListener()Landroid/widget/Chronometer$OnChronometerTickListener;
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    return-object v0
.end method

.method public isCountDown()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mCountDown:Z

    return v0
.end method

.method public isTheFinalCountDown()Z
    .locals 4

    .line 157
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://youtu.be/9jK-NcRmVcw"

    .line 158
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.BROWSABLE"

    .line 159
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x81000

    .line 160
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    const/4 v0, 0x1

    return v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 267
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    .line 269
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 270
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 281
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 282
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 283
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 274
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 275
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    .line 276
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 277
    return-void
.end method

.method public setBase(J)V
    .locals 2
    .param p1, "base"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 175
    iput-wide p1, p0, Landroid/widget/Chronometer;->mBase:J

    .line 176
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 178
    return-void
.end method

.method public setCountDown(Z)V
    .locals 2
    .param p1, "countDown"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 139
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mCountDown:Z

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 141
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 200
    iput-object p1, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    .line 201
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    return-void
.end method

.method public setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/Chronometer$OnChronometerTickListener;

    .line 219
    iput-object p1, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    .line 220
    return-void
.end method

.method public setStarted(Z)V
    .locals 0
    .param p1, "started"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 261
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 262
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 263
    return-void
.end method

.method public start()V
    .locals 1

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 240
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 241
    return-void
.end method

.method public stop()V
    .locals 1

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 252
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 253
    return-void
.end method
