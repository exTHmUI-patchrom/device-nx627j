.class public Lnubia/fancydrawable/TimeDrawable;
.super Lnubia/fancydrawable/FancyDrawable;
.source "TimeDrawable.java"


# instance fields
.field private isRuning:Z

.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mDial:Landroid/graphics/Bitmap;

.field private mDialHeight:I

.field private mDialLock:Landroid/graphics/Bitmap;

.field private mDialWidth:I

.field private mHourHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mHours:F

.field private mMinuteHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mMinutes:F

.field private mSecondHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mSeconds:F

.field private tickRunnable:Ljava/lang/Runnable;

.field private time_zone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 73
    invoke-static {}, Lnubia/fancydrawable/TimeDrawable;->initBitmapDrawable()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/fancydrawable/FancyDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/fancydrawable/TimeDrawable;->mAttached:Z

    .line 70
    iput-boolean v0, p0, Lnubia/fancydrawable/TimeDrawable;->isRuning:Z

    .line 110
    new-instance v0, Lnubia/fancydrawable/TimeDrawable$1;

    invoke-direct {v0, p0}, Lnubia/fancydrawable/TimeDrawable$1;-><init>(Lnubia/fancydrawable/TimeDrawable;)V

    iput-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    .line 75
    const-string v0, "CalDrawable"

    iput-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mID:Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    .line 80
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->time_zone:Ljava/lang/String;

    .line 82
    invoke-static {}, Lnubia/fancydrawable/TimeDrawable;->initBitmapDrawable()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 86
    .local v1, "systemResources":Landroid/content/res/Resources;
    nop

    .line 87
    const v2, 0x3070053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 88
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lnubia/fancydrawable/TimeDrawable;->mHourHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 89
    nop

    .line 90
    const v2, 0x3070054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 91
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lnubia/fancydrawable/TimeDrawable;->mMinuteHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 93
    const v2, 0x307002d

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lnubia/fancydrawable/TimeDrawable;->mDialLock:Landroid/graphics/Bitmap;

    .line 99
    iget-object v2, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lnubia/fancydrawable/TimeDrawable;->mDialWidth:I

    .line 100
    iget-object v2, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lnubia/fancydrawable/TimeDrawable;->mDialHeight:I

    .line 101
    iget v2, p0, Lnubia/fancydrawable/TimeDrawable;->mDialWidth:I

    iget v3, p0, Lnubia/fancydrawable/TimeDrawable;->mDialHeight:I

    invoke-virtual {p0, v2, v3}, Lnubia/fancydrawable/TimeDrawable;->setIntrinsicSize(II)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lnubia/fancydrawable/TimeDrawable;)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lnubia/fancydrawable/TimeDrawable;

    .line 23
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$100(Lnubia/fancydrawable/TimeDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lnubia/fancydrawable/TimeDrawable;

    .line 23
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static initBitmapDrawable()Landroid/graphics/Bitmap;
    .locals 2

    .line 105
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    const v1, 0x307002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 107
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private onTimeChanged()V
    .locals 6

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "hour":I
    const/4 v1, 0x0

    .line 139
    .local v1, "minute":I
    const/4 v2, 0x0

    .line 140
    .local v2, "second":I
    iget-object v3, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    monitor-enter v3

    .line 141
    :try_start_0
    iget-object v4, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 143
    iget-object v4, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->hour:I

    move v0, v4

    .line 144
    iget-object v4, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->minute:I

    move v1, v4

    .line 145
    iget-object v4, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->second:I

    move v2, v4

    .line 146
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    int-to-float v3, v2

    iput v3, p0, Lnubia/fancydrawable/TimeDrawable;->mSeconds:F

    .line 148
    int-to-float v3, v1

    iput v3, p0, Lnubia/fancydrawable/TimeDrawable;->mMinutes:F

    .line 149
    int-to-float v3, v0

    iget v4, p0, Lnubia/fancydrawable/TimeDrawable;->mMinutes:F

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lnubia/fancydrawable/TimeDrawable;->mHours:F

    .line 151
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnubia/fancydrawable/TimeDrawable;->mChanged:Z

    .line 152
    return-void

    .line 146
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method


# virtual methods
.method public SetTimeZone(Ljava/lang/String;)V
    .locals 3
    .param p1, "timezone"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    monitor-enter v0

    .line 235
    :try_start_0
    new-instance v1, Landroid/text/format/Time;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 158
    iget v0, p0, Lnubia/fancydrawable/TimeDrawable;->mAvailableWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lnubia/fancydrawable/TimeDrawable;->mAvailableHeight:I

    if-nez v0, :cond_1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lnubia/fancydrawable/TimeDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lnubia/fancydrawable/TimeDrawable;->mAvailableWidth:I

    .line 160
    invoke-virtual {p0}, Lnubia/fancydrawable/TimeDrawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lnubia/fancydrawable/TimeDrawable;->mAvailableHeight:I

    .line 162
    :cond_1
    invoke-direct {p0}, Lnubia/fancydrawable/TimeDrawable;->onTimeChanged()V

    .line 163
    iget v0, p0, Lnubia/fancydrawable/TimeDrawable;->mAvailableWidth:I

    .line 164
    .local v0, "availableWidth":I
    iget v1, p0, Lnubia/fancydrawable/TimeDrawable;->mAvailableHeight:I

    .line 166
    .local v1, "availableHeight":I
    div-int/lit8 v2, v0, 0x2

    .line 167
    .local v2, "x":I
    div-int/lit8 v3, v1, 0x2

    .line 169
    .local v3, "y":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x307002d

    .line 170
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 171
    .local v4, "is":Ljava/io/InputStream;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 172
    .local v5, "dial":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 173
    .local v6, "w":I
    iget-object v7, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 174
    .local v7, "h":I
    if-lt v0, v6, :cond_2

    if-ge v1, v7, :cond_3

    .line 175
    :cond_2
    int-to-float v8, v0

    int-to-float v9, v6

    div-float/2addr v8, v9

    int-to-float v9, v1

    int-to-float v10, v7

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 178
    .local v8, "scale":F
    int-to-float v9, v2

    int-to-float v10, v3

    invoke-virtual {p1, v8, v8, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 180
    .end local v8    # "scale":F
    :cond_3
    div-int/lit8 v8, v6, 0x2

    sub-int v8, v2, v8

    div-int/lit8 v9, v7, 0x2

    sub-int v9, v3, v9

    div-int/lit8 v10, v6, 0x2

    add-int/2addr v10, v2

    div-int/lit8 v11, v7, 0x2

    add-int/2addr v11, v3

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 183
    iget v8, p0, Lnubia/fancydrawable/TimeDrawable;->mHours:F

    const/high16 v9, 0x41400000    # 12.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x43b40000    # 360.0f

    mul-float/2addr v8, v9

    int-to-float v10, v2

    int-to-float v11, v3

    invoke-virtual {p1, v8, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 184
    iget-object v8, p0, Lnubia/fancydrawable/TimeDrawable;->mHourHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 185
    .local v8, "hourHand":Landroid/graphics/drawable/Drawable;
    div-int/lit8 v10, v6, 0x2

    sub-int v10, v2, v10

    div-int/lit8 v11, v7, 0x2

    sub-int v11, v3, v11

    div-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v2

    div-int/lit8 v13, v7, 0x2

    add-int/2addr v13, v3

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 188
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 189
    iget v10, p0, Lnubia/fancydrawable/TimeDrawable;->mMinutes:F

    const/high16 v11, 0x42700000    # 60.0f

    div-float/2addr v10, v11

    mul-float/2addr v10, v9

    int-to-float v9, v2

    int-to-float v11, v3

    invoke-virtual {p1, v10, v9, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 190
    iget-object v9, p0, Lnubia/fancydrawable/TimeDrawable;->mMinuteHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 191
    .local v9, "minuteHand":Landroid/graphics/drawable/Drawable;
    div-int/lit8 v10, v6, 0x2

    sub-int v10, v2, v10

    div-int/lit8 v11, v7, 0x2

    sub-int v11, v3, v11

    div-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v2

    div-int/lit8 v13, v7, 0x2

    add-int/2addr v13, v3

    .line 192
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 196
    return-void
.end method

.method public getTime_zone()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->time_zone:Ljava/lang/String;

    return-object v0
.end method

.method public pageChange()V
    .locals 0

    .line 222
    return-void
.end method

.method public pauseRun()V
    .locals 2

    .line 210
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public resume()V
    .locals 0

    .line 130
    return-void
.end method

.method public resumeRun()V
    .locals 0

    .line 216
    invoke-virtual {p0}, Lnubia/fancydrawable/TimeDrawable;->startToRun()V

    .line 217
    return-void
.end method

.method public setTime_zone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lnubia/fancydrawable/TimeDrawable;->time_zone:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public startToRun()V
    .locals 2

    .line 201
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    :cond_0
    return-void
.end method

.method public timeChange()V
    .locals 2

    .line 226
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    :cond_0
    return-void
.end method
