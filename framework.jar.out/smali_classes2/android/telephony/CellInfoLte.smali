.class public final Landroid/telephony/CellInfoLte;
.super Landroid/telephony/CellInfo;
.source "CellInfoLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellInfoLte"


# instance fields
.field private mCellIdentityLte:Landroid/telephony/CellIdentityLte;

.field private mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Landroid/telephony/CellInfoLte$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    .line 37
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 38
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 123
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    .line 124
    sget-object v0, Landroid/telephony/CellIdentityLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityLte;

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 125
    sget-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellInfoLte;)V
    .locals 1
    .param p1, "ci"    # Landroid/telephony/CellInfoLte;

    .line 43
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    .line 44
    iget-object v0, p1, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->copy()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 45
    iget-object v0, p1, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    .line 46
    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoLte;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 145
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoLte;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 152
    const-string v0, "CellInfoLte"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 78
    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 79
    return v1

    .line 82
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoLte;

    .line 83
    .local v0, "o":Landroid/telephony/CellInfoLte;
    iget-object v2, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    iget-object v3, v0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v2, v3}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    iget-object v3, v0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    .line 84
    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthLte;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 83
    :cond_1
    return v1

    .line 85
    .end local v0    # "o":Landroid/telephony/CellInfoLte;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentityLte;
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    return-object v0
.end method

.method public getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setCellIdentity(Landroid/telephony/CellIdentityLte;)V
    .locals 0
    .param p1, "cid"    # Landroid/telephony/CellIdentityLte;

    .line 55
    iput-object p1, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 56
    return-void
.end method

.method public setCellSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 0
    .param p1, "css"    # Landroid/telephony/CellSignalStrengthLte;

    .line 65
    iput-object p1, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "CellInfoLte:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 97
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 98
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    const/4 v0, 0x3

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 114
    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityLte;->writeToParcel(Landroid/os/Parcel;I)V

    .line 115
    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthLte;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    return-void
.end method
