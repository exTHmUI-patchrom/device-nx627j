.class public Lcom/android/server/wifi/wificond/PnoNetwork;
.super Ljava/lang/Object;
.source "PnoNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/wifi/wificond/PnoNetwork;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isHidden:Z

.field public ssid:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/android/server/wifi/wificond/PnoNetwork$1;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/PnoNetwork$1;-><init>()V

    sput-object v0, Lcom/android/server/wifi/wificond/PnoNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 40
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 41
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/wificond/PnoNetwork;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 42
    return v2

    .line 44
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/wificond/PnoNetwork;

    .line 45
    .local v1, "network":Lcom/android/server/wifi/wificond/PnoNetwork;
    iget-object v3, p0, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    iget-object v4, v1, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wifi/wificond/PnoNetwork;->isHidden:Z

    iget-boolean v4, v1, Lcom/android/server/wifi/wificond/PnoNetwork;->isHidden:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/server/wifi/wificond/PnoNetwork;->isHidden:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    iget-boolean v0, p0, Lcom/android/server/wifi/wificond/PnoNetwork;->isHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 69
    return-void
.end method
