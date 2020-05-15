.class public Lnubia/fancydrawable/DateDrawable;
.super Lnubia/fancydrawable/FancyDrawable;
.source "DateDrawable.java"


# static fields
.field private static final ANIMATION_LAST_TIME:J = 0x3e8L

.field private static final REFRESH_TIME_GAP:I = 0x2710


# instance fields
.field private final CALENDAR_URI:Landroid/net/Uri;

.field private final DEFAULT_FESTIVAL:Ljava/lang/String;

.field backsrc:Landroid/graphics/Bitmap;

.field bstarted:Z

.field private daybitmapH:I

.field private daybitmapW:I

.field enableFestivalIcon:Z

.field isTurnPage:Z

.field private mCalendarCurrBitmap:Landroid/graphics/Bitmap;

.field private mCalendarDstBitmap:Landroid/graphics/Bitmap;

.field private mCalendarLastBitmap:Landroid/graphics/Bitmap;

.field private mCalendarSrcBitmap:Landroid/graphics/Bitmap;

.field private mChanged:Z

.field private mCurrTime:J

.field private mCurrentFestival:I

.field mDstDay:I

.field private mFestivalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDefaultTheme:Z

.field private mPaused:Z

.field mShowDay:I

.field private mStartTime:J

.field private mdrawableBg:Landroid/graphics/drawable/Drawable;

.field private mdrawableMask:Landroid/graphics/drawable/Drawable;

.field private mdrawcanvas:Landroid/graphics/Canvas;

.field mtime:Landroid/text/format/Time;

.field private oneRunnable:Ljava/lang/Runnable;

.field private redrawCalendarRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 66
    const/4 v0, 0x1

    invoke-static {v0}, Lnubia/fancydrawable/DateDrawable;->getBitmapByday(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lnubia/fancydrawable/FancyDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnubia/fancydrawable/DateDrawable;->mPaused:Z

    .line 36
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnubia/fancydrawable/DateDrawable;->mStartTime:J

    .line 37
    iput-wide v2, p0, Lnubia/fancydrawable/DateDrawable;->mCurrTime:J

    .line 38
    const/4 v2, 0x0

    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    .line 39
    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    .line 40
    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    .line 41
    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarLastBitmap:Landroid/graphics/Bitmap;

    .line 42
    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarCurrBitmap:Landroid/graphics/Bitmap;

    .line 43
    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableMask:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableBg:Landroid/graphics/drawable/Drawable;

    .line 47
    iput v1, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapH:I

    .line 48
    iput v1, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapW:I

    .line 49
    iput-boolean v1, p0, Lnubia/fancydrawable/DateDrawable;->bstarted:Z

    .line 53
    iput-boolean v1, p0, Lnubia/fancydrawable/DateDrawable;->isTurnPage:Z

    .line 58
    const-string v2, "-1"

    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->DEFAULT_FESTIVAL:Ljava/lang/String;

    .line 59
    const-string v2, "content://cn.nubia.calendar.provider.CustomFestivalProvider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->CALENDAR_URI:Landroid/net/Uri;

    .line 62
    iput-boolean v1, p0, Lnubia/fancydrawable/DateDrawable;->enableFestivalIcon:Z

    .line 144
    new-instance v1, Lnubia/fancydrawable/DateDrawable$1;

    invoke-direct {v1, p0}, Lnubia/fancydrawable/DateDrawable$1;-><init>(Lnubia/fancydrawable/DateDrawable;)V

    iput-object v1, p0, Lnubia/fancydrawable/DateDrawable;->oneRunnable:Ljava/lang/Runnable;

    .line 151
    new-instance v1, Lnubia/fancydrawable/DateDrawable$2;

    invoke-direct {v1, p0}, Lnubia/fancydrawable/DateDrawable$2;-><init>(Lnubia/fancydrawable/DateDrawable;)V

    iput-object v1, p0, Lnubia/fancydrawable/DateDrawable;->redrawCalendarRunnable:Ljava/lang/Runnable;

    .line 67
    const-string v1, "DateDrawable"

    iput-object v1, p0, Lnubia/fancydrawable/DateDrawable;->mID:Ljava/lang/String;

    .line 68
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 70
    .local v1, "systemResources":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 71
    .local v2, "is":Ljava/io/InputStream;
    const v3, 0x307002a

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    .line 73
    nop

    .line 74
    const v4, 0x307002b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 75
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableMask:Landroid/graphics/drawable/Drawable;

    .line 76
    nop

    .line 77
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 78
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableBg:Landroid/graphics/drawable/Drawable;

    .line 81
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iput-object v3, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    .line 82
    iget-object v3, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    .line 83
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 82
    invoke-virtual {p0, v3, v4}, Lnubia/fancydrawable/DateDrawable;->setIntrinsicSize(II)V

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    iput-wide v3, p0, Lnubia/fancydrawable/DateDrawable;->mStartTime:J

    .line 87
    iget-object v3, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 88
    iget-object v3, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    iput v3, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    .line 89
    iget-object v3, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    iput v3, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    .line 90
    invoke-static {v0}, Lnubia/fancydrawable/DateDrawable;->getBitmapByday(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, "bitmapday":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapH:I

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapW:I

    .line 94
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    iget-boolean v3, p0, Lnubia/fancydrawable/DateDrawable;->enableFestivalIcon:Z

    if-eqz v3, :cond_0

    .line 97
    invoke-direct {p0}, Lnubia/fancydrawable/DateDrawable;->initFestivalList()V

    .line 98
    invoke-direct {p0}, Lnubia/fancydrawable/DateDrawable;->getFestivalDayByCode()V

    .line 101
    :cond_0
    new-instance v3, Lnubia/fancydrawable/ThemeDescription;

    invoke-direct {v3}, Lnubia/fancydrawable/ThemeDescription;-><init>()V

    .line 102
    .local v3, "themeDes":Lnubia/fancydrawable/ThemeDescription;
    invoke-virtual {v3}, Lnubia/fancydrawable/ThemeDescription;->isDefaultTheme()Z

    move-result v4

    iput-boolean v4, p0, Lnubia/fancydrawable/DateDrawable;->mIsDefaultTheme:Z

    .line 103
    return-void
.end method

.method static synthetic access$002(Lnubia/fancydrawable/DateDrawable;J)J
    .locals 0
    .param p0, "x0"    # Lnubia/fancydrawable/DateDrawable;
    .param p1, "x1"    # J

    .line 30
    iput-wide p1, p0, Lnubia/fancydrawable/DateDrawable;->mStartTime:J

    return-wide p1
.end method

.method private static getBitmapByday(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "day"    # I

    .line 184
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 185
    .local v0, "systemResources":Landroid/content/res/Resources;
    const v1, 0x307002e

    const/4 v2, 0x1

    if-lt p0, v2, :cond_1

    const/16 v2, 0x1f

    if-le p0, v2, :cond_0

    goto :goto_1

    .line 188
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fancydrawable_day_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "bitmapName":Ljava/lang/String;
    const-class v3, Lcn/nubia/internal/R$drawable;

    .line 191
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/nubia/internal/R$drawable;>;"
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 192
    .local v4, "id":I
    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "id":I
    move-object v1, v5

    .line 197
    .local v1, "bitmapDay":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 193
    .end local v1    # "bitmapDay":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 194
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 198
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "bitmapDay":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 186
    .end local v1    # "bitmapDay":Landroid/graphics/Bitmap;
    .end local v2    # "bitmapName":Ljava/lang/String;
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/nubia/internal/R$drawable;>;"
    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private getDatebyProvider()Ljava/lang/String;
    .locals 4

    .line 125
    const/4 v0, 0x0

    move-object v1, v0

    .line 127
    .local v1, "providerClient":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lnubia/fancydrawable/DateDrawable;->CALENDAR_URI:Landroid/net/Uri;

    .line 128
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    move-object v1, v2

    .line 129
    const-string v2, "festival_info"

    invoke-virtual {v1, v2, v0, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 130
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 131
    if-eqz v0, :cond_0

    const-string v2, "FS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    const-string v2, "FS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 140
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    nop

    .line 141
    const-string v0, "-1"

    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 139
    :cond_1
    const-string v2, "-1"

    return-object v2
.end method

.method private getFestivalDayByCode()V
    .locals 3

    .line 116
    invoke-direct {p0}, Lnubia/fancydrawable/DateDrawable;->getDatebyProvider()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "festivalCode":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 118
    iget-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnubia/fancydrawable/DateDrawable;->mCurrentFestival:I

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private getFestivalDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "day"    # I

    .line 223
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    .local v0, "systemResources":Landroid/content/res/Resources;
    nop

    .line 225
    const v1, 0x307004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 226
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 227
    .local v2, "festival":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    if-lt p1, v3, :cond_1

    const/4 v3, 0x6

    if-le p1, v3, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fancydrawable_festival_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "bitmapName":Ljava/lang/String;
    const-class v4, Lcn/nubia/internal/R$drawable;

    .line 233
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/nubia/internal/R$drawable;>;"
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 234
    .local v5, "id":I
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 237
    .end local v5    # "id":I
    goto :goto_0

    .line 235
    :catch_0
    move-exception v5

    .line 236
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 228
    .end local v3    # "bitmapName":Ljava/lang/String;
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/nubia/internal/R$drawable;>;"
    :cond_1
    :goto_1
    return-object v2
.end method

.method private getbitmapDayAndBG(I)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "day"    # I

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 244
    .local v1, "paint":Landroid/graphics/Paint;
    iget-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 245
    .local v2, "bitmapConfig":Landroid/graphics/Bitmap$Config;
    iget v3, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    iget v4, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    .line 246
    if-eqz v2, :cond_0

    .line 245
    move-object v5, v2

    goto :goto_0

    .line 246
    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 245
    :goto_0
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 247
    .local v3, "dayandBG":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v4

    .line 248
    iget-object v4, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableBg:Landroid/graphics/drawable/Drawable;

    .line 249
    .local v4, "drawablebg":Landroid/graphics/drawable/Drawable;
    iget v5, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    iget v6, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    iget-object v5, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 252
    iget-object v5, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableMask:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    iget v8, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    invoke-virtual {v5, v7, v7, v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    iget-object v5, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    iget v5, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapW:I

    .line 255
    .local v5, "dayAvailableWidth":I
    iget v6, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapH:I

    .line 256
    .local v6, "dayAvailableHeight":I
    iget v7, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    iget-object v8, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v7, v8, :cond_1

    iget v7, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    iget-object v8, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    .line 257
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 258
    :cond_1
    iget v7, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    int-to-float v7, v7

    .line 259
    .local v7, "fAvailableWidth":F
    iget v8, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    int-to-float v8, v8

    .line 260
    .local v8, "fAvailableHeight":F
    iget-object v9, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v7, v9

    .line 261
    .local v9, "scale":F
    iget v10, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapW:I

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v5, v10

    .line 262
    iget-object v10, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v9, v8, v10

    .line 263
    iget v10, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapH:I

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v6, v10

    .line 265
    .end local v7    # "fAvailableWidth":F
    .end local v8    # "fAvailableHeight":F
    .end local v9    # "scale":F
    :cond_2
    iget v7, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    .line 266
    .local v7, "left":I
    iget v8, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    .line 267
    .local v8, "top":I
    iget v9, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    add-int/2addr v9, v5

    div-int/lit8 v9, v9, 0x2

    .line 268
    .local v9, "right":I
    iget v10, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    add-int/2addr v10, v6

    div-int/lit8 v10, v10, 0x2

    .line 271
    .local v10, "bottom":I
    iget-boolean v11, p0, Lnubia/fancydrawable/DateDrawable;->enableFestivalIcon:Z

    if-eqz v11, :cond_3

    iget v11, p0, Lnubia/fancydrawable/DateDrawable;->mCurrentFestival:I

    if-lez v11, :cond_3

    iget v11, p0, Lnubia/fancydrawable/DateDrawable;->mCurrentFestival:I

    const/4 v12, 0x7

    if-ge v11, v12, :cond_3

    iget-boolean v11, p0, Lnubia/fancydrawable/DateDrawable;->mIsDefaultTheme:Z

    if-eqz v11, :cond_3

    .line 272
    iget v11, p0, Lnubia/fancydrawable/DateDrawable;->mCurrentFestival:I

    invoke-direct {p0, v11}, Lnubia/fancydrawable/DateDrawable;->getFestivalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .local v11, "drawableday":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 274
    .end local v11    # "drawableday":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-direct {p0, p1}, Lnubia/fancydrawable/DateDrawable;->getdrawableByday(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 276
    .restart local v11    # "drawableday":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v11, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 277
    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    return-object v3
.end method

.method private getdrawableByday(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "day"    # I

    .line 204
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 205
    .local v0, "systemResources":Landroid/content/res/Resources;
    nop

    .line 206
    const v1, 0x307002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 207
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 208
    .local v2, "mdrawableday":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    if-lt p1, v3, :cond_1

    const/16 v3, 0x1f

    if-le p1, v3, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fancydrawable_day_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "bitmapName":Ljava/lang/String;
    const-class v4, Lcn/nubia/internal/R$drawable;

    .line 213
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/nubia/internal/R$drawable;>;"
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 214
    .local v5, "id":I
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    move-object v1, v6

    .line 215
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 218
    .end local v5    # "id":I
    goto :goto_0

    .line 216
    :catch_0
    move-exception v5

    .line 217
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 209
    .end local v3    # "bitmapName":Ljava/lang/String;
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/nubia/internal/R$drawable;>;"
    :cond_1
    :goto_1
    return-object v2
.end method

.method private initFestivalList()V
    .locals 2

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    .line 107
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    const-string v1, "zh0505"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    const-string v1, "zh0815"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    const-string v1, "ws1001"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    const-string v1, "ws0101"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    const-string v1, "zh1230"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    const-string v1, "zh0101"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method private onTimeChanged()V
    .locals 0

    .line 401
    return-void
.end method

.method private showToday(I)V
    .locals 4
    .param p1, "today"    # I

    .line 282
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Lnubia/fancydrawable/DateDrawable;->getbitmapDayAndBG(I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 283
    return-void
.end method

.method private showTurnPage(IILandroid/graphics/Canvas;)V
    .locals 28
    .param p1, "ShowDay"    # I
    .param p2, "DstDay"    # I
    .param p3, "drawcanvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 288
    move-object/from16 v1, p3

    iput-object v1, v0, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    .line 289
    invoke-direct/range {p0 .. p1}, Lnubia/fancydrawable/DateDrawable;->getbitmapDayAndBG(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarLastBitmap:Landroid/graphics/Bitmap;

    .line 290
    move/from16 v2, p2

    invoke-direct {v0, v2}, Lnubia/fancydrawable/DateDrawable;->getbitmapDayAndBG(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarCurrBitmap:Landroid/graphics/Bitmap;

    .line 291
    iget-object v3, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 292
    .local v3, "bitmapConfig":Landroid/graphics/Bitmap$Config;
    iget v4, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    iget v5, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    .line 293
    if-eqz v3, :cond_0

    .line 292
    move-object v6, v3

    goto :goto_0

    .line 293
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 292
    :goto_0
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    .line 299
    const/4 v4, 0x0

    .line 300
    .local v4, "srcRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 301
    .local v5, "dstRect":Landroid/graphics/Rect;
    const/4 v6, 0x0

    .line 302
    .local v6, "matrixEx":Landroid/graphics/Matrix;
    const/4 v7, 0x0

    .line 303
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 304
    .local v8, "canvas":Landroid/graphics/Canvas;
    const/4 v9, 0x0

    .line 305
    .local v9, "bitmapCanvas":Landroid/graphics/Canvas;
    const/4 v10, 0x0

    .line 306
    .local v10, "matrix":Lnubia/fancydrawable/Matrix4x4;
    const/4 v11, 0x0

    .line 308
    .local v11, "interpolator":Landroid/view/animation/Interpolator;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    iput-wide v12, v0, Lnubia/fancydrawable/DateDrawable;->mCurrTime:J

    .line 309
    iget-wide v12, v0, Lnubia/fancydrawable/DateDrawable;->mCurrTime:J

    iget-wide v14, v0, Lnubia/fancydrawable/DateDrawable;->mStartTime:J

    sub-long/2addr v12, v14

    .line 311
    .local v12, "lastTime":J
    const-wide/16 v14, 0x3e8

    cmp-long v14, v12, v14

    if-ltz v14, :cond_1

    .line 312
    const/high16 v14, 0x3f800000    # 1.0f

    .local v14, "value":F
    goto :goto_1

    .line 314
    .end local v14    # "value":F
    :cond_1
    long-to-float v14, v12

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    .line 317
    .restart local v14    # "value":F
    :goto_1
    new-instance v15, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v15}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v11, v15

    .line 318
    invoke-interface {v11, v14}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v14

    .line 320
    iget-object v15, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 321
    .local v15, "width":I
    iget-object v1, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 322
    .local v1, "height":I
    div-int/lit8 v2, v1, 0x2

    .line 323
    .local v2, "y":I
    move-object/from16 v16, v3

    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "bitmapConfig":Landroid/graphics/Bitmap$Config;
    .local v16, "bitmapConfig":Landroid/graphics/Bitmap$Config;
    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "srcRect":Landroid/graphics/Rect;
    .local v17, "srcRect":Landroid/graphics/Rect;
    invoke-direct {v3, v4, v4, v15, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 324
    .end local v17    # "srcRect":Landroid/graphics/Rect;
    .local v3, "srcRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 325
    .end local v5    # "dstRect":Landroid/graphics/Rect;
    .local v4, "dstRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v18, v6

    iget-object v6, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    .end local v6    # "matrixEx":Landroid/graphics/Matrix;
    .local v18, "matrixEx":Landroid/graphics/Matrix;
    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 327
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .local v5, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 328
    .end local v18    # "matrixEx":Landroid/graphics/Matrix;
    .restart local v6    # "matrixEx":Landroid/graphics/Matrix;
    new-instance v8, Lnubia/fancydrawable/Matrix4x4;

    invoke-direct {v8}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 334
    .end local v10    # "matrix":Lnubia/fancydrawable/Matrix4x4;
    .local v8, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 335
    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 336
    iget-object v10, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarCurrBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v6

    const/4 v6, 0x0

    .end local v6    # "matrixEx":Landroid/graphics/Matrix;
    .local v19, "matrixEx":Landroid/graphics/Matrix;
    invoke-virtual {v5, v10, v4, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 338
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 339
    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 340
    iget-object v10, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarLastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v10, v4, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 342
    if-ltz v2, :cond_7

    if-lt v2, v1, :cond_2

    .line 343
    move/from16 v26, v1

    move/from16 v27, v2

    move-object/from16 v21, v9

    move-object/from16 v23, v11

    move-wide/from16 v24, v12

    goto/16 :goto_5

    .line 346
    :cond_2
    iget-object v10, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    .line 347
    .local v10, "bmConfig":Landroid/graphics/Bitmap$Config;
    if-eqz v10, :cond_3

    move-object/from16 v17, v10

    goto :goto_2

    :cond_3
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    move-object/from16 v10, v17

    .line 349
    const/high16 v17, 0x3f000000    # 0.5f

    cmpg-float v18, v14, v17

    const/high16 v20, 0x43340000    # 180.0f

    if-gez v18, :cond_4

    .line 350
    mul-float v6, v20, v14

    .line 351
    .local v6, "degree":F
    invoke-static {v15, v2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 352
    move-object/from16 v21, v9

    new-instance v9, Landroid/graphics/Canvas;

    .end local v9    # "bitmapCanvas":Landroid/graphics/Canvas;
    .local v21, "bitmapCanvas":Landroid/graphics/Canvas;
    invoke-direct {v9, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 353
    .end local v21    # "bitmapCanvas":Landroid/graphics/Canvas;
    .restart local v9    # "bitmapCanvas":Landroid/graphics/Canvas;
    move-object/from16 v22, v7

    iget-object v7, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarLastBitmap:Landroid/graphics/Bitmap;

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .local v22, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v23, v11

    move-wide/from16 v24, v12

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v7, v11, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 354
    .end local v11    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v12    # "lastTime":J
    .local v23, "interpolator":Landroid/view/animation/Interpolator;
    .local v24, "lastTime":J
    neg-int v7, v2

    int-to-float v7, v7

    invoke-virtual {v8, v11, v7, v11}, Lnubia/fancydrawable/Matrix4x4;->postTranslate(FFF)Z

    .line 355
    invoke-virtual {v8, v6}, Lnubia/fancydrawable/Matrix4x4;->postRotateX(F)Z

    .line 356
    int-to-float v7, v2

    invoke-virtual {v8, v11, v7, v11}, Lnubia/fancydrawable/Matrix4x4;->postTranslate(FFF)Z

    .line 375
    move v13, v11

    move-object/from16 v7, v22

    const/4 v12, 0x0

    goto :goto_3

    .line 358
    .end local v6    # "degree":F
    .end local v22    # "bitmap":Landroid/graphics/Bitmap;
    .end local v23    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v24    # "lastTime":J
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v12    # "lastTime":J
    :cond_4
    move-object/from16 v21, v9

    move-object/from16 v23, v11

    move-wide/from16 v24, v12

    .end local v9    # "bitmapCanvas":Landroid/graphics/Canvas;
    .end local v11    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v12    # "lastTime":J
    .restart local v21    # "bitmapCanvas":Landroid/graphics/Canvas;
    .restart local v23    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v24    # "lastTime":J
    sub-float v6, v14, v17

    mul-float v20, v20, v6

    const/high16 v6, 0x43870000    # 270.0f

    add-float v6, v20, v6

    .line 359
    .restart local v6    # "degree":F
    sub-int v9, v1, v2

    invoke-static {v15, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 360
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 361
    .end local v21    # "bitmapCanvas":Landroid/graphics/Canvas;
    .restart local v9    # "bitmapCanvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    iput v11, v3, Landroid/graphics/Rect;->left:I

    .line 362
    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 363
    iput v15, v3, Landroid/graphics/Rect;->right:I

    .line 364
    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 365
    iput v11, v4, Landroid/graphics/Rect;->left:I

    .line 366
    iput v11, v4, Landroid/graphics/Rect;->top:I

    .line 367
    iput v15, v4, Landroid/graphics/Rect;->right:I

    .line 368
    sub-int v11, v1, v2

    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    .line 369
    iget-object v11, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarCurrBitmap:Landroid/graphics/Bitmap;

    .line 370
    const/4 v12, 0x0

    invoke-virtual {v9, v11, v3, v4, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 371
    invoke-virtual {v8, v6}, Lnubia/fancydrawable/Matrix4x4;->postRotateX(F)Z

    .line 372
    int-to-float v11, v2

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v11, v13}, Lnubia/fancydrawable/Matrix4x4;->postTranslate(FFF)Z

    .line 375
    :goto_3
    invoke-virtual {v8}, Lnubia/fancydrawable/Matrix4x4;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    .line 377
    .end local v19    # "matrixEx":Landroid/graphics/Matrix;
    .local v11, "matrixEx":Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 379
    move/from16 v26, v1

    iget-object v1, v0, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    .end local v1    # "height":I
    .local v26, "height":I
    move/from16 v27, v2

    iget-object v2, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    .end local v2    # "y":I
    .local v27, "y":I
    invoke-virtual {v1, v2, v13, v13, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 381
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v14, v1

    if-gez v1, :cond_5

    .line 383
    iget-object v1, v0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_6

    .line 384
    iget-object v1, v0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lnubia/fancydrawable/DateDrawable;->redrawCalendarRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x64

    invoke-virtual {v1, v2, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 386
    :cond_5
    iget v1, v0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    iput v1, v0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    .line 389
    :cond_6
    :goto_4
    return-void

    .line 343
    .end local v6    # "degree":F
    .end local v10    # "bmConfig":Landroid/graphics/Bitmap$Config;
    .end local v23    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v24    # "lastTime":J
    .end local v26    # "height":I
    .end local v27    # "y":I
    .restart local v1    # "height":I
    .restart local v2    # "y":I
    .local v11, "interpolator":Landroid/view/animation/Interpolator;
    .restart local v12    # "lastTime":J
    .restart local v19    # "matrixEx":Landroid/graphics/Matrix;
    :cond_7
    move/from16 v26, v1

    move/from16 v27, v2

    move-object/from16 v21, v9

    move-object/from16 v23, v11

    move-wide/from16 v24, v12

    .end local v1    # "height":I
    .end local v2    # "y":I
    .end local v9    # "bitmapCanvas":Landroid/graphics/Canvas;
    .end local v11    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v12    # "lastTime":J
    .restart local v21    # "bitmapCanvas":Landroid/graphics/Canvas;
    .restart local v23    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v24    # "lastTime":J
    .restart local v26    # "height":I
    .restart local v27    # "y":I
    :goto_5
    return-void
.end method


# virtual methods
.method public SetTimeZone(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezone"    # Ljava/lang/String;

    .line 454
    new-instance v0, Landroid/text/format/Time;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    .line 455
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 160
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    if-nez v0, :cond_1

    .line 161
    :cond_0
    invoke-virtual {p0}, Lnubia/fancydrawable/DateDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    .line 162
    invoke-virtual {p0}, Lnubia/fancydrawable/DateDrawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    .line 164
    :cond_1
    iput-object p1, p0, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    .line 165
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 166
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    .line 169
    iget-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->isTurnPage:Z

    if-nez v0, :cond_2

    .line 170
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    invoke-direct {p0, v0}, Lnubia/fancydrawable/DateDrawable;->showToday(I)V

    goto :goto_0

    .line 172
    :cond_2
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    iget v1, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    if-eq v0, v1, :cond_3

    .line 173
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    iget v1, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    invoke-direct {p0, v0, v1, p1}, Lnubia/fancydrawable/DateDrawable;->showTurnPage(IILandroid/graphics/Canvas;)V

    goto :goto_0

    .line 175
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->isTurnPage:Z

    .line 176
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    invoke-direct {p0, v0}, Lnubia/fancydrawable/DateDrawable;->showToday(I)V

    .line 179
    :goto_0
    return-void
.end method

.method public pageChange()V
    .locals 2

    .line 436
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 439
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    .line 440
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    iget v1, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    if-eq v0, v1, :cond_0

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->isTurnPage:Z

    .line 442
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/DateDrawable;->oneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 445
    :cond_0
    return-void
.end method

.method public pauseRun()V
    .locals 0

    .line 423
    return-void
.end method

.method public resumeRun()V
    .locals 0

    .line 430
    return-void
.end method

.method public startToRun()V
    .locals 2

    .line 407
    iget-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->bstarted:Z

    if-eqz v0, :cond_0

    .line 408
    return-void

    .line 409
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->bstarted:Z

    .line 410
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/DateDrawable;->oneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/DateDrawable;->redrawCalendarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 413
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/DateDrawable;->oneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 415
    :cond_1
    return-void
.end method

.method public timeChange()V
    .locals 0

    .line 450
    return-void
.end method
