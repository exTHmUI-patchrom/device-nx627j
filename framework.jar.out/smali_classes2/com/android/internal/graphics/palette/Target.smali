.class public final Lcom/android/internal/graphics/palette/Target;
.super Ljava/lang/Object;
.source "Target.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/Target$Builder;
    }
.end annotation


# static fields
.field public static final DARK_MUTED:Lcom/android/internal/graphics/palette/Target;

.field public static final DARK_VIBRANT:Lcom/android/internal/graphics/palette/Target;

.field static final INDEX_MAX:I = 0x2

.field static final INDEX_MIN:I = 0x0

.field static final INDEX_TARGET:I = 0x1

.field static final INDEX_WEIGHT_LUMA:I = 0x1

.field static final INDEX_WEIGHT_POP:I = 0x2

.field static final INDEX_WEIGHT_SAT:I = 0x0

.field public static final LIGHT_MUTED:Lcom/android/internal/graphics/palette/Target;

.field public static final LIGHT_VIBRANT:Lcom/android/internal/graphics/palette/Target;

.field private static final MAX_DARK_LUMA:F = 0.45f

.field private static final MAX_MUTED_SATURATION:F = 0.4f

.field private static final MAX_NORMAL_LUMA:F = 0.7f

.field private static final MIN_LIGHT_LUMA:F = 0.55f

.field private static final MIN_NORMAL_LUMA:F = 0.3f

.field private static final MIN_VIBRANT_SATURATION:F = 0.35f

.field public static final MUTED:Lcom/android/internal/graphics/palette/Target;

.field private static final TARGET_DARK_LUMA:F = 0.26f

.field private static final TARGET_LIGHT_LUMA:F = 0.74f

.field private static final TARGET_MUTED_SATURATION:F = 0.3f

.field private static final TARGET_NORMAL_LUMA:F = 0.5f

.field private static final TARGET_VIBRANT_SATURATION:F = 1.0f

.field public static final VIBRANT:Lcom/android/internal/graphics/palette/Target;

.field private static final WEIGHT_LUMA:F = 0.52f

.field private static final WEIGHT_POPULATION:F = 0.24f

.field private static final WEIGHT_SATURATION:F = 0.24f


# instance fields
.field mIsExclusive:Z

.field final mLightnessTargets:[F

.field final mSaturationTargets:[F

.field final mWeights:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lcom/android/internal/graphics/palette/Target;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Target;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    .line 108
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Target;->setDefaultLightLightnessValues(Lcom/android/internal/graphics/palette/Target;)V

    .line 109
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Target;->setDefaultVibrantSaturationValues(Lcom/android/internal/graphics/palette/Target;)V

    .line 111
    new-instance v0, Lcom/android/internal/graphics/palette/Target;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Target;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/Target;->VIBRANT:Lcom/android/internal/graphics/palette/Target;

    .line 112
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Target;->setDefaultNormalLightnessValues(Lcom/android/internal/graphics/palette/Target;)V

    .line 113
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Target;->setDefaultVibrantSaturationValues(Lcom/android/internal/graphics/palette/Target;)V

    .line 115
    new-instance v0, Lcom/android/internal/graphics/palette/Target;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Target;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    .line 116
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Target;->setDefaultDarkLightnessValues(Lcom/android/internal/graphics/palette/Target;)V

    .line 117
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Target;->setDefaultVibrantSaturationValues(Lcom/android/internal/graphics/palette/Target;)V

    .line 119
    new-instance v0, Lcom/android/internal/graphics/palette/Target;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Target;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_MUTED:Lcom/android/internal/graphics/palette/Target;

    .line 120
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Target;->setDefaultLightLightnessValues(Lcom/android/internal/graphics/palette/Target;)V

    .line 121
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Target;->setDefaultMutedSaturationValues(Lcom/android/internal/graphics/palette/Target;)V

    .line 123
    new-instance v0, Lcom/android/internal/graphics/palette/Target;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Target;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/Target;->MUTED:Lcom/android/internal/graphics/palette/Target;

    .line 124
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Target;->setDefaultNormalLightnessValues(Lcom/android/internal/graphics/palette/Target;)V

    .line 125
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Target;->setDefaultMutedSaturationValues(Lcom/android/internal/graphics/palette/Target;)V

    .line 127
    new-instance v0, Lcom/android/internal/graphics/palette/Target;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Target;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_MUTED:Lcom/android/internal/graphics/palette/Target;

    .line 128
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Target;->setDefaultDarkLightnessValues(Lcom/android/internal/graphics/palette/Target;)V

    .line 129
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Target;->setDefaultMutedSaturationValues(Lcom/android/internal/graphics/palette/Target;)V

    .line 130
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    .line 133
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    .line 134
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/graphics/palette/Target;->mIsExclusive:Z

    .line 138
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Target;->setTargetDefaultValues([F)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Target;->setTargetDefaultValues([F)V

    .line 140
    invoke-direct {p0}, Lcom/android/internal/graphics/palette/Target;->setDefaultWeights()V

    .line 141
    return-void
.end method

.method constructor <init>(Lcom/android/internal/graphics/palette/Target;)V
    .locals 4
    .param p1, "from"    # Lcom/android/internal/graphics/palette/Target;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    .line 133
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    .line 134
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/graphics/palette/Target;->mIsExclusive:Z

    .line 144
    iget-object v0, p1, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    iget-object v1, p0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    iget-object v2, p0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iget-object v0, p1, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    iget-object v1, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    iget-object v2, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget-object v0, p1, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    iget-object v1, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    iget-object v2, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    return-void
.end method

.method private static setDefaultDarkLightnessValues(Lcom/android/internal/graphics/palette/Target;)V
    .locals 3
    .param p0, "target"    # Lcom/android/internal/graphics/palette/Target;

    .line 275
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    const v2, 0x3e851eb8    # 0.26f

    aput v2, v0, v1

    .line 276
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    const/4 v1, 0x2

    const v2, 0x3ee66666    # 0.45f

    aput v2, v0, v1

    .line 277
    return-void
.end method

.method private static setDefaultLightLightnessValues(Lcom/android/internal/graphics/palette/Target;)V
    .locals 3
    .param p0, "target"    # Lcom/android/internal/graphics/palette/Target;

    .line 286
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    const/4 v1, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    aput v2, v0, v1

    .line 287
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    const v2, 0x3f3d70a4    # 0.74f

    aput v2, v0, v1

    .line 288
    return-void
.end method

.method private static setDefaultMutedSaturationValues(Lcom/android/internal/graphics/palette/Target;)V
    .locals 3
    .param p0, "target"    # Lcom/android/internal/graphics/palette/Target;

    .line 296
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    const/4 v1, 0x1

    const v2, 0x3e99999a    # 0.3f

    aput v2, v0, v1

    .line 297
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    const/4 v1, 0x2

    const v2, 0x3ecccccd    # 0.4f

    aput v2, v0, v1

    .line 298
    return-void
.end method

.method private static setDefaultNormalLightnessValues(Lcom/android/internal/graphics/palette/Target;)V
    .locals 3
    .param p0, "target"    # Lcom/android/internal/graphics/palette/Target;

    .line 280
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    aput v2, v0, v1

    .line 281
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v0, v1

    .line 282
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    const/4 v1, 0x2

    const v2, 0x3f333333    # 0.7f

    aput v2, v0, v1

    .line 283
    return-void
.end method

.method private static setDefaultVibrantSaturationValues(Lcom/android/internal/graphics/palette/Target;)V
    .locals 3
    .param p0, "target"    # Lcom/android/internal/graphics/palette/Target;

    .line 291
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    const/4 v1, 0x0

    const v2, 0x3eb33333    # 0.35f

    aput v2, v0, v1

    .line 292
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 293
    return-void
.end method

.method private setDefaultWeights()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    const v1, 0x3e75c28f    # 0.24f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 253
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    const/4 v2, 0x1

    const v3, 0x3f051eb8    # 0.52f

    aput v3, v0, v2

    .line 254
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 255
    return-void
.end method

.method private static setTargetDefaultValues([F)V
    .locals 2
    .param p0, "values"    # [F

    .line 246
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 247
    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    aput v1, p0, v0

    .line 248
    const/4 v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    .line 249
    return-void
.end method


# virtual methods
.method public getLightnessWeight()F
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMaximumLightness()F
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getMaximumSaturation()F
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getMinimumLightness()F
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMinimumSaturation()F
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getPopulationWeight()F
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getSaturationWeight()F
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getTargetLightness()F
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getTargetSaturation()F
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public isExclusive()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/android/internal/graphics/palette/Target;->mIsExclusive:Z

    return v0
.end method

.method normalizeWeights()V
    .locals 6

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "sum":F
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    array-length v2, v2

    .local v2, "z":I
    :goto_0
    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 260
    iget-object v4, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    aget v4, v4, v1

    .line 261
    .local v4, "weight":F
    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    .line 262
    add-float/2addr v0, v4

    .line 259
    .end local v4    # "weight":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_1
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_3

    .line 266
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    array-length v2, v2

    .restart local v2    # "z":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 267
    iget-object v4, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v3

    if-lez v4, :cond_2

    .line 268
    iget-object v4, p0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    aget v5, v4, v1

    div-float/2addr v5, v0

    aput v5, v4, v1

    .line 266
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 272
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_3
    return-void
.end method
