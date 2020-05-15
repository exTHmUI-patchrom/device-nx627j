.class public Lnubia/fancydrawable/WeatherDrawable;
.super Lnubia/fancydrawable/FancyDrawable;
.source "WeatherDrawable.java"


# instance fields
.field private final DEFAULT_TEMP:Ljava/lang/String;

.field private final FIRST_TEMP:Ljava/lang/String;

.field private final NULL_VALUE:Ljava/lang/String;

.field private final WEATHER_CLOUD:I

.field private final WEATHER_FOGGY:I

.field private final WEATHER_OVERCAST:I

.field private final WEATHER_RAIN:I

.field private final WEATHER_SAND:I

.field private final WEATHER_SNOW:I

.field private final WEATHER_SUNNY:I

.field private final WEATHER_URI:Landroid/net/Uri;

.field private mClassification:I

.field private mCurrentCity:Ljava/lang/String;

.field private mScaleDPtoPixel:F

.field private mTemp:Ljava/lang/String;

.field private mWeatherBgHeight:I

.field private mWeatherBgWidth:I

.field private mWeatherBitmap:Landroid/graphics/Bitmap;

.field private mWeatherCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-static {}, Lnubia/fancydrawable/WeatherDrawable;->initBitmapDrawable()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/fancydrawable/FancyDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_SUNNY:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_CLOUD:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_OVERCAST:I

    .line 36
    const/4 v0, 0x4

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_RAIN:I

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_SNOW:I

    .line 38
    const/4 v0, 0x6

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_SAND:I

    .line 39
    const/4 v0, 0x7

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_FOGGY:I

    .line 41
    const-string v0, "0"

    iput-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->FIRST_TEMP:Ljava/lang/String;

    .line 42
    const-string v0, "N/A"

    iput-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->DEFAULT_TEMP:Ljava/lang/String;

    .line 43
    const-string v0, "--"

    iput-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->NULL_VALUE:Ljava/lang/String;

    .line 44
    const-string v0, "content://cn.nubia.weather.logic.db.WeatherProvider/WeatherForecast"

    .line 45
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_URI:Landroid/net/Uri;

    .line 47
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mScaleDPtoPixel:F

    .line 52
    invoke-direct {p0}, Lnubia/fancydrawable/WeatherDrawable;->getWeatherbyProvider()V

    .line 54
    iget-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherCode:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lnubia/fancydrawable/WeatherDrawable;->getWeatherInfo(I)I

    move-result v0

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mClassification:I

    .line 57
    :cond_0
    iget v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mClassification:I

    invoke-static {v0}, Lnubia/fancydrawable/WeatherDrawable;->getBitmapByWeather(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBitmap:Landroid/graphics/Bitmap;

    .line 58
    iget-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgWidth:I

    .line 59
    iget-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgHeight:I

    .line 60
    iget v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgWidth:I

    iget v1, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgHeight:I

    invoke-virtual {p0, v0, v1}, Lnubia/fancydrawable/WeatherDrawable;->setIntrinsicSize(II)V

    .line 61
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mScaleDPtoPixel:F

    .line 62
    return-void
.end method

.method private adjustTextStartX(Ljava/lang/String;I)I
    .locals 6
    .param p1, "tempValue"    # Ljava/lang/String;
    .param p2, "left"    # I

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "adjustment":I
    const/4 v1, 0x0

    .line 190
    .local v1, "tempInt":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 193
    nop

    .line 195
    const/high16 v2, 0x40400000    # 3.0f

    if-gez v1, :cond_0

    .line 196
    iget v3, p0, Lnubia/fancydrawable/WeatherDrawable;->mScaleDPtoPixel:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    return v2

    .line 199
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 200
    iget v4, p0, Lnubia/fancydrawable/WeatherDrawable;->mScaleDPtoPixel:F

    mul-float/2addr v4, v2

    float-to-int v4, v4

    neg-int v0, v4

    .line 203
    :cond_1
    const/16 v4, 0x14

    if-le v1, v4, :cond_2

    rem-int/lit8 v4, v1, 0xa

    if-ne v4, v3, :cond_2

    .line 204
    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lnubia/fancydrawable/WeatherDrawable;->mScaleDPtoPixel:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v0, v4

    .line 207
    :cond_2
    div-int/lit8 v4, v1, 0xa

    if-ne v4, v3, :cond_4

    .line 208
    rem-int/lit8 v4, v1, 0xa

    if-ne v4, v3, :cond_3

    iget v3, p0, Lnubia/fancydrawable/WeatherDrawable;->mScaleDPtoPixel:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    goto :goto_0

    :cond_3
    const/4 v2, -0x2

    iget v3, p0, Lnubia/fancydrawable/WeatherDrawable;->mScaleDPtoPixel:F

    float-to-int v3, v3

    mul-int/2addr v2, v3

    :goto_0
    move v0, v2

    .line 210
    :cond_4
    add-int v2, p2, v0

    return v2

    .line 191
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    return p2
.end method

.method private drawTempText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "tempValue"    # Ljava/lang/String;

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 168
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 169
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v1, v3

    .line 170
    .local v1, "textWidth":I
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    .line 171
    .local v3, "textHeight":I
    iget v4, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgWidth:I

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    .line 172
    .local v4, "left":I
    iget v5, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgHeight:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    .line 173
    .local v5, "top":I
    invoke-direct {p0, p3, v4}, Lnubia/fancydrawable/WeatherDrawable;->adjustTextStartX(Ljava/lang/String;I)I

    move-result v4

    .line 174
    if-lez v4, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    move v4, v6

    .line 175
    if-lez v5, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    move v5, v6

    .line 176
    int-to-float v6, v4

    add-int v7, v3, v5

    int-to-float v7, v7

    invoke-virtual {p1, p3, v6, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 178
    const-string v6, "\u00b0"

    .line 179
    .local v6, "tempSymbol":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {p2, v6, v2, v7, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 180
    const/high16 v2, 0x41500000    # 13.0f

    iget v7, p0, Lnubia/fancydrawable/WeatherDrawable;->mScaleDPtoPixel:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 181
    add-int v2, v4, v1

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lnubia/fancydrawable/WeatherDrawable;->mScaleDPtoPixel:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v5

    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Lnubia/fancydrawable/WeatherDrawable;->mScaleDPtoPixel:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v2, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 182
    return-void
.end method

.method private static getBitmapByWeather(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "classification"    # I

    .line 88
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, "systemResources":Landroid/content/res/Resources;
    const v1, 0x3070055

    const/4 v2, 0x1

    if-lt p0, v2, :cond_1

    const/4 v2, 0x7

    if-le p0, v2, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fancydrawable_weather_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "bitmapName":Ljava/lang/String;
    const-class v3, Lcn/nubia/internal/R$drawable;

    .line 98
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/nubia/internal/R$drawable;>;"
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 99
    .local v4, "id":I
    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "id":I
    move-object v1, v5

    .line 104
    .local v1, "weatherBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 100
    .end local v1    # "weatherBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 101
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 105
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "weatherBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 90
    .end local v1    # "weatherBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bitmapName":Ljava/lang/String;
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/nubia/internal/R$drawable;>;"
    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 92
    .restart local v1    # "weatherBitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method private getWeatherInfo(I)I
    .locals 5
    .param p1, "code"    # I

    .line 109
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 110
    return v0

    .line 112
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 113
    return v1

    .line 115
    :cond_1
    if-ne p1, v1, :cond_2

    .line 116
    const/4 v0, 0x3

    return v0

    .line 118
    :cond_2
    if-le p1, v1, :cond_3

    const/16 v1, 0xd

    if-lt p1, v1, :cond_e

    :cond_3
    const/16 v1, 0x13

    if-eq p1, v1, :cond_e

    const/16 v1, 0x14

    if-le p1, v1, :cond_4

    const/16 v2, 0x1a

    if-ge p1, v2, :cond_4

    goto :goto_2

    .line 121
    :cond_4
    const/16 v2, 0xc

    const/16 v3, 0x12

    if-le p1, v2, :cond_5

    if-lt p1, v3, :cond_7

    :cond_5
    const/16 v2, 0x19

    if-le p1, v2, :cond_6

    const/16 v2, 0x1d

    if-lt p1, v2, :cond_7

    :cond_6
    const/16 v2, 0x21

    if-ne p1, v2, :cond_8

    .line 122
    :cond_7
    const/4 v0, 0x5

    return v0

    .line 124
    :cond_8
    if-eq p1, v1, :cond_d

    const/16 v1, 0x1c

    const/16 v2, 0x20

    if-le p1, v1, :cond_9

    if-lt p1, v2, :cond_d

    :cond_9
    const/16 v1, 0x34

    const/16 v4, 0x39

    if-le p1, v1, :cond_a

    if-ge p1, v4, :cond_a

    goto :goto_1

    .line 127
    :cond_a
    if-eq p1, v3, :cond_c

    if-eq p1, v2, :cond_c

    const/16 v1, 0x31

    if-eq p1, v1, :cond_c

    if-eq p1, v4, :cond_c

    const/16 v1, 0x3a

    if-ne p1, v1, :cond_b

    goto :goto_0

    .line 130
    :cond_b
    return v0

    .line 128
    :cond_c
    :goto_0
    const/4 v0, 0x7

    return v0

    .line 125
    :cond_d
    :goto_1
    const/4 v0, 0x6

    return v0

    .line 119
    :cond_e
    :goto_2
    const/4 v0, 0x4

    return v0
.end method

.method private getWeatherbyProvider()V
    .locals 4

    .line 72
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_URI:Landroid/net/Uri;

    const-string v2, "getCurrentWeather"

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 76
    const-string v1, "temp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnubia/fancydrawable/WeatherDrawable;->mTemp:Ljava/lang/String;

    .line 77
    const-string v1, "city"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnubia/fancydrawable/WeatherDrawable;->mCurrentCity:Ljava/lang/String;

    .line 78
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static initBitmapDrawable()Landroid/graphics/Bitmap;
    .locals 2

    .line 65
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3070055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 67
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public SetTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timezone"    # Ljava/lang/String;

    .line 241
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 137
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget v1, p0, Lnubia/fancydrawable/WeatherDrawable;->mScaleDPtoPixel:F

    const/high16 v2, 0x42180000    # 38.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 140
    nop

    .line 141
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/nubia_bold_fancyable.ttf"

    .line 140
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 144
    const/high16 v1, 0x3f800000    # 1.0f

    .line 145
    .local v1, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 146
    iget-object v2, p0, Lnubia/fancydrawable/WeatherDrawable;->mTemp:Ljava/lang/String;

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 147
    iget v2, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgWidth:I

    iget v5, p0, Lnubia/fancydrawable/WeatherDrawable;->mAvailableWidth:I

    if-gt v2, v5, :cond_0

    iget v2, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgHeight:I

    iget v5, p0, Lnubia/fancydrawable/WeatherDrawable;->mAvailableHeight:I

    if-le v2, v5, :cond_1

    .line 148
    :cond_0
    iget v2, p0, Lnubia/fancydrawable/WeatherDrawable;->mAvailableWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v5, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgWidth:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    iget v5, p0, Lnubia/fancydrawable/WeatherDrawable;->mAvailableHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget v3, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgHeight:I

    int-to-float v3, v3

    div-float/2addr v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 150
    :cond_1
    invoke-virtual {p1, v1, v1, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 151
    iget-object v2, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 152
    iget-object v2, p0, Lnubia/fancydrawable/WeatherDrawable;->mTemp:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lnubia/fancydrawable/WeatherDrawable;->drawTempText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    const v2, 0x307005c

    .line 156
    .local v2, "id":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 155
    invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 157
    .local v5, "defaultBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p0, Lnubia/fancydrawable/WeatherDrawable;->mAvailableWidth:I

    if-gt v6, v7, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p0, Lnubia/fancydrawable/WeatherDrawable;->mAvailableHeight:I

    if-le v6, v7, :cond_4

    .line 158
    :cond_3
    iget v6, p0, Lnubia/fancydrawable/WeatherDrawable;->mAvailableWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lnubia/fancydrawable/WeatherDrawable;->mAvailableHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 160
    :cond_4
    invoke-virtual {p1, v1, v1, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 161
    invoke-virtual {p1, v5, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 163
    .end local v2    # "id":I
    .end local v5    # "defaultBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    return-void
.end method

.method public pageChange()V
    .locals 0

    .line 231
    return-void
.end method

.method public pauseRun()V
    .locals 0

    .line 221
    return-void
.end method

.method public resumeRun()V
    .locals 0

    .line 226
    return-void
.end method

.method public startToRun()V
    .locals 0

    .line 216
    return-void
.end method

.method public timeChange()V
    .locals 0

    .line 236
    return-void
.end method
