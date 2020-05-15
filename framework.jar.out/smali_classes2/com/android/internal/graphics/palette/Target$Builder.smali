.class public final Lcom/android/internal/graphics/palette/Target$Builder;
.super Ljava/lang/Object;
.source "Target.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mTarget:Lcom/android/internal/graphics/palette/Target;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Lcom/android/internal/graphics/palette/Target;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Target;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    .line 311
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/graphics/palette/Target;)V
    .locals 1
    .param p1, "target"    # Lcom/android/internal/graphics/palette/Target;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Lcom/android/internal/graphics/palette/Target;

    invoke-direct {v0, p1}, Lcom/android/internal/graphics/palette/Target;-><init>(Lcom/android/internal/graphics/palette/Target;)V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    .line 318
    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/graphics/palette/Target;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    return-object v0
.end method

.method public setExclusive(Z)Lcom/android/internal/graphics/palette/Target$Builder;
    .locals 1
    .param p1, "exclusive"    # Z

    .line 423
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    iput-boolean p1, v0, Lcom/android/internal/graphics/palette/Target;->mIsExclusive:Z

    .line 424
    return-object p0
.end method

.method public setLightnessWeight(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .locals 2
    .param p1, "weight"    # F

    .line 396
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 397
    return-object p0
.end method

.method public setMaximumLightness(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .locals 2
    .param p1, "value"    # F

    .line 364
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 365
    return-object p0
.end method

.method public setMaximumSaturation(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .locals 2
    .param p1, "value"    # F

    .line 340
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 341
    return-object p0
.end method

.method public setMinimumLightness(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .locals 2
    .param p1, "value"    # F

    .line 348
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 349
    return-object p0
.end method

.method public setMinimumSaturation(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .locals 2
    .param p1, "value"    # F

    .line 324
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 325
    return-object p0
.end method

.method public setPopulationWeight(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .locals 2
    .param p1, "weight"    # F

    .line 411
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 412
    return-object p0
.end method

.method public setSaturationWeight(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .locals 2
    .param p1, "weight"    # F

    .line 380
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/Target;->mWeights:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 381
    return-object p0
.end method

.method public setTargetLightness(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .locals 2
    .param p1, "value"    # F

    .line 356
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 357
    return-object p0
.end method

.method public setTargetSaturation(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .locals 2
    .param p1, "value"    # F

    .line 332
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/Target;->mSaturationTargets:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 333
    return-object p0
.end method
