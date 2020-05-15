.class public final Landroid/service/euicc/GetEuiccProfileInfoListResult;
.super Ljava/lang/Object;
.source "GetEuiccProfileInfoListResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/euicc/GetEuiccProfileInfoListResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIsRemovable:Z

.field private final mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

.field public final result:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Landroid/service/euicc/GetEuiccProfileInfoListResult$1;

    invoke-direct {v0}, Landroid/service/euicc/GetEuiccProfileInfoListResult$1;-><init>()V

    sput-object v0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Landroid/service/euicc/EuiccProfileInfo;Z)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "profiles"    # [Landroid/service/euicc/EuiccProfileInfo;
    .param p3, "isRemovable"    # Z

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    .line 96
    iput-boolean p3, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mIsRemovable:Z

    .line 97
    iget v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    if-nez v0, :cond_0

    .line 98
    iput-object p2, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

    goto :goto_0

    .line 100
    :cond_0
    if-nez p2, :cond_1

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error result with non-null profiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    .line 110
    sget-object v0, Landroid/service/euicc/EuiccProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/euicc/EuiccProfileInfo;

    iput-object v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mIsRemovable:Z

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/euicc/GetEuiccProfileInfoListResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/service/euicc/GetEuiccProfileInfoListResult$1;

    .line 31
    invoke-direct {p0, p1}, Landroid/service/euicc/GetEuiccProfileInfoListResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getIsRemovable()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mIsRemovable:Z

    return v0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 65
    iget v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 116
    iget v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 118
    iget-boolean v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mIsRemovable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 119
    return-void
.end method
