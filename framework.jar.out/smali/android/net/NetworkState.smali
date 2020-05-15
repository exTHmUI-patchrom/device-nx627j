.class public Landroid/net/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/net/NetworkState;

.field private static final SANITY_CHECK_ROAMING:Z = false


# instance fields
.field public final linkProperties:Landroid/net/LinkProperties;

.field public final network:Landroid/net/Network;

.field public final networkCapabilities:Landroid/net/NetworkCapabilities;

.field public final networkId:Ljava/lang/String;

.field public final networkInfo:Landroid/net/NetworkInfo;

.field public final subscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 31
    new-instance v7, Landroid/net/NetworkState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Landroid/net/NetworkState;->EMPTY:Landroid/net/NetworkState;

    .line 85
    new-instance v0, Landroid/net/NetworkState$1;

    invoke-direct {v0}, Landroid/net/NetworkState$1;-><init>()V

    sput-object v0, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;
    .param p3, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p4, "network"    # Landroid/net/Network;
    .param p5, "subscriberId"    # Ljava/lang/String;
    .param p6, "networkId"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    .line 44
    iput-object p2, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 45
    iput-object p3, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 46
    iput-object p4, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 47
    iput-object p5, p0, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    iput-object v1, p0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    iput-object v1, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    iput-object v1, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget-object v0, p0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 78
    iget-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    iget-object v0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    iget-object v0, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    iget-object v0, p0, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void
.end method
