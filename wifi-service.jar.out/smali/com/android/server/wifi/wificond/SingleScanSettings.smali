.class public Lcom/android/server/wifi/wificond/SingleScanSettings;
.super Ljava/lang/Object;
.source "SingleScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/wifi/wificond/SingleScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SingleScanSettings"


# instance fields
.field public channelSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/wificond/ChannelSettings;",
            ">;"
        }
    .end annotation
.end field

.field public hiddenNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/wificond/HiddenNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public scanType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lcom/android/server/wifi/wificond/SingleScanSettings$1;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/SingleScanSettings$1;-><init>()V

    sput-object v0, Lcom/android/server/wifi/wificond/SingleScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 32
    invoke-static {p0}, Lcom/android/server/wifi/wificond/SingleScanSettings;->isValidScanType(I)Z

    move-result v0

    return v0
.end method

.method private static isValidScanType(I)Z
    .locals 2
    .param p0, "scanType"    # I

    .line 72
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 45
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/wificond/SingleScanSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 47
    return v2

    .line 49
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/wificond/SingleScanSettings;

    .line 50
    .local v1, "settings":Lcom/android/server/wifi/wificond/SingleScanSettings;
    if-nez v1, :cond_2

    .line 51
    return v2

    .line 53
    :cond_2
    iget v3, p0, Lcom/android/server/wifi/wificond/SingleScanSettings;->scanType:I

    iget v4, v1, Lcom/android/server/wifi/wificond/SingleScanSettings;->scanType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/wificond/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/wifi/wificond/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/wificond/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/wifi/wificond/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 53
    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wifi/wificond/SingleScanSettings;->scanType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/wificond/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/wificond/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 83
    iget v0, p0, Lcom/android/server/wifi/wificond/SingleScanSettings;->scanType:I

    invoke-static {v0}, Lcom/android/server/wifi/wificond/SingleScanSettings;->isValidScanType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const-string v0, "SingleScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scan type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/wificond/SingleScanSettings;->scanType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/wificond/SingleScanSettings;->scanType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/android/server/wifi/wificond/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/wificond/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 89
    return-void
.end method
