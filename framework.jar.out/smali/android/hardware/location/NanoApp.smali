.class public Landroid/hardware/location/NanoApp;
.super Ljava/lang/Object;
.source "NanoApp.java"

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
            "Landroid/hardware/location/NanoApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final UNKNOWN:Ljava/lang/String;

.field private mAppBinary:[B

.field private mAppId:J

.field private mAppIdSet:Z

.field private mAppVersion:I

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

    .line 358
    new-instance v0, Landroid/hardware/location/NanoApp$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoApp$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 67
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/location/NanoApp;-><init>(J[B)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    .line 69
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "appId"    # I
    .param p2, "appBinary"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "NanoApp"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->TAG:Ljava/lang/String;

    .line 42
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->UNKNOWN:Ljava/lang/String;

    .line 89
    const-string v0, "NanoApp"

    const-string v1, "NanoApp(int, byte[]) is deprecated, please use NanoApp(long, byte[]) instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public constructor <init>(J[B)V
    .locals 2
    .param p1, "appId"    # J
    .param p3, "appBinary"    # [B

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "NanoApp"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->TAG:Ljava/lang/String;

    .line 42
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->UNKNOWN:Ljava/lang/String;

    .line 108
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    .line 109
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    .line 111
    iput-wide p1, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    .line 115
    iput v0, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    .line 116
    iput v0, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    .line 117
    iput v0, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    .line 119
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    .line 120
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    .line 121
    iput-object p3, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    .line 122
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "NanoApp"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->TAG:Ljava/lang/String;

    .line 42
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->UNKNOWN:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 316
    .local v0, "mNeededSensorsLength":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    .line 317
    iget-object v1, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 320
    .local v1, "mOutputEventsLength":I
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    .line 321
    iget-object v2, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 324
    .local v2, "binaryLength":I
    new-array v3, v2, [B

    iput-object v3, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    .line 325
    iget-object v3, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 326
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoApp$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/location/NanoApp$1;

    .line 39
    invoke-direct {p0, p1}, Landroid/hardware/location/NanoApp;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public getAppBinary()[B
    .locals 1

    .line 302
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    return-object v0
.end method

.method public getAppId()J
    .locals 2

    .line 239
    iget-wide v0, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    return-wide v0
.end method

.method public getAppVersion()I
    .locals 1

    .line 248
    iget v0, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNeededExecMemBytes()I
    .locals 1

    .line 275
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    return v0
.end method

.method public getNeededReadMemBytes()I
    .locals 1

    .line 257
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    return v0
.end method

.method public getNeededSensors()[I
    .locals 1

    .line 284
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    return-object v0
.end method

.method public getNeededWriteMemBytes()I
    .locals 1

    .line 266
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    return v0
.end method

.method public getOutputEvents()[I
    .locals 1

    .line 293
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    return-object v0
.end method

.method public setAppBinary([B)V
    .locals 0
    .param p1, "appBinary"    # [B

    .line 211
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    .line 212
    return-void
.end method

.method public setAppId(J)V
    .locals 1
    .param p1, "appId"    # J

    .line 148
    iput-wide p1, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    .line 150
    return-void
.end method

.method public setAppVersion(I)V
    .locals 0
    .param p1, "appVersion"    # I

    .line 158
    iput p1, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    .line 159
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 139
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setNeededExecMemBytes(I)V
    .locals 0
    .param p1, "neededExecMemBytes"    # I

    .line 188
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    .line 189
    return-void
.end method

.method public setNeededReadMemBytes(I)V
    .locals 0
    .param p1, "neededReadMemBytes"    # I

    .line 168
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    .line 169
    return-void
.end method

.method public setNeededSensors([I)V
    .locals 0
    .param p1, "neededSensors"    # [I

    .line 198
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    .line 199
    return-void
.end method

.method public setNeededWriteMemBytes(I)V
    .locals 0
    .param p1, "neededWriteMemBytes"    # I

    .line 178
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    .line 179
    return-void
.end method

.method public setOutputEvents([I)V
    .locals 0
    .param p1, "outputEvents"    # [I

    .line 202
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    .line 203
    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisher"    # Ljava/lang/String;

    .line 130
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "retVal":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Publisher : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 333
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    if-eqz v0, :cond_1

    .line 336
    iget-boolean v0, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-wide v0, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 343
    iget v0, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 351
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 354
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 356
    return-void

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must set AppId for nanoapp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must set non-null AppBinary for nanoapp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
