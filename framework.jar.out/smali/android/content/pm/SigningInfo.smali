.class public final Landroid/content/pm/SigningInfo;
.super Ljava/lang/Object;
.source "SigningInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SigningInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Landroid/content/pm/SigningInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SigningInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SigningInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$SigningDetails;)V
    .locals 1
    .param p1, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v0, p1}, Landroid/content/pm/PackageParser$SigningDetails;-><init>(Landroid/content/pm/PackageParser$SigningDetails;)V

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/SigningInfo;)V
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/SigningInfo;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, p1, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SigningDetails;-><init>(Landroid/content/pm/PackageParser$SigningDetails;)V

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/SigningInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/SigningInfo$1;

    .line 27
    invoke-direct {p0, p1}, Landroid/content/pm/SigningInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getApkContentsSigners()[Landroid/content/pm/Signature;
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public getSigningCertificateHistory()[Landroid/content/pm/Signature;
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    return-object v0

    .line 100
    :cond_1
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public hasMultipleSigners()Z
    .locals 2

    .line 56
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPastSigningCertificates()Z
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 124
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageParser$SigningDetails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    return-void
.end method
