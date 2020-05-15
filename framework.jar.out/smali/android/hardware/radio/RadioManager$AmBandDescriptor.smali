.class public Landroid/hardware/radio/RadioManager$AmBandDescriptor;
.super Landroid/hardware/radio/RadioManager$BandDescriptor;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmBandDescriptor"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$AmBandDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStereo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 858
    new-instance v0, Landroid/hardware/radio/RadioManager$AmBandDescriptor$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$AmBandDescriptor$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 0
    .param p1, "region"    # I
    .param p2, "type"    # I
    .param p3, "lowerLimit"    # I
    .param p4, "upperLimit"    # I
    .param p5, "spacing"    # I
    .param p6, "stereo"    # Z

    .line 842
    invoke-direct/range {p0 .. p5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    .line 843
    iput-boolean p6, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    .line 844
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 854
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V

    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    .line 856
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/radio/RadioManager$1;

    .line 835
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 877
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 895
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 896
    return v0

    .line 897
    :cond_0
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 898
    return v2

    .line 899
    :cond_1
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    if-nez v1, :cond_2

    .line 900
    return v2

    .line 901
    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    .line 902
    .local v1, "other":Landroid/hardware/radio/RadioManager$AmBandDescriptor;
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->isStereoSupported()Z

    move-result v4

    if-eq v3, v4, :cond_3

    .line 903
    return v2

    .line 904
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 887
    const/16 v0, 0x1f

    .line 888
    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->hashCode()I

    move-result v1

    .line 889
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int/2addr v2, v1

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    add-int/2addr v2, v3

    .line 890
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isStereoSupported()Z
    .locals 1

    .line 850
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmBandDescriptor [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mStereo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

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

    .line 871
    invoke-super {p0, p1, p2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 872
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 873
    return-void
.end method
