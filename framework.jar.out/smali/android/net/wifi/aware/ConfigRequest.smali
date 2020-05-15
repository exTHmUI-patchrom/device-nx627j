.class public final Landroid/net/wifi/aware/ConfigRequest;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/ConfigRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLUSTER_ID_MAX:I = 0xffff

.field public static final CLUSTER_ID_MIN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/ConfigRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DW_DISABLE:I = 0x0

.field public static final DW_INTERVAL_NOT_INIT:I = -0x1

.field public static final NAN_BAND_24GHZ:I = 0x0

.field public static final NAN_BAND_5GHZ:I = 0x1


# instance fields
.field public final mClusterHigh:I

.field public final mClusterLow:I

.field public final mDiscoveryWindowInterval:[I

.field public final mMasterPreference:I

.field public final mSupport5gBand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Landroid/net/wifi/aware/ConfigRequest$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/ConfigRequest$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ZIII[I)V
    .locals 0
    .param p1, "support5gBand"    # Z
    .param p2, "masterPreference"    # I
    .param p3, "clusterLow"    # I
    .param p4, "clusterHigh"    # I
    .param p5, "discoveryWindowInterval"    # [I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean p1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    .line 87
    iput p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    .line 88
    iput p3, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 89
    iput p4, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    .line 90
    iput-object p5, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    .line 91
    return-void
.end method

.method synthetic constructor <init>(ZIII[ILandroid/net/wifi/aware/ConfigRequest$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # [I
    .param p6, "x5"    # Landroid/net/wifi/aware/ConfigRequest$1;

    .line 34
    invoke-direct/range {p0 .. p5}, Landroid/net/wifi/aware/ConfigRequest;-><init>(ZIII[I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 136
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 137
    return v0

    .line 140
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/aware/ConfigRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 141
    return v2

    .line 144
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/aware/ConfigRequest;

    .line 146
    .local v1, "lhs":Landroid/net/wifi/aware/ConfigRequest;
    iget-boolean v3, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    iget v4, v1, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    iget v4, v1, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    iget v4, v1, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    iget-object v4, v1, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    .line 148
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 146
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 153
    const/16 v0, 0x11

    .line 155
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-boolean v3, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    add-int/2addr v2, v3

    .line 156
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    add-int/2addr v0, v3

    .line 157
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    add-int/2addr v2, v3

    .line 158
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    add-int/2addr v0, v3

    .line 159
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget-object v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 161
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigRequest [mSupport5gBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMasterPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mClusterLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mClusterHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDiscoveryWindowInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    .line 98
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method public validate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 169
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    if-ltz v0, :cond_b

    .line 173
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_a

    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    if-gt v0, v2, :cond_a

    .line 177
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    if-ltz v0, :cond_9

    .line 180
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    const v2, 0xffff

    if-gt v0, v2, :cond_8

    .line 183
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    if-ltz v0, :cond_7

    .line 186
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    if-gt v0, v2, :cond_6

    .line 189
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    iget v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    if-gt v0, v2, :cond_5

    .line 193
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    array-length v0, v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 197
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    const/4 v3, 0x5

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v2

    if-gt v0, v3, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid discovery window interval for 2.4GHz: valid is UNSET or [1,5]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v1

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v1

    if-gt v0, v3, :cond_2

    goto :goto_1

    .line 206
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid discovery window interval for 5GHz: valid is UNSET or [0,5]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_3
    :goto_1
    return-void

    .line 194
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid discovery window interval: must have 2 elements (2.4 & 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid argument combination - must have Cluster Low <= Cluster High"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cluster specification must not exceed 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cluster specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cluster specification must not exceed 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cluster specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Master Preference specification must not exceed 255 or use 1 or 255 (reserved values)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Master Preference specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 108
    iget-boolean v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 113
    return-void
.end method
