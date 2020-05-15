.class public Landroid/hardware/display/BrightnessConfiguration$Builder;
.super Ljava/lang/Object;
.source "BrightnessConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/BrightnessConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCurveLux:[F

.field private mCurveNits:[F

.field private mDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0
    .param p1, "lux"    # [F
    .param p2, "nits"    # [F

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setCurve([F[F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 163
    return-void
.end method

.method private static checkMonotonic([FZLjava/lang/String;)V
    .locals 6
    .param p0, "vals"    # [F
    .param p1, "strictlyIncreasing"    # Z
    .param p2, "name"    # Ljava/lang/String;

    .line 224
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 228
    .local v0, "prev":F
    nop

    .line 228
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 229
    aget v2, p0, v1

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_2

    aget v2, p0, v1

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 233
    :cond_1
    aget v0, p0, v1

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    const-string/jumbo v2, "strictly increasing"

    goto :goto_2

    :cond_3
    const-string/jumbo v2, "monotonic"

    .line 231
    .local v2, "condition":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " values must be "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    .end local v1    # "i":I
    .end local v2    # "condition":Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/display/BrightnessConfiguration;
    .locals 5

    .line 217
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCurveLux:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCurveNits:[F

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Landroid/hardware/display/BrightnessConfiguration;

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCurveLux:[F

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCurveNits:[F

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mDescription:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/display/BrightnessConfiguration;-><init>([F[FLjava/lang/String;Landroid/hardware/display/BrightnessConfiguration$1;)V

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A curve must be set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCurve([F[F)Landroid/hardware/display/BrightnessConfiguration$Builder;
    .locals 4
    .param p1, "lux"    # [F
    .param p2, "nits"    # [F

    .line 180
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    array-length v0, p1

    if-eqz v0, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    .line 185
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 188
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 191
    const-string/jumbo v1, "lux"

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {p1, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 192
    const-string/jumbo v1, "nits"

    invoke-static {p2, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 193
    const/4 v1, 0x1

    const-string/jumbo v2, "lux"

    invoke-static {p1, v1, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->checkMonotonic([FZLjava/lang/String;)V

    .line 194
    const-string/jumbo v1, "nits"

    invoke-static {p2, v0, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->checkMonotonic([FZLjava/lang/String;)V

    .line 195
    iput-object p1, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCurveLux:[F

    .line 196
    iput-object p2, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCurveNits:[F

    .line 197
    return-object p0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial control point must be for 0 lux"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lux and nits arrays must be the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lux and nits arrays must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 207
    iput-object p1, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mDescription:Ljava/lang/String;

    .line 208
    return-object p0
.end method
