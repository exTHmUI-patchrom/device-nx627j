.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_COMPAT_RES:I = 0x10

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1

.field static final TAG:Ljava/lang/String; = "CompatibilityInfo"


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 617
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 284
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1, v1}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 287
    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 0
    .param p1, "compFlags"    # I
    .param p2, "dens"    # I
    .param p3, "scale"    # F
    .param p4, "invertedScale"    # F

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 278
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 279
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 280
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 281
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 10
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "compatFlags":I
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 110
    or-int/lit8 v0, v0, 0x10

    .line 112
    :cond_0
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_e

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v1, :cond_e

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 168
    :cond_1
    const/4 v1, 0x2

    .line 174
    .local v1, "EXPANDABLE":I
    const/16 v3, 0x8

    .line 180
    .local v3, "LARGE_SCREENS":I
    const/16 v4, 0x20

    .line 182
    .local v4, "XLARGE_SCREENS":I
    const/4 v5, 0x0

    .line 186
    .local v5, "sizeInfo":I
    const/4 v6, 0x0

    .line 188
    .local v6, "anyResizeable":Z
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_2

    .line 189
    or-int/lit8 v5, v5, 0x8

    .line 190
    const/4 v6, 0x1

    .line 191
    if-nez p4, :cond_2

    .line 195
    or-int/lit8 v5, v5, 0x22

    .line 198
    :cond_2
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 199
    const/4 v6, 0x1

    .line 200
    if-nez p4, :cond_3

    .line 201
    or-int/lit8 v5, v5, 0x22

    .line 204
    :cond_3
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_4

    .line 205
    const/4 v6, 0x1

    .line 206
    or-int/lit8 v5, v5, 0x2

    .line 209
    :cond_4
    if-eqz p4, :cond_5

    .line 214
    and-int/lit8 v5, v5, -0x3

    .line 217
    :cond_5
    or-int/lit8 v0, v0, 0x8

    .line 218
    and-int/lit8 v7, p2, 0xf

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 220
    :pswitch_0
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_6

    .line 221
    and-int/lit8 v0, v0, -0x9

    .line 223
    :cond_6
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_8

    .line 224
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 228
    :pswitch_1
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_7

    .line 229
    and-int/lit8 v0, v0, -0x9

    .line 231
    :cond_7
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_8

    .line 232
    or-int/lit8 v0, v0, 0x4

    .line 237
    :cond_8
    :goto_0
    const/high16 v7, 0x10000000

    and-int/2addr v7, p2

    if-eqz v7, :cond_a

    .line 238
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_9

    .line 239
    and-int/lit8 v0, v0, -0x9

    goto :goto_1

    .line 240
    :cond_9
    if-nez v6, :cond_b

    .line 241
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 244
    :cond_a
    and-int/lit8 v0, v0, -0x9

    .line 245
    or-int/lit8 v0, v0, 0x4

    .line 248
    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v7

    .line 249
    .local v7, "density":I
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x2000

    if-nez v8, :cond_c

    .line 250
    const/16 v8, 0xa0

    iput v8, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 251
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v8, v8

    const/high16 v9, 0x43200000    # 160.0f

    div-float/2addr v8, v9

    iput v8, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 253
    iget v8, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v2, v8

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 254
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 255
    :cond_c
    if-eqz v7, :cond_d

    .line 256
    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 257
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v8, v8

    iget v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 258
    iget v8, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v2, v8

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 259
    or-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 261
    :cond_d
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v8, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 262
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 263
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .end local v1    # "EXPANDABLE":I
    .end local v3    # "LARGE_SCREENS":I
    .end local v4    # "XLARGE_SCREENS":I
    .end local v5    # "sizeInfo":I
    .end local v6    # "anyResizeable":Z
    .end local v7    # "density":I
    goto :goto_7

    .line 115
    :cond_e
    :goto_2
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v1, :cond_f

    .line 116
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    goto :goto_3

    .line 117
    :cond_f
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 118
    .local v1, "required":I
    :goto_3
    if-nez v1, :cond_10

    .line 119
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 121
    :cond_10
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v3, :cond_11

    .line 122
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_4

    :cond_11
    move v3, v1

    .line 123
    .local v3, "compat":I
    :goto_4
    if-ge v3, v1, :cond_12

    .line 124
    move v3, v1

    .line 126
    :cond_12
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 128
    .local v4, "largest":I
    const/16 v5, 0x140

    if-le v1, v5, :cond_13

    .line 135
    or-int/lit8 v0, v0, 0x4

    goto :goto_5

    .line 136
    :cond_13
    if-eqz v4, :cond_14

    if-le p3, v4, :cond_14

    .line 140
    or-int/lit8 v0, v0, 0xa

    goto :goto_5

    .line 141
    :cond_14
    if-lt v3, p3, :cond_15

    .line 144
    or-int/lit8 v0, v0, 0x4

    goto :goto_5

    .line 145
    :cond_15
    if-eqz p4, :cond_16

    .line 148
    or-int/lit8 v0, v0, 0x8

    .line 150
    :cond_16
    :goto_5
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v5

    .line 151
    .local v5, "density":I
    if-eqz v5, :cond_17

    .line 152
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 153
    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v6, v6

    iget v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 154
    iget v6, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v2, v6

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 155
    or-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 158
    :cond_17
    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v6, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 159
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 160
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 163
    .end local v1    # "required":I
    .end local v3    # "compat":I
    .end local v4    # "largest":I
    .end local v5    # "density":I
    :goto_6
    nop

    .line 267
    :goto_7
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 273
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/CompatibilityInfo$1;

    .line 40
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 635
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/res/CompatibilityInfo$1;

    .line 40
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 13
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "outDm"    # Landroid/util/DisplayMetrics;

    .line 513
    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 514
    .local v0, "width":I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 516
    .local v1, "height":I
    if-ge v0, v1, :cond_0

    .line 517
    move v2, v0

    .line 518
    .local v2, "shortSize":I
    move v3, v1

    .local v3, "longSize":I
    goto :goto_0

    .line 520
    .end local v2    # "shortSize":I
    .end local v3    # "longSize":I
    :cond_0
    move v2, v1

    .line 521
    .restart local v2    # "shortSize":I
    move v3, v0

    .line 523
    .restart local v3    # "longSize":I
    :goto_0
    const/high16 v4, 0x43a00000    # 320.0f

    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 524
    .local v4, "newShortSize":I
    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 525
    .local v6, "aspect":F
    const v7, 0x3fe3bbbc

    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    .line 526
    const v6, 0x3fe3bbbc

    .line 528
    :cond_1
    int-to-float v7, v4

    mul-float/2addr v7, v6

    add-float/2addr v7, v5

    float-to-int v5, v7

    .line 530
    .local v5, "newLongSize":I
    if-ge v0, v1, :cond_2

    .line 531
    move v7, v4

    .line 532
    .local v7, "newWidth":I
    move v8, v5

    .local v8, "newHeight":I
    goto :goto_1

    .line 534
    .end local v7    # "newWidth":I
    .end local v8    # "newHeight":I
    :cond_2
    move v7, v5

    .line 535
    .restart local v7    # "newWidth":I
    move v8, v4

    .line 538
    .restart local v8    # "newHeight":I
    :goto_1
    int-to-float v9, v0

    int-to-float v10, v7

    div-float/2addr v9, v10

    .line 539
    .local v9, "sw":F
    int-to-float v10, v1

    int-to-float v11, v8

    div-float/2addr v10, v11

    .line 540
    .local v10, "sh":F
    cmpg-float v11, v9, v10

    if-gez v11, :cond_3

    move v11, v9

    goto :goto_2

    :cond_3
    move v11, v10

    .line 541
    .local v11, "scale":F
    :goto_2
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v11, v12

    if-gez v12, :cond_4

    .line 542
    const/high16 v11, 0x3f800000    # 1.0f

    .line 545
    :cond_4
    if-eqz p1, :cond_5

    .line 546
    iput v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 547
    iput v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 550
    :cond_5
    return v11
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 1

    .line 305
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .locals 3
    .param p1, "displayDensity"    # I
    .param p2, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 487
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 494
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 495
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 496
    iget v0, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 498
    :cond_0
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 499
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 501
    .local v0, "invertedRatio":F
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 503
    .end local v0    # "invertedRatio":F
    :cond_1
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .line 465
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    goto :goto_0

    .line 470
    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 471
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 474
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 476
    .local v0, "invertedRatio":F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 477
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 478
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 479
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 480
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 481
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 482
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 484
    .end local v0    # "invertedRatio":F
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 606
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 555
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 556
    return v0

    .line 559
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/content/res/CompatibilityInfo;

    .line 560
    .local v2, "oc":Landroid/content/res/CompatibilityInfo;
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v3, v4, :cond_1

    return v1

    .line 561
    :cond_1
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v3, v4, :cond_2

    return v1

    .line 562
    :cond_2
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    return v1

    .line 563
    :cond_3
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    return v1

    .line 564
    :cond_4
    return v0

    .line 565
    .end local v2    # "oc":Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .line 317
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 596
    const/16 v0, 0x11

    .line 597
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/2addr v2, v3

    .line 598
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int/2addr v0, v3

    .line 599
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 600
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/2addr v1, v2

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 601
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isScalingRequired()Z
    .locals 2

    .line 293
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public needsCompatResources()Z
    .locals 1

    .line 309
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public neverSupportsScreen()Z
    .locals 1

    .line 301
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsScreen()Z
    .locals 1

    .line 297
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 573
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 575
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 579
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 582
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 585
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 588
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_3
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 611
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 614
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 615
    return-void
.end method
