.class public Lcom/android/server/wifi/wificond/HiddenNetwork;
.super Ljava/lang/Object;
.source "HiddenNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/wifi/wificond/HiddenNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HiddenNetwork"


# instance fields
.field public ssid:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/android/server/wifi/wificond/HiddenNetwork$1;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/HiddenNetwork$1;-><init>()V

    sput-object v0, Lcom/android/server/wifi/wificond/HiddenNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 40
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 41
    :cond_0
    instance-of v0, p1, Lcom/android/server/wifi/wificond/HiddenNetwork;

    if-nez v0, :cond_1

    .line 42
    const/4 v0, 0x0

    return v0

    .line 44
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/wificond/HiddenNetwork;

    .line 45
    .local v0, "network":Lcom/android/server/wifi/wificond/HiddenNetwork;
    iget-object v1, p0, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B

    iget-object v2, v0, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 67
    return-void
.end method
