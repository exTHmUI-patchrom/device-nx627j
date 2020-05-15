.class Lcom/android/server/wifi/wificond/HiddenNetwork$1;
.super Ljava/lang/Object;
.source "HiddenNetwork.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/wificond/HiddenNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/wifi/wificond/HiddenNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/HiddenNetwork;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    new-instance v0, Lcom/android/server/wifi/wificond/HiddenNetwork;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/HiddenNetwork;-><init>()V

    .line 78
    .local v0, "result":Lcom/android/server/wifi/wificond/HiddenNetwork;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B

    .line 79
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/HiddenNetwork$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/HiddenNetwork;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/server/wifi/wificond/HiddenNetwork;
    .locals 1
    .param p1, "size"    # I

    .line 84
    new-array v0, p1, [Lcom/android/server/wifi/wificond/HiddenNetwork;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/HiddenNetwork$1;->newArray(I)[Lcom/android/server/wifi/wificond/HiddenNetwork;

    move-result-object p1

    return-object p1
.end method
