.class public Landroid/hardware/location/NanoAppInstanceInfo;
.super Ljava/lang/Object;
.source "NanoAppInstanceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppInstanceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppId:J

.field private mAppVersion:I

.field private mContexthubId:I

.field private mHandle:I

.field private mName:Ljava/lang/String;

.field private mNeededExecMemBytes:I

.field private mNeededReadMemBytes:I

.field private mNeededSensors:[I

.field private mNeededWriteMemBytes:I

.field private mOutputEvents:[I

.field private mPublisher:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    new-instance v0, Landroid/hardware/location/NanoAppInstanceInfo$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppInstanceInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppInstanceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    .line 39
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    .line 47
    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    .line 48
    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    .line 50
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    .line 51
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    .line 54
    return-void
.end method

.method public constructor <init>(IJII)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "appId"    # J
    .param p4, "appVersion"    # I
    .param p5, "contextHubId"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    .line 39
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    .line 47
    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    .line 48
    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    .line 50
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    .line 51
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    .line 60
    iput p1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mHandle:I

    .line 61
    iput-wide p2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    .line 62
    iput p4, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    .line 63
    iput p5, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mContexthubId:I

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    .line 39
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    .line 47
    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    .line 48
    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    .line 50
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    .line 51
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mHandle:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mContexthubId:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    .local v0, "neededSensorsLength":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    .line 181
    iget-object v1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    .local v1, "outputEventsLength":I
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    .line 185
    iget-object v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppInstanceInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/location/NanoAppInstanceInfo$1;

    .line 37
    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()J
    .locals 2

    .line 90
    iget-wide v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    return-wide v0
.end method

.method public getAppVersion()I
    .locals 1

    .line 99
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    return v0
.end method

.method public getContexthubId()I
    .locals 1

    .line 155
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mContexthubId:I

    return v0
.end method

.method public getHandle()I
    .locals 1

    .line 164
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mHandle:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNeededExecMemBytes()I
    .locals 1

    .line 126
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    return v0
.end method

.method public getNeededReadMemBytes()I
    .locals 1

    .line 108
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    return v0
.end method

.method public getNeededSensors()[I
    .locals 1

    .line 136
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    return-object v0
.end method

.method public getNeededWriteMemBytes()I
    .locals 1

    .line 117
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    return v0
.end method

.method public getOutputEvents()[I
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "retVal":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Id : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Version : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 193
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-wide v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 198
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mContexthubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 207
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 209
    return-void
.end method
