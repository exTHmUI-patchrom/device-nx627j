.class public Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
.super Ljava/lang/Object;
.source "LongitudinalReportingConfig.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyConfig;


# static fields
.field private static final ALGORITHM_NAME:Ljava/lang/String; = "LongitudinalReporting"


# instance fields
.field private final mEncoderId:Ljava/lang/String;

.field private final mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

.field private final mProbabilityF:D

.field private final mProbabilityP:D

.field private final mProbabilityQ:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DDD)V
    .locals 21
    .param p1, "encoderId"    # Ljava/lang/String;
    .param p2, "probabilityF"    # D
    .param p4, "probabilityP"    # D
    .param p6, "probabilityQ"    # D

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    .line 65
    move-wide/from16 v10, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/16 v1, 0x0

    cmpl-double v3, v12, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-ltz v3, :cond_0

    cmpg-double v3, v12, v6

    if-gtz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const-string/jumbo v8, "probabilityF must be in range [0.0, 1.0]"

    invoke-static {v3, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 68
    iput-wide v12, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityF:D

    .line 69
    cmpl-double v3, v14, v1

    if-ltz v3, :cond_1

    cmpg-double v3, v14, v6

    if-gtz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string/jumbo v8, "probabilityP must be in range [0.0, 1.0]"

    invoke-static {v3, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 71
    iput-wide v14, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    .line 72
    cmpl-double v1, v10, v1

    if-ltz v1, :cond_2

    cmpg-double v1, v10, v6

    if-gtz v1, :cond_2

    move v4, v5

    nop

    :cond_2
    const-string/jumbo v1, "probabilityQ must be in range [0.0, 1.0]"

    invoke-static {v4, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 74
    iput-wide v10, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    .line 75
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v5

    const-string v2, "encoderId cannot be empty"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 76
    move-object/from16 v8, p1

    iput-object v8, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    .line 77
    new-instance v9, Landroid/privacy/internal/rappor/RapporConfig;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    sub-double v16, v6, v12

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object v1, v9

    move-object v2, v8

    move-wide v6, v12

    move-object/from16 v20, v9

    move-wide/from16 v8, v16

    move/from16 v10, v18

    move/from16 v11, v19

    invoke-direct/range {v1 .. v11}, Landroid/privacy/internal/rappor/RapporConfig;-><init>(Ljava/lang/String;IDDDII)V

    move-object/from16 v1, v20

    iput-object v1, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

    .line 78
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, "LongitudinalReporting"

    return-object v0
.end method

.method getEncoderId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    return-object v0
.end method

.method getIRRConfig()Landroid/privacy/internal/rappor/RapporConfig;
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

    return-object v0
.end method

.method getProbabilityP()D
    .locals 2

    .line 90
    iget-wide v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    return-wide v0
.end method

.method getProbabilityQ()D
    .locals 2

    .line 94
    iget-wide v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 103
    const-string v0, "EncoderId: %s, ProbabilityF: %.3f, ProbabilityP: %.3f, ProbabilityQ: %.3f"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityF:D

    .line 105
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 103
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
