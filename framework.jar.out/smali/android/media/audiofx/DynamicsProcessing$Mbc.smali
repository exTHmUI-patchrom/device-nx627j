.class public final Landroid/media/audiofx/DynamicsProcessing$Mbc;
.super Landroid/media/audiofx/DynamicsProcessing$BandStage;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mbc"
.end annotation


# instance fields
.field private final mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;


# direct methods
.method public constructor <init>(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .locals 4
    .param p1, "cfg"    # Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 833
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isEnabled()Z

    move-result v1

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/audiofx/DynamicsProcessing$BandStage;-><init>(ZZI)V

    .line 834
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p1, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v0, v0

    new-array v0, v0, [Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 836
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 837
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    iget-object v3, p1, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;-><init>(Landroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    aput-object v2, v1, v0

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 840
    .end local v0    # "b":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 842
    :cond_1
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 19
    .param p1, "inUse"    # Z
    .param p2, "enabled"    # Z
    .param p3, "bandCount"    # I

    move-object/from16 v0, p0

    .line 809
    move/from16 v1, p3

    invoke-direct/range {p0 .. p3}, Landroid/media/audiofx/DynamicsProcessing$BandStage;-><init>(ZZI)V

    .line 810
    invoke-virtual/range {p0 .. p0}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 811
    new-array v2, v1, [Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    iput-object v2, v0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 812
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 813
    const v3, 0x469c4000    # 20000.0f

    .line 814
    .local v3, "freq":F
    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    .line 815
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->access$000()F

    move-result v6

    int-to-float v7, v2

    .line 816
    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->access$100()F

    move-result v8

    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->access$000()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-int/lit8 v8, v1, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    .line 815
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 818
    :cond_0
    iget-object v15, v0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    new-instance v16, Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    const/4 v5, 0x1

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x42a00000    # 80.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, -0x3dcc0000    # -45.0f

    const/4 v11, 0x0

    const/high16 v12, -0x3d4c0000    # -90.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v4, v16

    move v6, v3

    move-object/from16 v18, v15

    move/from16 v15, v17

    invoke-direct/range {v4 .. v15}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;-><init>(ZFFFFFFFFFF)V

    aput-object v16, v18, v2

    .line 812
    .end local v3    # "freq":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 825
    .end local v2    # "b":I
    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 827
    :cond_2
    return-void
.end method

.method private checkBand(I)V
    .locals 3
    .param p1, "band"    # I

    .line 862
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 865
    return-void

    .line 863
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
.method public getBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .locals 1
    .param p1, "band"    # I

    .line 881
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->checkBand(I)V

    .line 882
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 2
    .param p1, "band"    # I
    .param p2, "bandCfg"    # Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 872
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->checkBand(I)V

    .line 873
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    invoke-direct {v1, p2}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;-><init>(Landroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    aput-object v1, v0, p1

    .line 874
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$BandStage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->MbcBands: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const/4 v1, 0x0

    move v2, v1

    .local v2, "b":I
    :goto_0
    iget-object v3, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 851
    const-string v3, "  Band %d\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget-object v3, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 855
    .end local v2    # "b":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
