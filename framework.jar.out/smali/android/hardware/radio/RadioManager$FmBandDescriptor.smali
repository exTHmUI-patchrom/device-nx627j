.class public Landroid/hardware/radio/RadioManager$FmBandDescriptor;
.super Landroid/hardware/radio/RadioManager$BandDescriptor;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FmBandDescriptor"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$FmBandDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAf:Z

.field private final mEa:Z

.field private final mRds:Z

.field private final mStereo:Z

.field private final mTa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 765
    new-instance v0, Landroid/hardware/radio/RadioManager$FmBandDescriptor$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$FmBandDescriptor$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIZZZZZ)V
    .locals 0
    .param p1, "region"    # I
    .param p2, "type"    # I
    .param p3, "lowerLimit"    # I
    .param p4, "upperLimit"    # I
    .param p5, "spacing"    # I
    .param p6, "stereo"    # Z
    .param p7, "rds"    # Z
    .param p8, "ta"    # Z
    .param p9, "af"    # Z
    .param p10, "ea"    # Z

    .line 715
    invoke-direct/range {p0 .. p5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    .line 716
    iput-boolean p6, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    .line 717
    iput-boolean p7, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    .line 718
    iput-boolean p8, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    .line 719
    iput-boolean p9, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    .line 720
    iput-boolean p10, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    .line 721
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 757
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V

    .line 758
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    .line 760
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    .line 761
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    .line 762
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_4

    move v1, v2

    nop

    :cond_4
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    .line 763
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/radio/RadioManager$1;

    .line 705
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 788
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 812
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 813
    return v0

    .line 814
    :cond_0
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 815
    return v2

    .line 816
    :cond_1
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    if-nez v1, :cond_2

    .line 817
    return v2

    .line 818
    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    .line 819
    .local v1, "other":Landroid/hardware/radio/RadioManager$FmBandDescriptor;
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isStereoSupported()Z

    move-result v4

    if-eq v3, v4, :cond_3

    .line 820
    return v2

    .line 821
    :cond_3
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isRdsSupported()Z

    move-result v4

    if-eq v3, v4, :cond_4

    .line 822
    return v2

    .line 823
    :cond_4
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isTaSupported()Z

    move-result v4

    if-eq v3, v4, :cond_5

    .line 824
    return v2

    .line 825
    :cond_5
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isAfSupported()Z

    move-result v4

    if-eq v3, v4, :cond_6

    .line 826
    return v2

    .line 827
    :cond_6
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isEaSupported()Z

    move-result v4

    if-eq v3, v4, :cond_7

    .line 828
    return v2

    .line 829
    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 800
    const/16 v0, 0x1f

    .line 801
    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->hashCode()I

    move-result v1

    .line 802
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-boolean v4, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    add-int/2addr v3, v4

    .line 803
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int v1, v2, v3

    iget-boolean v4, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    add-int/2addr v1, v4

    .line 804
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget-boolean v4, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    add-int/2addr v3, v4

    .line 805
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int v1, v2, v3

    iget-boolean v4, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    add-int/2addr v1, v4

    .line 806
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int/2addr v2, v1

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    add-int/2addr v2, v3

    .line 807
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isAfSupported()Z
    .locals 1

    .line 745
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    return v0
.end method

.method public isEaSupported()Z
    .locals 1

    .line 752
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    return v0
.end method

.method public isRdsSupported()Z
    .locals 1

    .line 733
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    return v0
.end method

.method public isStereoSupported()Z
    .locals 1

    .line 727
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    return v0
.end method

.method public isTaSupported()Z
    .locals 1

    .line 739
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FmBandDescriptor [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mStereo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEa ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 778
    invoke-super {p0, p1, p2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 779
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 780
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 781
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 782
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 783
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 784
    return-void
.end method
