.class public final Lcom/android/internal/telephony/NetworkScanResult;
.super Ljava/lang/Object;
.source "NetworkScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/NetworkScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCAN_STATUS_COMPLETE:I = 0x2

.field public static final SCAN_STATUS_PARTIAL:I = 0x1


# instance fields
.field public networkInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public scanError:I

.field public scanStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/NetworkScanResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/NetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .param p1, "scanStatus"    # I
    .param p2, "scanError"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p3, "networkInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    .line 65
    iput p2, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    .line 66
    iput-object p3, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "ni":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 86
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/NetworkScanResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/internal/telephony/NetworkScanResult$1;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/NetworkScanResult;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v1, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    nop

    .line 96
    nop

    .line 99
    if-nez p1, :cond_0

    .line 100
    return v0

    .line 103
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    iget v3, v1, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    iget v3, v1, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    iget-object v3, v1, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 105
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    nop

    .line 103
    :cond_1
    return v0

    .line 95
    .end local v1    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 110
    iget v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 112
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    .line 110
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 79
    return-void
.end method
