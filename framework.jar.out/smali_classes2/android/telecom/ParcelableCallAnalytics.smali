.class public Landroid/telecom/ParcelableCallAnalytics;
.super Ljava/lang/Object;
.source "ParcelableCallAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableCallAnalytics$EventTiming;,
        Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;,
        Landroid/telecom/ParcelableCallAnalytics$VideoEvent;
    }
.end annotation


# static fields
.field public static final CALLTYPE_INCOMING:I = 0x1

.field public static final CALLTYPE_OUTGOING:I = 0x2

.field public static final CALLTYPE_UNKNOWN:I = 0x0

.field public static final CALL_SOURCE_EMERGENCY_DIALPAD:I = 0x1

.field public static final CALL_SOURCE_EMERGENCY_SHORTCUT:I = 0x2

.field public static final CALL_SOURCE_UNSPECIFIED:I = 0x0

.field public static final CDMA_PHONE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;"
        }
    .end annotation
.end field

.field public static final GSM_PHONE:I = 0x2

.field public static final IMS_PHONE:I = 0x4

.field public static final MILLIS_IN_1_SECOND:J = 0x3e8L

.field public static final MILLIS_IN_5_MINUTES:J = 0x493e0L

.field public static final SIP_PHONE:I = 0x8

.field public static final STILL_CONNECTED:I = -0x1

.field public static final THIRD_PARTY_PHONE:I = 0x10


# instance fields
.field private final analyticsEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final callDurationMillis:J

.field private callSource:I

.field private final callTechnologies:I

.field private final callTerminationCode:I

.field private final callType:I

.field private final connectionService:Ljava/lang/String;

.field private final eventTimings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;"
        }
    .end annotation
.end field

.field private final isAdditionalCall:Z

.field private final isCreatedFromExistingConnection:Z

.field private final isEmergencyCall:Z

.field private final isInterrupted:Z

.field private isVideoCall:Z

.field private final startTimeMillis:J

.field private videoEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 287
    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCallAnalytics$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCallAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJIZZIIZLjava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "startTimeMillis"    # J
    .param p3, "callDurationMillis"    # J
    .param p5, "callType"    # I
    .param p6, "isAdditionalCall"    # Z
    .param p7, "isInterrupted"    # Z
    .param p8, "callTechnologies"    # I
    .param p9, "callTerminationCode"    # I
    .param p10, "isEmergencyCall"    # Z
    .param p11, "connectionService"    # Ljava/lang/String;
    .param p12, "isCreatedFromExistingConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIZZIIZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;)V"
        }
    .end annotation

    .line 352
    .local p13, "analyticsEvents":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;>;"
    .local p14, "eventTimings":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics$EventTiming;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 346
    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 353
    iput-wide p1, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    .line 354
    iput-wide p3, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    .line 355
    iput p5, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    .line 356
    iput-boolean p6, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    .line 357
    iput-boolean p7, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    .line 358
    iput p8, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    .line 359
    iput p9, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    .line 360
    iput-boolean p10, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    .line 361
    iput-object p11, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    .line 362
    iput-boolean p12, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    .line 363
    iput-object p13, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    .line 364
    iput-object p14, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    .line 365
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 346
    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    .line 371
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    .line 372
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    .line 375
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    .line 377
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    .line 379
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    .line 381
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 382
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 383
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    .line 384
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 386
    return-void
.end method

.method private static readByteAsBoolean(Landroid/os/Parcel;)Z
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 494
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static writeBooleanAsByte(Landroid/os/Parcel;Z)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "b"    # Z

    .line 490
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 491
    return-void
.end method


# virtual methods
.method public analyticsEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public getCallDurationMillis()J
    .locals 2

    .line 426
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    return-wide v0
.end method

.method public getCallSource()I
    .locals 1

    .line 481
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    return v0
.end method

.method public getCallTechnologies()I
    .locals 1

    .line 442
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    return v0
.end method

.method public getCallTerminationCode()I
    .locals 1

    .line 446
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .line 430
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    return v0
.end method

.method public getConnectionService()Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTimings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    return-object v0
.end method

.method public getStartTimeMillis()J
    .locals 2

    .line 422
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    return-wide v0
.end method

.method public getVideoEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    return-object v0
.end method

.method public isAdditionalCall()Z
    .locals 1

    .line 434
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    return v0
.end method

.method public isCreatedFromExistingConnection()Z
    .locals 1

    .line 458
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    return v0
.end method

.method public isEmergencyCall()Z
    .locals 1

    .line 450
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    return v0
.end method

.method public isInterrupted()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    .line 471
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    return v0
.end method

.method public setCallSource(I)V
    .locals 0
    .param p1, "callSource"    # I

    .line 418
    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 419
    return-void
.end method

.method public setIsVideoCall(Z)V
    .locals 0
    .param p1, "isVideoCall"    # Z

    .line 408
    iput-boolean p1, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 409
    return-void
.end method

.method public setVideoEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;)V"
        }
    .end annotation

    .line 413
    .local p1, "videoEvents":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics$VideoEvent;>;"
    iput-object p1, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    .line 414
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 389
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 390
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 391
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 393
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 394
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 397
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 399
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 400
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 401
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 402
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 403
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    return-void
.end method
