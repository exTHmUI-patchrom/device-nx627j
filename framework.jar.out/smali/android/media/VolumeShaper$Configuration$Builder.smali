.class public final Landroid/media/VolumeShaper$Configuration$Builder;
.super Ljava/lang/Object;
.source "VolumeShaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDurationMs:D

.field private mId:I

.field private mInterpolatorType:I

.field private mOptionFlags:I

.field private mTimes:[F

.field private mType:I

.field private mVolumes:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    .line 762
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 763
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 764
    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 765
    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 766
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 767
    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 773
    return-void
.end method

.method public constructor <init>(Landroid/media/VolumeShaper$Configuration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    .line 762
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 763
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 764
    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 765
    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 766
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 767
    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 782
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    .line 783
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getId()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 784
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getAllOptionFlags()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 785
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getInterpolatorType()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 786
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getDuration()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 787
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getTimes()[F

    move-result-object v0

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 788
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getVolumes()[F

    move-result-object v0

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 789
    return-void
.end method


# virtual methods
.method public build()Landroid/media/VolumeShaper$Configuration;
    .locals 14

    .line 1038
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1039
    .local v0, "log":Z
    :goto_0
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v2, v3, v0, v1}, Landroid/media/VolumeShaper$Configuration;->access$100([F[FZZ)V

    .line 1040
    new-instance v1, Landroid/media/VolumeShaper$Configuration;

    iget v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    iget v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    iget v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    iget-wide v8, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    iget v10, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    iget-object v11, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v12, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v13, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[FLandroid/media/VolumeShaper$1;)V

    return-object v1
.end method

.method public invertVolumes()Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 7

    .line 945
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 946
    .local v0, "log":Z
    :goto_0
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->access$100([F[FZZ)V

    .line 947
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v3, v3, v2

    .line 948
    .local v3, "min":F
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v4, v4, v2

    .line 949
    .local v4, "max":F
    nop

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 950
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v5, v5, v1

    cmpg-float v5, v5, v3

    if-gez v5, :cond_1

    .line 951
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v3, v5, v1

    goto :goto_2

    .line 952
    :cond_1
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v5, v5, v1

    cmpl-float v5, v5, v4

    if-lez v5, :cond_2

    .line 953
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v4, v5, v1

    .line 949
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 957
    .end local v1    # "i":I
    :cond_3
    add-float v1, v4, v3

    .line 958
    .local v1, "maxmin":F
    nop

    .local v2, "i":I
    :goto_3
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 959
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v6, v6, v2

    sub-float v6, v1, v6

    aput v6, v5, v2

    .line 958
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 961
    .end local v2    # "i":I
    :cond_4
    return-object p0
.end method

.method public reflectTimes()Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 8

    .line 920
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 921
    .local v0, "log":Z
    :goto_0
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->access$100([F[FZZ)V

    .line 923
    nop

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_1

    .line 924
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v3, v3, v2

    .line 925
    .local v3, "temp":F
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v7, v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v2

    aget v6, v6, v7

    sub-float v6, v4, v6

    aput v6, v5, v2

    .line 926
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v6, v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    sub-float/2addr v4, v3

    aput v4, v5, v6

    .line 927
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v3, v4, v2

    .line 928
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    aget v5, v5, v6

    aput v5, v4, v2

    .line 929
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    aput v3, v4, v5

    .line 923
    .end local v3    # "temp":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 931
    :cond_1
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v3, v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 932
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v3, v3, v2

    sub-float/2addr v4, v3

    aput v4, v1, v2

    .line 934
    :cond_2
    return-object p0
.end method

.method public scaleToEndVolume(F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 8
    .param p1, "volume"    # F

    .line 976
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 977
    .local v0, "log":Z
    :goto_0
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->access$100([F[FZZ)V

    .line 978
    invoke-static {p1, v0}, Landroid/media/VolumeShaper$Configuration;->access$200(FZ)V

    .line 979
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v3, v3, v2

    .line 980
    .local v3, "startVolume":F
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    sub-int/2addr v5, v1

    aget v1, v4, v5

    .line 981
    .local v1, "endVolume":F
    cmpl-float v4, v1, v3

    if-nez v4, :cond_2

    .line 983
    sub-float v4, p1, v3

    .line 984
    .local v4, "offset":F
    nop

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 985
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v6, v6, v2

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v7, v7, v2

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    aput v6, v5, v2

    .line 984
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 987
    .end local v2    # "i":I
    .end local v4    # "offset":F
    :cond_1
    goto :goto_3

    .line 989
    :cond_2
    sub-float v4, p1, v3

    sub-float v5, v1, v3

    div-float/2addr v4, v5

    .line 990
    .local v4, "scale":F
    nop

    .restart local v2    # "i":I
    :goto_2
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 991
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v6, v6, v2

    sub-float/2addr v6, v3

    mul-float/2addr v6, v4

    add-float/2addr v6, v3

    aput v6, v5, v2

    .line 990
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 994
    .end local v2    # "i":I
    .end local v4    # "scale":F
    :cond_3
    :goto_3
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v2, v0}, Landroid/media/VolumeShaper$Configuration;->access$300([FZ)V

    .line 995
    return-object p0
.end method

.method public scaleToStartVolume(F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 9
    .param p1, "volume"    # F

    .line 1010
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1011
    .local v0, "log":Z
    :goto_0
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->access$100([F[FZZ)V

    .line 1012
    invoke-static {p1, v0}, Landroid/media/VolumeShaper$Configuration;->access$200(FZ)V

    .line 1013
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v3, v3, v2

    .line 1014
    .local v3, "startVolume":F
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    sub-int/2addr v5, v1

    aget v1, v4, v5

    .line 1015
    .local v1, "endVolume":F
    cmpl-float v4, v1, v3

    if-nez v4, :cond_2

    .line 1017
    sub-float v4, p1, v3

    .line 1018
    .local v4, "offset":F
    nop

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 1019
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v6, v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v8, v8, v2

    sub-float/2addr v7, v8

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    aput v6, v5, v2

    .line 1018
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1021
    .end local v2    # "i":I
    .end local v4    # "offset":F
    :cond_1
    goto :goto_3

    .line 1022
    :cond_2
    sub-float v4, p1, v1

    sub-float v5, v3, v1

    div-float/2addr v4, v5

    .line 1023
    .local v4, "scale":F
    nop

    .restart local v2    # "i":I
    :goto_2
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 1024
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v6, v6, v2

    sub-float/2addr v6, v1

    mul-float/2addr v6, v4

    add-float/2addr v6, v1

    aput v6, v5, v2

    .line 1023
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1027
    .end local v2    # "i":I
    .end local v4    # "scale":F
    :cond_3
    :goto_3
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v2, v0}, Landroid/media/VolumeShaper$Configuration;->access$300([FZ)V

    .line 1028
    return-object p0
.end method

.method public setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3
    .param p1, "times"    # [F
    .param p2, "volumes"    # [F

    .line 904
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 905
    .local v0, "log":Z
    invoke-static {p1, p2, v0, v2}, Landroid/media/VolumeShaper$Configuration;->access$100([F[FZZ)V

    .line 906
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 907
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 908
    return-object p0
.end method

.method public setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3
    .param p1, "durationMillis"    # J

    .line 867
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 871
    long-to-double v0, p1

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 872
    return-object p0

    .line 868
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " not positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setId(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3
    .param p1, "id"    # I

    .line 800
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    .line 803
    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 804
    return-object p0

    .line 801
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3
    .param p1, "interpolatorType"    # I

    .line 821
    packed-switch p1, :pswitch_data_0

    .line 829
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interpolatorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :pswitch_0
    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 827
    nop

    .line 832
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3
    .param p1, "optionFlags"    # I

    .line 849
    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 852
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v0, v0, -0x4

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 853
    return-object p0

    .line 850
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid bits in flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
