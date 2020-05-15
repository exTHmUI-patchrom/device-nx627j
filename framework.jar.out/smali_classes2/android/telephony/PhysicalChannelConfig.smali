.class public final Landroid/telephony/PhysicalChannelConfig;
.super Ljava/lang/Object;
.source "PhysicalChannelConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhysicalChannelConfig$ConnectionStatus;
    }
.end annotation


# static fields
.field public static final CONNECTION_PRIMARY_SERVING:I = 0x1

.field public static final CONNECTION_SECONDARY_SERVING:I = 0x2

.field public static final CONNECTION_UNKNOWN:I = 0x7fffffff

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCellBandwidthDownlinkKhz:I

.field private mCellConnectionStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Landroid/telephony/PhysicalChannelConfig$1;

    invoke-direct {v0}, Landroid/telephony/PhysicalChannelConfig$1;-><init>()V

    sput-object v0, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "bandwidth"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    .line 62
    iput p2, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    .line 68
    return-void
.end method

.method private getConnectionStatusString()Ljava/lang/String;
    .locals 2

    .line 104
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :pswitch_0
    const-string v0, "SecondaryServing"

    return-object v0

    .line 106
    :pswitch_1
    const-string v0, "PrimaryServing"

    return-object v0

    .line 110
    :cond_0
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 118
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 119
    return v0

    .line 122
    :cond_0
    instance-of v1, p1, Landroid/telephony/PhysicalChannelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 123
    return v2

    .line 126
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/PhysicalChannelConfig;

    .line 127
    .local v1, "config":Landroid/telephony/PhysicalChannelConfig;
    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCellBandwidthDownlink()I
    .locals 1

    .line 85
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    return v0
.end method

.method public getConnectionStatus()I
    .locals 1

    .line 99
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 133
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mConnectionStatus="

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mCellBandwidthDownlinkKhz="

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void
.end method
