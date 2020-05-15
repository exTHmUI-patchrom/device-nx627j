.class public final Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

.field private mChannelCount:I

.field private mLimiterInUse:Z

.field private mMbcBandCount:I

.field private mMbcInUse:Z

.field private mPostEqBandCount:I

.field private mPostEqInUse:Z

.field private mPreEqBandCount:I

.field private mPreEqInUse:Z

.field private mPreferredFrameDuration:F

.field private mVariant:I


# direct methods
.method public constructor <init>(IIZIZIZIZ)V
    .locals 25
    .param p1, "variant"    # I
    .param p2, "channelCount"    # I
    .param p3, "preEqInUse"    # Z
    .param p4, "preEqBandCount"    # I
    .param p5, "mbcInUse"    # Z
    .param p6, "mbcBandCount"    # I
    .param p7, "postEqInUse"    # Z
    .param p8, "postEqBandCount"    # I
    .param p9, "limiterInUse"    # Z

    move-object/from16 v0, p0

    .line 1642
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1635
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreferredFrameDuration:F

    .line 1643
    move/from16 v1, p1

    iput v1, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mVariant:I

    .line 1644
    move/from16 v2, p2

    iput v2, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannelCount:I

    .line 1645
    move/from16 v3, p3

    iput-boolean v3, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqInUse:Z

    .line 1646
    move/from16 v4, p4

    iput v4, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    .line 1647
    move/from16 v5, p5

    iput-boolean v5, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcInUse:Z

    .line 1648
    move/from16 v6, p6

    iput v6, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    .line 1649
    move/from16 v7, p7

    iput-boolean v7, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqInUse:Z

    .line 1650
    move/from16 v8, p8

    iput v8, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    .line 1651
    move/from16 v9, p9

    iput-boolean v9, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mLimiterInUse:Z

    .line 1652
    iget v10, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannelCount:I

    new-array v10, v10, [Landroid/media/audiofx/DynamicsProcessing$Channel;

    iput-object v10, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    .line 1653
    const/4 v10, 0x0

    .local v10, "ch":I
    :goto_0
    iget v11, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannelCount:I

    if-ge v10, v11, :cond_0

    .line 1654
    iget-object v11, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    new-instance v21, Landroid/media/audiofx/DynamicsProcessing$Channel;

    iget-boolean v14, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqInUse:Z

    iget v15, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    iget-boolean v12, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcInUse:Z

    iget v13, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    move/from16 v22, v13

    iget-boolean v13, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqInUse:Z

    move/from16 v23, v13

    iget v13, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    iget-boolean v1, v0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mLimiterInUse:Z

    move/from16 v16, v12

    move-object/from16 v12, v21

    move/from16 v19, v13

    move/from16 v17, v22

    move/from16 v18, v23

    const/4 v13, 0x0

    move/from16 v20, v1

    invoke-direct/range {v12 .. v20}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(FZIZIZIZ)V

    aput-object v21, v11, v10

    .line 1653
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    goto :goto_0

    .line 1660
    .end local v10    # "ch":I
    :cond_0
    return-void
.end method

.method private checkChannel(I)V
    .locals 2
    .param p1, "channelIndex"    # I

    .line 1663
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1666
    return-void

    .line 1664
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ChannelIndex out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/media/audiofx/DynamicsProcessing$Config;
    .locals 13

    .line 1762
    new-instance v12, Landroid/media/audiofx/DynamicsProcessing$Config;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mVariant:I

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreferredFrameDuration:F

    iget v3, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannelCount:I

    iget-boolean v4, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqInUse:Z

    iget v5, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    iget-boolean v6, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcInUse:Z

    iget v7, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    iget-boolean v8, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqInUse:Z

    iget v9, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    iget-boolean v10, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mLimiterInUse:Z

    iget-object v11, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/media/audiofx/DynamicsProcessing$Config;-><init>(IFIZIZIZIZ[Landroid/media/audiofx/DynamicsProcessing$Channel;)V

    return-object v12
.end method

.method public setAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Channel;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 2
    .param p1, "channel"    # Landroid/media/audiofx/DynamicsProcessing$Channel;

    .line 1707
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1708
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    .line 1707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1710
    .end local v0    # "ch":I
    :cond_0
    return-object p0
.end method

.method public setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 3
    .param p1, "channelIndex"    # I
    .param p2, "channel"    # Landroid/media/audiofx/DynamicsProcessing$Channel;

    .line 1689
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    .line 1691
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getMbc()Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1695
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1699
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1703
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Channel;

    invoke-direct {v1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V

    aput-object v1, v0, p1

    .line 1704
    return-object p0

    .line 1700
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostEqBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1696
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreEqBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1692
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MbcBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputGainAllChannelsTo(F)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 2
    .param p1, "inputGain"    # F

    .line 1682
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1683
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setInputGain(F)V

    .line 1682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1685
    .end local v0    # "ch":I
    :cond_0
    return-object p0
.end method

.method public setInputGainByChannelIndex(IF)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 1
    .param p1, "channelIndex"    # I
    .param p2, "inputGain"    # F

    .line 1677
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    .line 1678
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setInputGain(F)V

    .line 1679
    return-object p0
.end method

.method public setLimiterAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Limiter;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 2
    .param p1, "limiter"    # Landroid/media/audiofx/DynamicsProcessing$Limiter;

    .line 1755
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1756
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    .line 1755
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1758
    .end local v0    # "ch":I
    :cond_0
    return-object p0
.end method

.method public setLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 1
    .param p1, "channelIndex"    # I
    .param p2, "limiter"    # Landroid/media/audiofx/DynamicsProcessing$Limiter;

    .line 1750
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    .line 1751
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setLimiter(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    .line 1752
    return-object p0
.end method

.method public setMbcAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Mbc;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 2
    .param p1, "mbc"    # Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1731
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1732
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    .line 1731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1734
    .end local v0    # "ch":I
    :cond_0
    return-object p0
.end method

.method public setMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 1
    .param p1, "channelIndex"    # I
    .param p2, "mbc"    # Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1726
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    .line 1727
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setMbc(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    .line 1728
    return-object p0
.end method

.method public setPostEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 2
    .param p1, "postEq"    # Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1743
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1744
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setPostEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    .line 1743
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1746
    .end local v0    # "ch":I
    :cond_0
    return-object p0
.end method

.method public setPostEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 1
    .param p1, "channelIndex"    # I
    .param p2, "postEq"    # Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1738
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    .line 1739
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPostEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 1740
    return-object p0
.end method

.method public setPreEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 2
    .param p1, "preEq"    # Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1719
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1720
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setPreEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    .line 1719
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1722
    .end local v0    # "ch":I
    :cond_0
    return-object p0
.end method

.method public setPreEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 1
    .param p1, "channelIndex"    # I
    .param p2, "preEq"    # Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1714
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    .line 1715
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPreEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 1716
    return-object p0
.end method

.method public setPreferredFrameDuration(F)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 2
    .param p1, "frameDuration"    # F

    .line 1669
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1672
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreferredFrameDuration:F

    .line 1673
    return-object p0

    .line 1670
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected positive frameDuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
