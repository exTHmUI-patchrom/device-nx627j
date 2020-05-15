.class public final Landroid/media/audiofx/DynamicsProcessing$MbcBand;
.super Landroid/media/audiofx/DynamicsProcessing$BandBase;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MbcBand"
.end annotation


# instance fields
.field private mAttackTime:F

.field private mExpanderRatio:F

.field private mKneeWidth:F

.field private mNoiseGateThreshold:F

.field private mPostGain:F

.field private mPreGain:F

.field private mRatio:F

.field private mReleaseTime:F

.field private mThreshold:F


# direct methods
.method public constructor <init>(Landroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 2
    .param p1, "cfg"    # Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 573
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getCutoffFrequency()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing$BandBase;-><init>(ZF)V

    .line 574
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    .line 575
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    .line 576
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    .line 577
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    .line 578
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    .line 579
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    .line 580
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    .line 581
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    .line 582
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    .line 583
    return-void
.end method

.method public constructor <init>(ZFFFFFFFFFF)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "cutoffFrequency"    # F
    .param p3, "attackTime"    # F
    .param p4, "releaseTime"    # F
    .param p5, "ratio"    # F
    .param p6, "threshold"    # F
    .param p7, "kneeWidth"    # F
    .param p8, "noiseGateThreshold"    # F
    .param p9, "expanderRatio"    # F
    .param p10, "preGain"    # F
    .param p11, "postGain"    # F

    .line 556
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$BandBase;-><init>(ZF)V

    .line 557
    iput p3, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    .line 558
    iput p4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    .line 559
    iput p5, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    .line 560
    iput p6, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    .line 561
    iput p7, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    .line 562
    iput p8, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    .line 563
    iput p9, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    .line 564
    iput p10, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    .line 565
    iput p11, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    .line 566
    return-void
.end method


# virtual methods
.method public getAttackTime()F
    .locals 1

    .line 604
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    return v0
.end method

.method public getExpanderRatio()F
    .locals 1

    .line 676
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    return v0
.end method

.method public getKneeWidth()F
    .locals 1

    .line 648
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    return v0
.end method

.method public getNoiseGateThreshold()F
    .locals 1

    .line 663
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    return v0
.end method

.method public getPostGain()F
    .locals 1

    .line 699
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    return v0
.end method

.method public getPreGain()F
    .locals 1

    .line 687
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    return v0
.end method

.method public getRatio()F
    .locals 1

    .line 624
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    return v0
.end method

.method public getReleaseTime()F
    .locals 1

    .line 614
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    return v0
.end method

.method public getThreshold()F
    .locals 1

    .line 635
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    return v0
.end method

.method public setAttackTime(F)V
    .locals 0
    .param p1, "attackTime"    # F

    .line 609
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    return-void
.end method

.method public setExpanderRatio(F)V
    .locals 0
    .param p1, "expanderRatio"    # F

    .line 681
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    return-void
.end method

.method public setKneeWidth(F)V
    .locals 0
    .param p1, "kneeWidth"    # F

    .line 655
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    return-void
.end method

.method public setNoiseGateThreshold(F)V
    .locals 0
    .param p1, "noiseGateThreshold"    # F

    .line 671
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    return-void
.end method

.method public setPostGain(F)V
    .locals 0
    .param p1, "postGain"    # F

    .line 705
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    return-void
.end method

.method public setPreGain(F)V
    .locals 0
    .param p1, "preGain"    # F

    .line 693
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    return-void
.end method

.method public setRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .line 629
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    return-void
.end method

.method public setReleaseTime(F)V
    .locals 0
    .param p1, "releaseTime"    # F

    .line 619
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    return-void
.end method

.method public setThreshold(F)V
    .locals 0
    .param p1, "threshold"    # F

    .line 641
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$BandBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string v1, " AttackTime: %f (ms)\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v1, " ReleaseTime: %f (ms)\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const-string v1, " Ratio: 1:%f\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string v1, " Threshold: %f (dB)\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v1, " NoiseGateThreshold: %f(dB)\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v1, " ExpanderRatio: %f:1\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    const-string v1, " PreGain: %f (dB)\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v1, " PostGain: %f (dB)\n"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
