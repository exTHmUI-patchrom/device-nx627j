.class public Lcom/android/server/wifi/wificond/PnoSettings;
.super Ljava/lang/Object;
.source "PnoSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/wifi/wificond/PnoSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public intervalMs:I

.field public min2gRssi:I

.field public min5gRssi:I

.field public pnoNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/wificond/PnoNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/android/server/wifi/wificond/PnoSettings$1;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/PnoSettings$1;-><init>()V

    sput-object v0, Lcom/android/server/wifi/wificond/PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 42
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 43
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/wificond/PnoSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 44
    return v2

    .line 46
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/wificond/PnoSettings;

    .line 47
    .local v1, "settings":Lcom/android/server/wifi/wificond/PnoSettings;
    if-nez v1, :cond_2

    .line 48
    return v2

    .line 50
    :cond_2
    iget v3, p0, Lcom/android/server/wifi/wificond/PnoSettings;->intervalMs:I

    iget v4, v1, Lcom/android/server/wifi/wificond/PnoSettings;->intervalMs:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/server/wifi/wificond/PnoSettings;->min2gRssi:I

    iget v4, v1, Lcom/android/server/wifi/wificond/PnoSettings;->min2gRssi:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/server/wifi/wificond/PnoSettings;->min5gRssi:I

    iget v4, v1, Lcom/android/server/wifi/wificond/PnoSettings;->min5gRssi:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/wificond/PnoSettings;->pnoNetworks:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/wifi/wificond/PnoSettings;->pnoNetworks:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 50
    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wifi/wificond/PnoSettings;->intervalMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/wifi/wificond/PnoSettings;->min2gRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/wifi/wificond/PnoSettings;->min5gRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/wificond/PnoSettings;->pnoNetworks:Ljava/util/ArrayList;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget v0, p0, Lcom/android/server/wifi/wificond/PnoSettings;->intervalMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/android/server/wifi/wificond/PnoSettings;->min2gRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/android/server/wifi/wificond/PnoSettings;->min5gRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/wificond/PnoSettings;->pnoNetworks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 78
    return-void
.end method
