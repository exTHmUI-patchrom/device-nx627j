.class public Lcom/android/server/wifi/wificond/NativeScanResult;
.super Ljava/lang/Object;
.source "NativeScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CAPABILITY_SIZE:I = 0x10

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/wifi/wificond/NativeScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public associated:Z

.field public bssid:[B

.field public capability:Ljava/util/BitSet;

.field public frequency:I

.field public infoElement:[B

.field public radioChainInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/wificond/RadioChainInfo;",
            ">;"
        }
    .end annotation
.end field

.field public signalMbm:I

.field public ssid:[B

.field public tsf:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/android/server/wifi/wificond/NativeScanResult$1;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/NativeScanResult$1;-><init>()V

    sput-object v0, Lcom/android/server/wifi/wificond/NativeScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/wificond/NativeScanResult;)V
    .locals 2
    .param p1, "source"    # Lcom/android/server/wifi/wificond/NativeScanResult;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->ssid:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->ssid:[B

    .line 49
    iget-object v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->bssid:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->bssid:[B

    .line 50
    iget-object v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->infoElement:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->infoElement:[B

    .line 51
    iget v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I

    iput v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I

    .line 52
    iget v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->signalMbm:I

    iput v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->signalMbm:I

    .line 53
    iget-wide v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->tsf:J

    iput-wide v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->tsf:J

    .line 54
    iget-object v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->capability:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->capability:Ljava/util/BitSet;

    .line 55
    iget-boolean v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->associated:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->associated:Z

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    iget-object v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->ssid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 68
    iget-object v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->bssid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 69
    iget-object v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->infoElement:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 70
    iget v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->signalMbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-wide v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->tsf:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "capabilityInt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->capability:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-boolean v1, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->associated:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v1, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->radioChainInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 82
    return-void
.end method
