.class public final Landroid/media/audiofx/DynamicsProcessing$Channel;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Channel"
.end annotation


# instance fields
.field private mInputGain:F

.field private mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

.field private mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

.field private mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

.field private mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;


# direct methods
.method public constructor <init>(FZIZIZIZ)V
    .locals 19
    .param p1, "inputGain"    # F
    .param p2, "preEqInUse"    # Z
    .param p3, "preEqBandCount"    # I
    .param p4, "mbcInUse"    # Z
    .param p5, "mbcBandCount"    # I
    .param p6, "postEqInUse"    # Z
    .param p7, "postEqBandCount"    # I
    .param p8, "limiterInUse"    # Z

    move-object/from16 v0, p0

    .line 1055
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    move/from16 v1, p1

    iput v1, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    .line 1057
    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$Eq;

    const/4 v3, 0x1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct {v2, v4, v3, v5}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(ZZI)V

    iput-object v2, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1058
    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct {v2, v6, v3, v7}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(ZZI)V

    iput-object v2, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1059
    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$Eq;

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct {v2, v8, v3, v9}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(ZZI)V

    iput-object v2, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1061
    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x42700000    # 60.0f

    const/high16 v16, 0x41200000    # 10.0f

    const/high16 v17, -0x40000000    # -2.0f

    const/16 v18, 0x0

    move-object v10, v2

    move/from16 v11, p8

    invoke-direct/range {v10 .. v18}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(ZZIFFFFF)V

    iput-object v2, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    .line 1065
    return-void
.end method

.method public constructor <init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V
    .locals 2
    .param p1, "cfg"    # Landroid/media/audiofx/DynamicsProcessing$Channel;

    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    .line 1073
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1074
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-direct {v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1075
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1076
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    invoke-direct {v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    .line 1077
    return-void
.end method


# virtual methods
.method public getInputGain()F
    .locals 1

    .line 1098
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    return v0
.end method

.method public getLimiter()Landroid/media/audiofx/DynamicsProcessing$Limiter;
    .locals 1

    .line 1221
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    return-object v0
.end method

.method public getMbc()Landroid/media/audiofx/DynamicsProcessing$Mbc;
    .locals 1

    .line 1149
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    return-object v0
.end method

.method public getMbcBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .locals 1
    .param p1, "band"    # I

    .line 1169
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object v0

    return-object v0
.end method

.method public getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;
    .locals 1

    .line 1185
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    return-object v0
.end method

.method public getPostEqBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 1
    .param p1, "band"    # I

    .line 1205
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v0

    return-object v0
.end method

.method public getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;
    .locals 1

    .line 1113
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    return-object v0
.end method

.method public getPreEqBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 1
    .param p1, "band"    # I

    .line 1133
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v0

    return-object v0
.end method

.method public setInputGain(F)V
    .locals 0
    .param p1, "inputGain"    # F

    .line 1105
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    .line 1106
    return-void
.end method

.method public setLimiter(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .locals 1
    .param p1, "limiter"    # Landroid/media/audiofx/DynamicsProcessing$Limiter;

    .line 1228
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    .line 1229
    return-void
.end method

.method public setMbc(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .locals 3
    .param p1, "mbc"    # Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1157
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1161
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1162
    return-void

    .line 1158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MbcBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1159
    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMbcBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 1
    .param p1, "band"    # I
    .param p2, "mbcBand"    # Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 1177
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->setBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    .line 1178
    return-void
.end method

.method public setPostEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 3
    .param p1, "postEq"    # Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1193
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1197
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1198
    return-void

    .line 1194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostEqBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1195
    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPostEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 1
    .param p1, "band"    # I
    .param p2, "postEqBand"    # Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 1213
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->setBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    .line 1214
    return-void
.end method

.method public setPreEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 3
    .param p1, "preEq"    # Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1121
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1125
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1126
    return-void

    .line 1122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreEqBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1123
    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 1
    .param p1, "band"    # I
    .param p2, "preEqBand"    # Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 1141
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->setBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    .line 1142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " InputGain: %f\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    const-string v1, "-->PreEq\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    const-string v1, "-->MBC\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    const-string v1, "-->PostEq\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    const-string v1, "-->Limiter\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
