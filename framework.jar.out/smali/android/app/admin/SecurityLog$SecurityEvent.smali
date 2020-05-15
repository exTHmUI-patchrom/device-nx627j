.class public final Landroid/app/admin/SecurityLog$SecurityEvent;
.super Ljava/lang/Object;
.source "SecurityLog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SecurityLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecurityEvent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEvent:Landroid/util/EventLog$Event;

.field private mId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 603
    new-instance v0, Landroid/app/admin/SecurityLog$SecurityEvent$1;

    invoke-direct {v0}, Landroid/app/admin/SecurityLog$SecurityEvent$1;-><init>()V

    sput-object v0, Landroid/app/admin/SecurityLog$SecurityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[B)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "data"    # [B

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput-wide p1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    .line 495
    invoke-static {p3}, Landroid/util/EventLog$Event;->fromBytes([B)Landroid/util/EventLog$Event;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    .line 496
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    .line 489
    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 480
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    .line 481
    return-void
.end method

.method private getSuccess()Z
    .locals 5

    .line 582
    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 583
    .local v0, "data":Ljava/lang/Object;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v2, v0, [Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    .line 588
    .local v2, "array":[Ljava/lang/Object;
    array-length v3, v2

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    aget-object v3, v2, v1

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    aget-object v3, v2, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v4

    nop

    :cond_1
    return v1

    .line 584
    .end local v2    # "array":[Ljava/lang/Object;
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 621
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 622
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 623
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 624
    .local v2, "other":Landroid/app/admin/SecurityLog$SecurityEvent;
    iget-object v3, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    iget-object v4, v2, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v3, v4}, Landroid/util/EventLog$Event;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    iget-wide v5, v2, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 622
    .end local v2    # "other":Landroid/app/admin/SecurityLog$SecurityEvent;
    :cond_3
    :goto_1
    return v1
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 516
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 531
    iget-wide v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    return-wide v0
.end method

.method public getLogLevel()I
    .locals 4

    .line 538
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 576
    :pswitch_0
    return v3

    .line 574
    :pswitch_1
    return v2

    .line 562
    :pswitch_2
    invoke-direct {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    nop

    :cond_0
    return v1

    .line 572
    :pswitch_3
    return v1

    .line 568
    :pswitch_4
    invoke-direct {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    nop

    :cond_1
    return v2

    .line 559
    :pswitch_5
    return v3

    :pswitch_data_0
    .packed-switch 0x33451
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public getTag()I
    .locals 1

    .line 509
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v0

    return v0
.end method

.method public getTimeNanos()J
    .locals 2

    .line 502
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 632
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 523
    iput-wide p1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    .line 524
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 599
    iget-wide v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 600
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 601
    return-void
.end method
