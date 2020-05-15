.class Lcom/android/server/wifi/wificond/RadioChainInfo$1;
.super Ljava/lang/Object;
.source "RadioChainInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/wificond/RadioChainInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/wifi/wificond/RadioChainInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/RadioChainInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 89
    new-instance v0, Lcom/android/server/wifi/wificond/RadioChainInfo;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/RadioChainInfo;-><init>()V

    .line 90
    .local v0, "result":Lcom/android/server/wifi/wificond/RadioChainInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/wificond/RadioChainInfo;->chainId:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/wificond/RadioChainInfo;->level:I

    .line 92
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/RadioChainInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/RadioChainInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/server/wifi/wificond/RadioChainInfo;
    .locals 1
    .param p1, "size"    # I

    .line 97
    new-array v0, p1, [Lcom/android/server/wifi/wificond/RadioChainInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/RadioChainInfo$1;->newArray(I)[Lcom/android/server/wifi/wificond/RadioChainInfo;

    move-result-object p1

    return-object p1
.end method
