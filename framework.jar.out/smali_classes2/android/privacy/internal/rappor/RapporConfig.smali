.class public Landroid/privacy/internal/rappor/RapporConfig;
.super Ljava/lang/Object;
.source "RapporConfig.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyConfig;


# static fields
.field private static final ALGORITHM_NAME:Ljava/lang/String; = "Rappor"


# instance fields
.field final mEncoderId:Ljava/lang/String;

.field final mNumBits:I

.field final mNumBloomHashes:I

.field final mNumCohorts:I

.field final mProbabilityF:D

.field final mProbabilityP:D

.field final mProbabilityQ:D


# direct methods
.method public constructor <init>(Ljava/lang/String;IDDDII)V
    .locals 19
    .param p1, "encoderId"    # Ljava/lang/String;
    .param p2, "numBits"    # I
    .param p3, "probabilityF"    # D
    .param p5, "probabilityP"    # D
    .param p7, "probabilityQ"    # D
    .param p9, "numCohorts"    # I
    .param p10, "numBloomHashes"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    .line 54
    move/from16 v9, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x1

    xor-int/2addr v10, v11

    const-string v12, "encoderId cannot be empty"

    invoke-static {v10, v12}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 56
    move-object/from16 v10, p1

    iput-object v10, v0, Landroid/privacy/internal/rappor/RapporConfig;->mEncoderId:Ljava/lang/String;

    .line 57
    const/4 v12, 0x0

    if-lez v1, :cond_0

    move v13, v11

    goto :goto_0

    :cond_0
    move v13, v12

    :goto_0
    const-string/jumbo v14, "numBits needs to be > 0"

    invoke-static {v13, v14}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 58
    iput v1, v0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBits:I

    .line 59
    const-wide/16 v13, 0x0

    cmpl-double v15, v2, v13

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-ltz v15, :cond_1

    cmpg-double v15, v2, v16

    if-gtz v15, :cond_1

    move v15, v11

    goto :goto_1

    :cond_1
    move v15, v12

    :goto_1
    const-string/jumbo v11, "probabilityF must be in range [0.0, 1.0]"

    invoke-static {v15, v11}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 61
    iput-wide v2, v0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityF:D

    .line 62
    cmpl-double v11, v4, v13

    if-ltz v11, :cond_2

    cmpg-double v11, v4, v16

    if-gtz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    move v11, v12

    :goto_2
    const-string/jumbo v15, "probabilityP must be in range [0.0, 1.0]"

    invoke-static {v11, v15}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 64
    iput-wide v4, v0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityP:D

    .line 65
    cmpl-double v11, v6, v13

    if-ltz v11, :cond_3

    cmpg-double v11, v6, v16

    if-gtz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    move v11, v12

    :goto_3
    const-string/jumbo v13, "probabilityQ must be in range [0.0, 1.0]"

    invoke-static {v11, v13}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 67
    iput-wide v6, v0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityQ:D

    .line 68
    if-lez v8, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    move v11, v12

    :goto_4
    const-string/jumbo v13, "numCohorts needs to be > 0"

    invoke-static {v11, v13}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 69
    iput v8, v0, Landroid/privacy/internal/rappor/RapporConfig;->mNumCohorts:I

    .line 70
    if-lez v9, :cond_5

    const/4 v12, 0x1

    nop

    :cond_5
    const-string/jumbo v11, "numBloomHashes needs to be > 0"

    invoke-static {v12, v11}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 71
    iput v9, v0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBloomHashes:I

    .line 72
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "Rappor"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 81
    const-string v0, "EncoderId: %s, NumBits: %d, ProbabilityF: %.3f, ProbabilityP: %.3f, ProbabilityQ: %.3f, NumCohorts: %d, NumBloomHashes: %d"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/privacy/internal/rappor/RapporConfig;->mEncoderId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBits:I

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityF:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityP:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityQ:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Landroid/privacy/internal/rappor/RapporConfig;->mNumCohorts:I

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBloomHashes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 81
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
