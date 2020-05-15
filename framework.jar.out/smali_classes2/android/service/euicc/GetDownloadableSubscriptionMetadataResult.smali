.class public final Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
.super Ljava/lang/Object;
.source "GetDownloadableSubscriptionMetadataResult.java"

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
            "Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

.field public final result:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult$1;

    invoke-direct {v0}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult$1;-><init>()V

    sput-object v0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/telephony/euicc/DownloadableSubscription;)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    .line 86
    iget v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    if-nez v0, :cond_0

    .line 87
    iput-object p2, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    goto :goto_0

    .line 89
    :cond_0
    if-nez p2, :cond_1

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error result with non-null subscription: "

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

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    .line 99
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/DownloadableSubscription;

    iput-object v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult$1;

    .line 29
    invoke-direct {p0, p1}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadableSubscription()Landroid/telephony/euicc/DownloadableSubscription;
    .locals 1

    .line 71
    iget-object v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 61
    iget v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    iget v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 106
    return-void
.end method
