.class public final Landroid/telephony/CellInfoCdma;
.super Landroid/telephony/CellInfo;
.source "CellInfoCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellInfoCdma"


# instance fields
.field private mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

.field private mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    new-instance v0, Landroid/telephony/CellInfoCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    .line 37
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {v0}, Landroid/telephony/CellIdentityCdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    .line 38
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    .line 119
    sget-object v0, Landroid/telephony/CellIdentityCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityCdma;

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    .line 120
    sget-object v0, Landroid/telephony/CellSignalStrengthCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellInfoCdma;)V
    .locals 1
    .param p1, "ci"    # Landroid/telephony/CellInfoCdma;

    .line 43
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    .line 44
    iget-object v0, p1, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->copy()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    .line 45
    iget-object v0, p1, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->copy()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    .line 46
    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoCdma;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 140
    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoCdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 147
    const-string v0, "CellInfoCdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 74
    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    return v1

    .line 78
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoCdma;

    .line 79
    .local v0, "o":Landroid/telephony/CellInfoCdma;
    iget-object v2, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    iget-object v3, v0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v2, v3}, Landroid/telephony/CellIdentityCdma;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    iget-object v3, v0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    .line 80
    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthCdma;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 79
    :cond_1
    return v1

    .line 81
    .end local v0    # "o":Landroid/telephony/CellInfoCdma;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentityCdma;
    .locals 1

    .line 49
    iget-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    return-object v0
.end method

.method public getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;
    .locals 1

    .line 57
    iget-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 69
    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setCellIdentity(Landroid/telephony/CellIdentityCdma;)V
    .locals 0
    .param p1, "cid"    # Landroid/telephony/CellIdentityCdma;

    .line 53
    iput-object p1, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    .line 54
    return-void
.end method

.method public setCellSignalStrength(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 0
    .param p1, "css"    # Landroid/telephony/CellSignalStrengthCdma;

    .line 61
    iput-object p1, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "CellInfoCdma:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 94
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 108
    const/4 v0, 0x2

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 109
    iget-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityCdma;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    iget-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthCdma;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    return-void
.end method
