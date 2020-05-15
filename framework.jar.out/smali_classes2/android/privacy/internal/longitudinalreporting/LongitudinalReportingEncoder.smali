.class public Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;
.super Ljava/lang/Object;
.source "LongitudinalReportingEncoder.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyEncoder;


# static fields
.field private static final DEBUG:Z = false

.field private static final PRR1_ENCODER_ID:Ljava/lang/String; = "prr1_encoder_id"

.field private static final PRR2_ENCODER_ID:Ljava/lang/String; = "prr2_encoder_id"

.field private static final TAG:Ljava/lang/String; = "LongitudinalEncoder"


# instance fields
.field private final mConfig:Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

.field private final mFakeValue:Ljava/lang/Boolean;

.field private final mIRREncoder:Landroid/privacy/internal/rappor/RapporEncoder;

.field private final mIsSecure:Z


# direct methods
.method private constructor <init>(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;Z[B)V
    .locals 5
    .param p1, "config"    # Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
    .param p2, "secureEncoder"    # Z
    .param p3, "userSecret"    # [B

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mConfig:Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    .line 103
    iput-boolean p2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIsSecure:Z

    .line 104
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getProbabilityP()D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getEncoderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prr1_encoder_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v0, v1, p2, p3, v2}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->getLongTermRandomizedResult(DZ[BLjava/lang/String;)Z

    move-result v0

    .line 107
    .local v0, "ignoreOriginalInput":Z
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getProbabilityQ()D

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getEncoderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "prr2_encoder_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-static {v1, v2, p2, p3, v3}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->getLongTermRandomizedResult(DZ[BLjava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    goto :goto_0

    .line 112
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    .line 115
    :goto_0
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getIRRConfig()Landroid/privacy/internal/rappor/RapporConfig;

    move-result-object v1

    .line 116
    .local v1, "irrConfig":Landroid/privacy/internal/rappor/RapporConfig;
    if-eqz p2, :cond_1

    .line 117
    invoke-static {v1, p3}, Landroid/privacy/internal/rappor/RapporEncoder;->createEncoder(Landroid/privacy/internal/rappor/RapporConfig;[B)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object v2

    goto :goto_1

    .line 118
    :cond_1
    invoke-static {v1}, Landroid/privacy/internal/rappor/RapporEncoder;->createInsecureEncoderForTest(Landroid/privacy/internal/rappor/RapporConfig;)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIRREncoder:Landroid/privacy/internal/rappor/RapporEncoder;

    .line 119
    return-void
.end method

.method public static createEncoder(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;[B)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;
    .locals 2
    .param p0, "config"    # Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
    .param p1, "userSecret"    # [B

    .line 83
    new-instance v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;-><init>(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;Z[B)V

    return-object v0
.end method

.method public static createInsecureEncoderForTest(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;
    .locals 3
    .param p0, "config"    # Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 97
    new-instance v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;-><init>(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;Z[B)V

    return-object v0
.end method

.method public static getLongTermRandomizedResult(DZ[BLjava/lang/String;)Z
    .locals 15
    .param p0, "p"    # D
    .param p2, "secureEncoder"    # Z
    .param p3, "userSecret"    # [B
    .param p4, "encoderId"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 172
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, p0, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-gez v2, :cond_0

    mul-double v2, p0, v3

    :goto_0
    move-wide v7, v2

    goto :goto_1

    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, p0

    mul-double v2, v5, v3

    goto :goto_0

    .line 173
    .local v7, "effectiveF":D
    :goto_1
    cmpg-double v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_2

    :cond_1
    move v0, v1

    .line 174
    .local v0, "prrInput":Z
    :goto_2
    new-instance v3, Landroid/privacy/internal/rappor/RapporConfig;

    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v4, v3

    move-object/from16 v5, p4

    invoke-direct/range {v4 .. v14}, Landroid/privacy/internal/rappor/RapporConfig;-><init>(Ljava/lang/String;IDDDII)V

    .line 176
    .local v3, "prrConfig":Landroid/privacy/internal/rappor/RapporConfig;
    if-eqz p2, :cond_2

    .line 177
    move-object/from16 v5, p3

    invoke-static {v3, v5}, Landroid/privacy/internal/rappor/RapporEncoder;->createEncoder(Landroid/privacy/internal/rappor/RapporConfig;[B)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object v6

    goto :goto_3

    .line 178
    :cond_2
    move-object/from16 v5, p3

    invoke-static {v3}, Landroid/privacy/internal/rappor/RapporEncoder;->createInsecureEncoderForTest(Landroid/privacy/internal/rappor/RapporConfig;)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object v6

    .line 179
    .local v6, "encoder":Landroid/privacy/internal/rappor/RapporEncoder;
    :goto_3
    invoke-virtual {v6, v0}, Landroid/privacy/internal/rappor/RapporEncoder;->encodeBoolean(Z)[B

    move-result-object v9

    aget-byte v9, v9, v2

    if-lez v9, :cond_3

    goto :goto_4

    :cond_3
    move v1, v2

    :goto_4
    return v1
.end method


# virtual methods
.method public encodeBits([B)[B
    .locals 1
    .param p1, "bits"    # [B

    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public encodeBoolean(Z)[B
    .locals 1
    .param p1, "original"    # Z

    .line 132
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIRREncoder:Landroid/privacy/internal/rappor/RapporEncoder;

    invoke-virtual {v0, p1}, Landroid/privacy/internal/rappor/RapporEncoder;->encodeBoolean(Z)[B

    move-result-object v0

    .line 139
    .local v0, "result":[B
    return-object v0
.end method

.method public encodeString(Ljava/lang/String;)[B
    .locals 1
    .param p1, "original"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getConfig()Landroid/privacy/DifferentialPrivacyConfig;
    .locals 1

    .line 50
    invoke-virtual {p0}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->getConfig()Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
    .locals 1

    .line 149
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mConfig:Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    return-object v0
.end method

.method public isInsecureEncoderForTest()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIsSecure:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
