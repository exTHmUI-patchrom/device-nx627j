.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LUX_GRAD_SMOOTHING:F = 0.25f

.field private static final MAX_GRAD:F = 1.0f

.field private static final PLOG:Lcom/android/server/display/utils/Plog;

.field private static final TAG:Ljava/lang/String; = "BrightnessMappingStrategy"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)F
    .locals 1
    .param p0, "x0"    # I

    .line 43
    invoke-static {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(FFF)F
    .locals 1
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$200([F[FFFFF)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # [F
    .param p1, "x1"    # [F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F

    .line 43
    invoke-static/range {p0 .. p5}, Lcom/android/server/display/BrightnessMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 11
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 54
    const v0, 0x1070014

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v0

    .line 56
    .local v0, "luxLevels":[F
    const v1, 0x1070013

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 58
    .local v1, "brightnessLevelsBacklight":[I
    const v2, 0x1070011

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 60
    .local v2, "brightnessLevelsNits":[F
    const/4 v3, 0x1

    const/high16 v4, 0x1130000

    invoke-virtual {p0, v4, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 64
    .local v4, "autoBrightnessAdjustmentMaxGamma":F
    const v5, 0x1070043

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v5

    .line 66
    .local v5, "nitsRange":[F
    const v6, 0x1070042

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 69
    .local v6, "backlightRange":[I
    invoke-static {v5, v6}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 70
    invoke-static {v0, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 71
    const v7, 0x10e0093

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 73
    .local v7, "minimumBacklight":I
    const v8, 0x10e0092

    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 75
    .local v8, "maximumBacklight":I
    const/4 v9, 0x0

    aget v9, v6, v9

    if-gt v9, v7, :cond_0

    array-length v9, v6

    sub-int/2addr v9, v3

    aget v3, v6, v9

    if-ge v3, v8, :cond_1

    .line 77
    :cond_0
    const-string v3, "BrightnessMappingStrategy"

    const-string v9, "Screen brightness mapping does not cover whole range of available backlight values, autobrightness functionality may be impaired."

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    new-instance v3, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>()V

    .line 81
    .local v3, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    invoke-virtual {v3, v0, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setCurve([F[F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 82
    new-instance v9, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual {v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v10

    invoke-direct {v9, v10, v5, v6, v4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V

    return-object v9

    .line 84
    .end local v3    # "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    .end local v7    # "minimumBacklight":I
    .end local v8    # "maximumBacklight":I
    :cond_2
    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    new-instance v3, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IF)V

    return-object v3

    .line 88
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method private static findInsertionPoint([FF)I
    .locals 2
    .param p0, "arr"    # [F
    .param p1, "val"    # F

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 283
    aget v1, p0, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 284
    return v0

    .line 282
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    .end local v0    # "i":I
    :cond_1
    array-length v0, p0

    return v0
.end method

.method private static getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .locals 6
    .param p0, "lux"    # [F
    .param p1, "brightness"    # [F
    .param p2, "userLux"    # F
    .param p3, "userBrightness"    # F
    .param p4, "adjustment"    # F
    .param p5, "maxGamma"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 369
    move-object v0, p0

    .line 370
    .local v0, "newLux":[F
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 374
    .local v1, "newBrightness":[F
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p4, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p4

    .line 375
    neg-float v4, p4

    invoke-static {p5, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v4

    .line 380
    .local v4, "gamma":F
    cmpl-float v2, v4, v2

    if-eqz v2, :cond_0

    .line 381
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 382
    aget v5, v1, v2

    invoke-static {v5, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v5

    aput v5, v1, v2

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    .end local v2    # "i":I
    :cond_0
    cmpl-float v2, p2, v3

    if-eqz v2, :cond_1

    .line 389
    invoke-static {v0, v1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    .line 391
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [F

    .line 392
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [F

    .line 400
    .end local v2    # "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_1
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 102
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 103
    .local v0, "N":I
    new-array v1, v0, [F

    .line 104
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 105
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .locals 4
    .param p0, "lux"    # [I

    .line 94
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 95
    .local v0, "levels":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 96
    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v1

    int-to-float v3, v3

    aput v3, v0, v2

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static inferAutoBrightnessAdjustment(FFF)F
    .locals 5
    .param p0, "maxGamma"    # F
    .param p1, "desiredBrightness"    # F
    .param p2, "currentBrightness"    # F

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "adjustment":F
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 343
    .local v1, "gamma":F
    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_3

    const v2, 0x3f666666    # 0.9f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    .line 347
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    .line 349
    :cond_1
    cmpl-float v2, p1, v3

    if-nez v2, :cond_2

    .line 350
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 353
    :cond_2
    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v1, v2, v4

    .line 355
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v0, v2, v4

    goto :goto_1

    .line 344
    :cond_3
    :goto_0
    sub-float v0, p1, p2

    .line 357
    :goto_1
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 364
    return v0
.end method

.method private static insertControlPoint([F[FFF)Landroid/util/Pair;
    .locals 5
    .param p0, "luxLevels"    # [F
    .param p1, "brightnessLevels"    # [F
    .param p2, "lux"    # F
    .param p3, "brightness"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 250
    invoke-static {p0, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    .line 253
    .local v0, "idx":I
    array-length v1, p0

    if-ne v0, v1, :cond_0

    .line 254
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 255
    .local v1, "newLuxLevels":[F
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 256
    .local v2, "newBrightnessLevels":[F
    aput p2, v1, v0

    .line 257
    aput p3, v2, v0

    goto :goto_0

    .line 258
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_0
    aget v1, p0, v0

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    .line 259
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 260
    .restart local v1    # "newLuxLevels":[F
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 261
    .restart local v2    # "newBrightnessLevels":[F
    aput p3, v2, v0

    goto :goto_0

    .line 263
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 264
    .restart local v1    # "newLuxLevels":[F
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    aput p2, v1, v0

    .line 266
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 267
    .restart local v2    # "newBrightnessLevels":[F
    add-int/lit8 v3, v0, 0x1

    array-length v4, p1

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    aput p3, v2, v0

    .line 271
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    .line 272
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static isValidMapping([F[F)Z
    .locals 7
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 112
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    array-length v1, p0

    if-eqz v1, :cond_9

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_4

    .line 115
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 116
    return v0

    .line 118
    :cond_1
    array-length v1, p0

    .line 119
    .local v1, "N":I
    aget v2, p0, v0

    .line 120
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 121
    .local v3, "prevY":F
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_8

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_8

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 124
    :cond_2
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    .local v2, "i":I
    .local v3, "prevX":F
    .local v5, "prevY":F
    :goto_0
    if-ge v2, v1, :cond_7

    .line 125
    aget v6, p0, v2

    cmpl-float v6, v3, v6

    if-gez v6, :cond_6

    aget v6, p1, v2

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    goto :goto_2

    .line 128
    :cond_3
    aget v6, p0, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_5

    aget v6, p1, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 131
    :cond_4
    aget v3, p0, v2

    .line 132
    aget v5, p1, v2

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_5
    :goto_1
    return v0

    .line 126
    :cond_6
    :goto_2
    return v0

    .line 134
    .end local v2    # "i":I
    :cond_7
    return v4

    .line 122
    .end local v5    # "prevY":F
    .local v2, "prevX":F
    .local v3, "prevY":F
    :cond_8
    :goto_3
    return v0

    .line 113
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":F
    :cond_9
    :goto_4
    return v0
.end method

.method private static isValidMapping([F[I)Z
    .locals 7
    .param p0, "x"    # [F
    .param p1, "y"    # [I

    .line 138
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    array-length v1, p0

    if-eqz v1, :cond_8

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    .line 141
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 142
    return v0

    .line 144
    :cond_1
    array-length v1, p0

    .line 145
    .local v1, "N":I
    aget v2, p0, v0

    .line 146
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 147
    .local v3, "prevY":I
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_7

    if-ltz v3, :cond_7

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 150
    :cond_2
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    .local v2, "i":I
    .local v3, "prevX":F
    .local v5, "prevY":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 151
    aget v6, p0, v2

    cmpl-float v6, v3, v6

    if-gez v6, :cond_5

    aget v6, p1, v2

    if-le v5, v6, :cond_3

    goto :goto_1

    .line 154
    :cond_3
    aget v6, p0, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 155
    return v0

    .line 157
    :cond_4
    aget v3, p0, v2

    .line 158
    aget v5, p1, v2

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_5
    :goto_1
    return v0

    .line 160
    .end local v2    # "i":I
    :cond_6
    return v4

    .line 148
    .end local v5    # "prevY":I
    .local v2, "prevX":F
    .local v3, "prevY":I
    :cond_7
    :goto_2
    return v0

    .line 139
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":I
    :cond_8
    :goto_3
    return v0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p0, "brightness"    # I

    .line 243
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    .line 245
    int-to-float v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private static permissibleRatio(FF)F
    .locals 2
    .param p0, "currLux"    # F
    .param p1, "prevLux"    # F

    .line 332
    const/high16 v0, 0x3e800000    # 0.25f

    add-float v1, p0, v0

    .line 333
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v1

    add-float/2addr v0, p1

    .line 334
    invoke-static {v0}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    sub-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 332
    invoke-static {v0}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    return v0
.end method

.method private static smoothCurve([F[FI)V
    .locals 8
    .param p0, "lux"    # [F
    .param p1, "brightness"    # [F
    .param p2, "idx"    # I

    .line 294
    aget v0, p0, p2

    .line 295
    .local v0, "prevLux":F
    aget v1, p1, p2

    .line 297
    .local v1, "prevBrightness":F
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 298
    aget v3, p0, v2

    .line 299
    .local v3, "currLux":F
    aget v4, p1, v2

    .line 300
    .local v4, "currBrightness":F
    invoke-static {v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 301
    .local v5, "maxBrightness":F
    invoke-static {v4, v1, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 303
    .local v6, "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_0

    .line 304
    goto :goto_1

    .line 306
    :cond_0
    move v0, v3

    .line 307
    move v1, v6

    .line 308
    aput v6, p1, v2

    .line 297
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "maxBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    .end local v2    # "i":I
    :cond_1
    :goto_1
    aget v0, p0, p2

    .line 312
    aget v1, p1, p2

    .line 313
    add-int/lit8 v2, p2, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_3

    .line 314
    aget v3, p0, v2

    .line 315
    .restart local v3    # "currLux":F
    aget v4, p1, v2

    .line 316
    .restart local v4    # "currBrightness":F
    invoke-static {v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 317
    .local v5, "minBrightness":F
    invoke-static {v4, v5, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 319
    .restart local v6    # "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_2

    .line 320
    goto :goto_3

    .line 322
    :cond_2
    move v0, v3

    .line 323
    move v1, v6

    .line 324
    aput v6, p1, v2

    .line 313
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "minBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 329
    .end local v2    # "i":I
    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public abstract convertToNits(I)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public abstract getBrightness(F)F
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method public abstract isDefaultConfig()Z
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method
