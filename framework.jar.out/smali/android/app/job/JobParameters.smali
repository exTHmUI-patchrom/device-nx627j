.class public Landroid/app/job/JobParameters;
.super Ljava/lang/Object;
.source "JobParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final REASON_CANCELED:I = 0x0

.field public static final REASON_CONSTRAINTS_NOT_SATISFIED:I = 0x1

.field public static final REASON_DEVICE_IDLE:I = 0x4

.field public static final REASON_PREEMPT:I = 0x2

.field public static final REASON_TIMEOUT:I = 0x3


# instance fields
.field private final callback:Landroid/os/IBinder;

.field private final clipData:Landroid/content/ClipData;

.field private final clipGrantFlags:I

.field private debugStopReason:Ljava/lang/String;

.field private final extras:Landroid/os/PersistableBundle;

.field private final jobId:I

.field private final mTriggeredContentAuthorities:[Ljava/lang/String;

.field private final mTriggeredContentUris:[Landroid/net/Uri;

.field private final network:Landroid/net/Network;

.field private final overrideDeadlineExpired:Z

.field private stopReason:I

.field private final transientExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 341
    new-instance v0, Landroid/app/job/JobParameters$1;

    invoke-direct {v0}, Landroid/app/job/JobParameters$1;-><init>()V

    sput-object v0, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Landroid/os/Bundle;Landroid/content/ClipData;IZ[Landroid/net/Uri;[Ljava/lang/String;Landroid/net/Network;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "jobId"    # I
    .param p3, "extras"    # Landroid/os/PersistableBundle;
    .param p4, "transientExtras"    # Landroid/os/Bundle;
    .param p5, "clipData"    # Landroid/content/ClipData;
    .param p6, "clipGrantFlags"    # I
    .param p7, "overrideDeadlineExpired"    # Z
    .param p8, "triggeredContentUris"    # [Landroid/net/Uri;
    .param p9, "triggeredContentAuthorities"    # [Ljava/lang/String;
    .param p10, "network"    # Landroid/net/Network;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p2, p0, Landroid/app/job/JobParameters;->jobId:I

    .line 82
    iput-object p3, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    .line 83
    iput-object p4, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    .line 84
    iput-object p5, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    .line 85
    iput p6, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    .line 86
    iput-object p1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    .line 87
    iput-boolean p7, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    .line 88
    iput-object p8, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    .line 89
    iput-object p9, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    .line 90
    iput-object p10, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    .line 91
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobParameters;->jobId:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    goto :goto_0

    .line 288
    :cond_0
    iput-object v2, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    .line 289
    iput v1, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    .line 291
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v1, v3

    nop

    :cond_1
    iput-boolean v1, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    .line 293
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    goto :goto_1

    .line 298
    :cond_2
    iput-object v2, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    .line 300
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobParameters;->stopReason:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    .line 302
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/job/JobParameters$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/job/JobParameters$1;

    .line 36
    invoke-direct {p0, p1}, Landroid/app/job/JobParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getReasonName(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    .line 52
    packed-switch p0, :pswitch_data_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :pswitch_0
    const-string v0, "device_idle"

    return-object v0

    .line 56
    :pswitch_1
    const-string/jumbo v0, "timeout"

    return-object v0

    .line 55
    :pswitch_2
    const-string/jumbo v0, "preempt"

    return-object v0

    .line 54
    :pswitch_3
    const-string v0, "constraints"

    return-object v0

    .line 53
    :pswitch_4
    const-string v0, "canceled"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public completeWork(Landroid/app/job/JobWorkItem;)V
    .locals 3
    .param p1, "work"    # Landroid/app/job/JobWorkItem;

    .line 267
    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/job/IJobCallback;->completeWork(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    nop

    .line 273
    return-void

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given work is not active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dequeueWork()Landroid/app/job/JobWorkItem;
    .locals 2

    .line 243
    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/job/IJobCallback;->dequeueWork(I)Landroid/app/job/JobWorkItem;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Landroid/app/job/IJobCallback;
    .locals 1

    .line 277
    iget-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/app/job/IJobCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobCallback;

    move-result-object v0

    return-object v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getClipGrantFlags()I
    .locals 1

    .line 149
    iget v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    return v0
.end method

.method public getDebugStopReason()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .line 97
    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    return v0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 1

    .line 205
    iget-object v0, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    return-object v0
.end method

.method public getStopReason()I
    .locals 1

    .line 105
    iget v0, p0, Landroid/app/job/JobParameters;->stopReason:I

    return v0
.end method

.method public getTransientExtras()Landroid/os/Bundle;
    .locals 1

    .line 131
    iget-object v0, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTriggeredContentAuthorities()[Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    return-object v0
.end method

.method public getTriggeredContentUris()[Landroid/net/Uri;
    .locals 1

    .line 171
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public isOverrideDeadlineExpired()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    return v0
.end method

.method public setStopReason(ILjava/lang/String;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "debugStopReason"    # Ljava/lang/String;

    .line 306
    iput p1, p0, Landroid/app/job/JobParameters;->stopReason:I

    .line 307
    iput-object p2, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 317
    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 319
    iget-object v0, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 320
    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 323
    iget v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    :goto_0
    iget-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 328
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 330
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget-object v0, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    invoke-virtual {v0, p1, p2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 335
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    :goto_1
    iget v0, p0, Landroid/app/job/JobParameters;->stopReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    return-void
.end method
