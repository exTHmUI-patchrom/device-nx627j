.class public final Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimCredential"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_IMSI_LENGTH:I = 0xf


# instance fields
.field private mEapType:I

.field private mImsi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 773
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    .line 677
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    .line 700
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    .line 677
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    .line 708
    if-eqz p1, :cond_0

    .line 709
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    .line 710
    iget v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    .line 712
    :cond_0
    return-void
.end method

.method private verifyImsi()Z
    .locals 5

    .line 797
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 798
    const-string v0, "Credential"

    const-string v2, "Missing IMSI"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return v1

    .line 801
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xf

    if-le v0, v2, :cond_1

    .line 802
    const-string v0, "Credential"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSI exceeding maximum length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return v1

    .line 808
    :cond_1
    const/4 v0, 0x0

    .line 809
    .local v0, "stopChar":C
    move v2, v0

    move v0, v1

    .local v0, "nonDigit":I
    .local v2, "stopChar":C
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 810
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 811
    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    .line 812
    goto :goto_1

    .line 809
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v0, v3, :cond_4

    .line 817
    return v4

    .line 819
    :cond_4
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v0, v3, :cond_5

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_5

    .line 821
    return v4

    .line 823
    :cond_5
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 716
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 721
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 722
    return v0

    .line 724
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 725
    return v2

    .line 728
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 729
    .local v1, "that":Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    iget v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getEapType()I
    .locals 1

    .line 694
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    return v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 668
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 735
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setEapType(I)V
    .locals 0
    .param p1, "eapType"    # I

    .line 685
    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    .line 686
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    .line 659
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    .line 660
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "IMSI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    const-string v1, "EAPType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()Z
    .locals 4

    .line 762
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->verifyImsi()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 763
    return v1

    .line 765
    :cond_0
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    const/16 v2, 0x12

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    const/16 v2, 0x17

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    const/16 v2, 0x32

    if-eq v0, v2, :cond_1

    .line 767
    const-string v0, "Credential"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid EAP Type for SIM credential: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return v1

    .line 770
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 748
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 749
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    return-void
.end method
