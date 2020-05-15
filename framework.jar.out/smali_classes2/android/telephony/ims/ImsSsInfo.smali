.class public final Landroid/telephony/ims/ImsSsInfo;
.super Ljava/lang/Object;
.source "ImsSsInfo.java"

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
            "Landroid/telephony/ims/ImsSsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field public static final NOT_REGISTERED:I = -0x1

.field public static final SERVICE_NOT_PROVISIONED:I = 0x0

.field public static final SERVICE_PROVISIONED:I = 0x1

.field public static final SERVICE_PROVISIONING_UNKNOWN:I = -0x1


# instance fields
.field public mIcbNum:Ljava/lang/String;

.field public mProvisionStatus:I

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Landroid/telephony/ims/ImsSsInfo$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsSsInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    .line 60
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "icbNum"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    .line 72
    iput p1, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 73
    iput-object p2, p0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    .line 77
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsSsInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/ImsSsInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/ims/ImsSsInfo$1;

    .line 29
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsSsInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static provisionStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "pStatus"    # I

    .line 99
    packed-switch p0, :pswitch_data_0

    .line 105
    const-string v0, "Service provisioning unknown"

    return-object v0

    .line 103
    :pswitch_0
    const-string v0, "Service provisioned"

    return-object v0

    .line 101
    :pswitch_1
    const-string v0, "Service not provisioned"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    .line 113
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getIcbNum()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionStatus()I
    .locals 1

    .line 144
    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 135
    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    if-nez v1, :cond_0

    const-string v1, "disabled"

    goto :goto_0

    :cond_0
    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ProvisionStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    .line 95
    invoke-static {v1}, Landroid/telephony/ims/ImsSsInfo;->provisionStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void
.end method
