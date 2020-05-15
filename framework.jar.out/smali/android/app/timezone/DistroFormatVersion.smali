.class public final Landroid/app/timezone/DistroFormatVersion;
.super Ljava/lang/Object;
.source "DistroFormatVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timezone/DistroFormatVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMajorVersion:I

.field private final mMinorVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Landroid/app/timezone/DistroFormatVersion$1;

    invoke-direct {v0}, Landroid/app/timezone/DistroFormatVersion$1;-><init>()V

    sput-object v0, Landroid/app/timezone/DistroFormatVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string/jumbo v0, "major"

    invoke-static {v0, p1}, Landroid/app/timezone/Utils;->validateVersion(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    .line 45
    const-string/jumbo v0, "minor"

    invoke-static {v0, p2}, Landroid/app/timezone/Utils;->validateVersion(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 91
    return v0

    .line 93
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/timezone/DistroFormatVersion;

    .line 99
    .local v2, "that":Landroid/app/timezone/DistroFormatVersion;
    iget v3, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    iget v4, v2, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    if-eq v3, v4, :cond_2

    .line 100
    return v1

    .line 102
    :cond_2
    iget v3, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    iget v4, v2, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 94
    .end local v2    # "that":Landroid/app/timezone/DistroFormatVersion;
    :cond_4
    :goto_1
    return v1
.end method

.method public getMajorVersion()I
    .locals 1

    .line 61
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 65
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 107
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    .line 108
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    add-int/2addr v1, v2

    .line 109
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public supports(Landroid/app/timezone/DistroFormatVersion;)Z
    .locals 2
    .param p1, "distroFormatVersion"    # Landroid/app/timezone/DistroFormatVersion;

    .line 84
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    iget v1, p1, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    iget v1, p1, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistroFormatVersion{mMajorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
