.class public final Landroid/media/audiofx/DynamicsProcessing$Eq;
.super Landroid/media/audiofx/DynamicsProcessing$BandStage;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eq"
.end annotation


# instance fields
.field private final mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;


# direct methods
.method public constructor <init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 4
    .param p1, "cfg"    # Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 742
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isEnabled()Z

    move-result v1

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/audiofx/DynamicsProcessing$BandStage;-><init>(ZZI)V

    .line 743
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p1, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v0, v0

    new-array v0, v0, [Landroid/media/audiofx/DynamicsProcessing$EqBand;

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 745
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 746
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$EqBand;

    iget-object v3, p1, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Landroid/media/audiofx/DynamicsProcessing$EqBand;-><init>(Landroid/media/audiofx/DynamicsProcessing$EqBand;)V

    aput-object v2, v1, v0

    .line 745
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "b":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 751
    :cond_1
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 9
    .param p1, "inUse"    # Z
    .param p2, "enabled"    # Z
    .param p3, "bandCount"    # I

    .line 722
    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiofx/DynamicsProcessing$BandStage;-><init>(ZZI)V

    .line 723
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    new-array v0, p3, [Landroid/media/audiofx/DynamicsProcessing$EqBand;

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 725
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 726
    const v1, 0x469c4000    # 20000.0f

    .line 727
    .local v1, "freq":F
    const/4 v2, 0x1

    if-le p3, v2, :cond_0

    .line 728
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->access$000()F

    move-result v5

    int-to-float v6, v0

    .line 729
    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->access$100()F

    move-result v7

    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->access$000()F

    move-result v8

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-int/lit8 v7, p3, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v5, v5

    .line 728
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 731
    :cond_0
    iget-object v3, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    new-instance v4, Landroid/media/audiofx/DynamicsProcessing$EqBand;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v1, v5}, Landroid/media/audiofx/DynamicsProcessing$EqBand;-><init>(ZFF)V

    aput-object v4, v3, v0

    .line 725
    .end local v1    # "freq":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    .end local v0    # "b":I
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 736
    :cond_2
    return-void
.end method

.method private checkBand(I)V
    .locals 3
    .param p1, "band"    # I

    .line 771
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 774
    return-void

    .line 772
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "band index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 1
    .param p1, "band"    # I

    .line 790
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->checkBand(I)V

    .line 791
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 2
    .param p1, "band"    # I
    .param p2, "bandCfg"    # Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 781
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->checkBand(I)V

    .line 782
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$EqBand;

    invoke-direct {v1, p2}, Landroid/media/audiofx/DynamicsProcessing$EqBand;-><init>(Landroid/media/audiofx/DynamicsProcessing$EqBand;)V

    aput-object v1, v0, p1

    .line 783
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$BandStage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->EqBands: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    const/4 v1, 0x0

    move v2, v1

    .local v2, "b":I
    :goto_0
    iget-object v3, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 760
    const-string v3, "  Band %d\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    iget-object v3, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 764
    .end local v2    # "b":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
