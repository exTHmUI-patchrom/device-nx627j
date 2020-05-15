.class public Landroid/app/job/JobInfo;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobInfo$Builder;,
        Landroid/app/job/JobInfo$TriggerContentUri;,
        Landroid/app/job/JobInfo$BackoffPolicy;,
        Landroid/app/job/JobInfo$NetworkType;
    }
.end annotation


# static fields
.field public static final BACKOFF_POLICY_EXPONENTIAL:I = 0x1

.field public static final BACKOFF_POLICY_LINEAR:I = 0x0

.field public static final CONSTRAINT_FLAG_BATTERY_NOT_LOW:I = 0x2

.field public static final CONSTRAINT_FLAG_CHARGING:I = 0x1

.field public static final CONSTRAINT_FLAG_DEVICE_IDLE:I = 0x4

.field public static final CONSTRAINT_FLAG_STORAGE_NOT_LOW:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BACKOFF_POLICY:I = 0x1

.field public static final DEFAULT_INITIAL_BACKOFF_MILLIS:J = 0x7530L

.field public static final FLAG_EXEMPT_FROM_APP_STANDBY:I = 0x8

.field public static final FLAG_IMPORTANT_WHILE_FOREGROUND:I = 0x2

.field public static final FLAG_PREFETCH:I = 0x4

.field public static final FLAG_WILL_BE_FOREGROUND:I = 0x1

.field public static final IS_NUBIA:I = 0x2710

.field public static final MAX_BACKOFF_DELAY_MILLIS:J = 0x112a880L

.field public static final MIN_BACKOFF_MILLIS:J = 0x2710L

.field private static final MIN_FLEX_MILLIS:J = 0x493e0L

.field private static final MIN_PERIOD_MILLIS:J = 0xdbba0L

.field public static final NETWORK_BYTES_UNKNOWN:I = -0x1

.field public static final NETWORK_TYPE_ANY:I = 0x1

.field public static final NETWORK_TYPE_CELLULAR:I = 0x4

.field public static final NETWORK_TYPE_METERED:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NETWORK_TYPE_NONE:I = 0x0

.field public static final NETWORK_TYPE_NOT_ROAMING:I = 0x3

.field public static final NETWORK_TYPE_UNMETERED:I = 0x2

.field public static final ORDER_TYPE_APP_UPDATE:I = 0x64

.field public static final ORDER_TYPE_DATA_SYNC:I = 0xc8

.field public static final ORDER_TYPE_FS_SCAN:I = 0x1f4

.field public static final ORDER_TYPE_FS_TRIM:I = 0x258

.field public static final ORDER_TYPE_GARBAGE_CLEAN:I = 0x190

.field public static final ORDER_TYPE_NONE:I = 0x0

.field public static final ORDER_TYPE_VIRUS_SCAN:I = 0x12c

.field public static final PRIORITY_ADJ_ALWAYS_RUNNING:I = -0x50

.field public static final PRIORITY_ADJ_OFTEN_RUNNING:I = -0x28

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_FOREGROUND_APP:I = 0x1e

.field public static final PRIORITY_SYNC_EXPEDITED:I = 0xa

.field public static final PRIORITY_SYNC_INITIALIZATION:I = 0x14

.field public static final PRIORITY_TOP_APP:I = 0x28

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final backoffPolicy:I

.field private final clipData:Landroid/content/ClipData;

.field private final clipGrantFlags:I

.field private final constraintFlags:I

.field private final extras:Landroid/os/PersistableBundle;

.field private final flags:I

.field private final flexMillis:J

.field private final hasEarlyConstraint:Z

.field private final hasLateConstraint:Z

.field private final initialBackoffMillis:J

.field private final intervalMillis:J

.field private final isPeriodic:Z

.field private final isPersisted:Z

.field private final jobId:I

.field private mHasNubiaPermission:Z

.field private final mNubiaOrder:I

.field private final mNubiaRunTimeLimit:J

.field private final mRequireNubiaDeviceNotUse:Z

.field private final maxExecutionDelayMillis:J

.field private final minLatencyMillis:J

.field private final networkDownloadBytes:J

.field private final networkRequest:Landroid/net/NetworkRequest;

.field private final networkUploadBytes:J

.field private final priority:I

.field private final service:Landroid/content/ComponentName;

.field private final transientExtras:Landroid/os/Bundle;

.field private final triggerContentMaxDelay:J

.field private final triggerContentUpdateDelay:J

.field private final triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-string v0, "JobInfo"

    sput-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    .line 870
    new-instance v0, Landroid/app/job/JobInfo$1;

    invoke-direct {v0}, Landroid/app/job/JobInfo$1;-><init>()V

    sput-object v0, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobInfo$Builder;)V
    .locals 2
    .param p1, "b"    # Landroid/app/job/JobInfo$Builder;

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->mHasNubiaPermission:Z

    .line 787
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$000(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 788
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$100(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 789
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$200(Landroid/app/job/JobInfo$Builder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    .line 790
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$300(Landroid/app/job/JobInfo$Builder;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 791
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$400(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    .line 792
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$500(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 793
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$600(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    .line 794
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$700(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 795
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$700(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$700(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/job/JobInfo$TriggerContentUri;

    goto :goto_0

    .line 796
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 797
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$800(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 798
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$900(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 799
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1000(Landroid/app/job/JobInfo$Builder;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    .line 800
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1100(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    .line 801
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1200(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    .line 802
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1300(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 803
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1400(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 804
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1500(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 805
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1600(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 806
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1700(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 807
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1800(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 808
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1900(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 809
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$2000(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 810
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$2100(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 811
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$2200(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 812
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$2300(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->priority:I

    .line 813
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$2400(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    .line 815
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$2500(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->mNubiaOrder:I

    .line 816
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$2600(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->mNubiaRunTimeLimit:J

    .line 817
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$2700(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->mRequireNubiaDeviceNotUse:Z

    .line 819
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "x1"    # Landroid/app/job/JobInfo$1;

    .line 58
    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->mHasNubiaPermission:Z

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 749
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 750
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    goto :goto_0

    .line 752
    :cond_0
    iput-object v2, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 753
    iput v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    .line 755
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 756
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    .line 757
    sget-object v1, Landroid/app/job/JobInfo$TriggerContentUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/job/JobInfo$TriggerContentUri;

    iput-object v1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 758
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    sget-object v1, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    iput-object v1, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    goto :goto_1

    .line 763
    :cond_1
    iput-object v2, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    .line 765
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    .line 766
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 771
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 773
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 774
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 775
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_4
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 776
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v0

    :goto_5
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->priority:I

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->flags:I

    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->mNubiaOrder:I

    .line 781
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->mNubiaRunTimeLimit:J

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_6

    move v0, v2

    nop

    :cond_6
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->mRequireNubiaDeviceNotUse:Z

    .line 784
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/job/JobInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/job/JobInfo$1;

    .line 58
    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMinBackoffMillis()J
    .locals 2

    .line 173
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public static final getMinFlexMillis()J
    .locals 2

    .line 165
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public static final getMinPeriodMillis()J
    .locals 2

    .line 154
    const-wide/32 v0, 0xdbba0

    return-wide v0
.end method

.method private static kindofEqualsBundle(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z
    .locals 1
    .param p0, "a"    # Landroid/os/BaseBundle;
    .param p1, "b"    # Landroid/os/BaseBundle;

    .line 611
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 823
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 616
    instance-of v0, p1, Landroid/app/job/JobInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 617
    return v1

    .line 619
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/job/JobInfo;

    .line 620
    .local v0, "j":Landroid/app/job/JobInfo;
    iget v2, p0, Landroid/app/job/JobInfo;->jobId:I

    iget v3, v0, Landroid/app/job/JobInfo;->jobId:I

    if-eq v2, v3, :cond_1

    .line 621
    return v1

    .line 624
    :cond_1
    iget-object v2, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    iget-object v3, v0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-static {v2, v3}, Landroid/app/job/JobInfo;->kindofEqualsBundle(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 625
    return v1

    .line 628
    :cond_2
    iget-object v2, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    iget-object v3, v0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-static {v2, v3}, Landroid/app/job/JobInfo;->kindofEqualsBundle(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 629
    return v1

    .line 633
    :cond_3
    iget-object v2, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    iget-object v3, v0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-eq v2, v3, :cond_4

    .line 634
    return v1

    .line 636
    :cond_4
    iget v2, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    iget v3, v0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    if-eq v2, v3, :cond_5

    .line 637
    return v1

    .line 639
    :cond_5
    iget-object v2, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 640
    return v1

    .line 642
    :cond_6
    iget v2, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    iget v3, v0, Landroid/app/job/JobInfo;->constraintFlags:I

    if-eq v2, v3, :cond_7

    .line 643
    return v1

    .line 645
    :cond_7
    iget-object v2, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    iget-object v3, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 646
    return v1

    .line 648
    :cond_8
    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 649
    return v1

    .line 651
    :cond_9
    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    .line 652
    return v1

    .line 654
    :cond_a
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-eq v2, v3, :cond_b

    .line 655
    return v1

    .line 657
    :cond_b
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-eq v2, v3, :cond_c

    .line 658
    return v1

    .line 660
    :cond_c
    iget-object v2, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    iget-object v3, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 661
    return v1

    .line 663
    :cond_d
    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 664
    return v1

    .line 666
    :cond_e
    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    .line 667
    return v1

    .line 669
    :cond_f
    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    .line 670
    return v1

    .line 672
    :cond_10
    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    .line 673
    return v1

    .line 675
    :cond_11
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-eq v2, v3, :cond_12

    .line 676
    return v1

    .line 678
    :cond_12
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->isPersisted:Z

    if-eq v2, v3, :cond_13

    .line 679
    return v1

    .line 681
    :cond_13
    iget-wide v2, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->intervalMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14

    .line 682
    return v1

    .line 684
    :cond_14
    iget-wide v2, p0, Landroid/app/job/JobInfo;->flexMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->flexMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    .line 685
    return v1

    .line 687
    :cond_15
    iget-wide v2, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    .line 688
    return v1

    .line 690
    :cond_16
    iget v2, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    iget v3, v0, Landroid/app/job/JobInfo;->backoffPolicy:I

    if-eq v2, v3, :cond_17

    .line 691
    return v1

    .line 693
    :cond_17
    iget v2, p0, Landroid/app/job/JobInfo;->priority:I

    iget v3, v0, Landroid/app/job/JobInfo;->priority:I

    if-eq v2, v3, :cond_18

    .line 694
    return v1

    .line 696
    :cond_18
    iget v2, p0, Landroid/app/job/JobInfo;->flags:I

    iget v3, v0, Landroid/app/job/JobInfo;->flags:I

    if-eq v2, v3, :cond_19

    .line 697
    return v1

    .line 699
    :cond_19
    const/4 v1, 0x1

    return v1
.end method

.method public getBackoffPolicy()I
    .locals 1

    .line 575
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    return v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    .line 337
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getClipGrantFlags()I
    .locals 1

    .line 344
    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    return v0
.end method

.method public getConstraintFlags()I
    .locals 1

    .line 401
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    return v0
.end method

.method public getEstimatedNetworkBytes()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 474
    return-wide v2

    .line 475
    :cond_0
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 476
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    return-wide v0

    .line 477
    :cond_1
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 478
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    return-wide v0

    .line 480
    :cond_2
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getEstimatedNetworkDownloadBytes()J
    .locals 2

    .line 493
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    return-wide v0
.end method

.method public getEstimatedNetworkUploadBytes()J
    .locals 2

    .line 505
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    return-wide v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 361
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    return v0
.end method

.method public getFlexMillis()J
    .locals 2

    .line 557
    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 316
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    return v0
.end method

.method public getInitialBackoffMillis()J
    .locals 2

    .line 567
    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    return-wide v0
.end method

.method public getIntervalMillis()J
    .locals 2

    .line 547
    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    return-wide v0
.end method

.method public getMaxExecutionDelayMillis()J
    .locals 2

    .line 521
    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    return-wide v0
.end method

.method public getMinLatencyMillis()J
    .locals 2

    .line 514
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    return-wide v0
.end method

.method public getNetworkType()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 442
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 443
    return v1

    .line 444
    :cond_0
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    const/4 v0, 0x2

    return v0

    .line 446
    :cond_1
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    const/4 v0, 0x3

    return v0

    .line 448
    :cond_2
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    const/4 v0, 0x4

    return v0

    .line 451
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public getNubiaOrder()I
    .locals 1

    .line 1046
    iget v0, p0, Landroid/app/job/JobInfo;->mNubiaOrder:I

    return v0
.end method

.method public getNubiaPermission()Z
    .locals 1

    .line 1038
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->mHasNubiaPermission:Z

    return v0
.end method

.method public getNubiaRunTimeLimit()J
    .locals 2

    .line 1053
    iget-wide v0, p0, Landroid/app/job/JobInfo;->mNubiaRunTimeLimit:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .line 356
    iget v0, p0, Landroid/app/job/JobInfo;->priority:I

    return v0
.end method

.method public getRequiredNetwork()Landroid/net/NetworkRequest;
    .locals 1

    .line 462
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public getService()Landroid/content/ComponentName;
    .locals 1

    .line 351
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getTransientExtras()Landroid/os/Bundle;
    .locals 1

    .line 330
    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTriggerContentMaxDelay()J
    .locals 2

    .line 428
    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    return-wide v0
.end method

.method public getTriggerContentUpdateDelay()J
    .locals 2

    .line 419
    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    return-wide v0
.end method

.method public getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;
    .locals 1

    .line 410
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    return-object v0
.end method

.method public hasEarlyConstraint()Z
    .locals 1

    .line 598
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    return v0
.end method

.method public hasLateConstraint()Z
    .locals 1

    .line 607
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 704
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 705
    .local v0, "hashCode":I
    iget-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    const/16 v2, 0x1f

    if-eqz v1, :cond_0

    .line 706
    mul-int v1, v2, v0

    iget-object v3, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 708
    :cond_0
    iget-object v1, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 709
    mul-int v1, v2, v0

    iget-object v3, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 711
    :cond_1
    iget-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-eqz v1, :cond_2

    .line 712
    mul-int v1, v2, v0

    iget-object v3, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 714
    :cond_2
    mul-int v1, v2, v0

    iget v3, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    add-int/2addr v1, v3

    .line 715
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 716
    mul-int v0, v2, v1

    iget-object v3, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->hashCode()I

    move-result v3

    add-int v1, v0, v3

    .line 718
    :cond_3
    mul-int v0, v2, v1

    iget v3, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    add-int/2addr v0, v3

    .line 719
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    iget-object v1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz v1, :cond_4

    .line 720
    mul-int v1, v2, v0

    iget-object v3, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v0, v1, v3

    .line 722
    :cond_4
    mul-int v1, v2, v0

    iget-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 723
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int v0, v2, v1

    iget-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 724
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int v1, v2, v0

    iget-boolean v3, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-static {v3}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v3

    add-int/2addr v1, v3

    .line 725
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int v0, v2, v1

    iget-boolean v3, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-static {v3}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v3

    add-int/2addr v0, v3

    .line 726
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    iget-object v1, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v1, :cond_5

    .line 727
    mul-int v1, v2, v0

    iget-object v3, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v3}, Landroid/net/NetworkRequest;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 729
    :cond_5
    mul-int v1, v2, v0

    iget-wide v3, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 730
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int v0, v2, v1

    iget-wide v3, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 731
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int v1, v2, v0

    iget-wide v3, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 732
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int v0, v2, v1

    iget-wide v3, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 733
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int v1, v2, v0

    iget-boolean v3, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-static {v3}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v3

    add-int/2addr v1, v3

    .line 734
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int v0, v2, v1

    iget-boolean v3, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v3

    add-int/2addr v0, v3

    .line 735
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int v1, v2, v0

    iget-wide v3, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 736
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int v0, v2, v1

    iget-wide v3, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 737
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int v1, v2, v0

    iget-wide v3, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 738
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int v0, v2, v1

    iget v3, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    add-int/2addr v0, v3

    .line 739
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int v1, v2, v0

    iget v3, p0, Landroid/app/job/JobInfo;->priority:I

    add-int/2addr v1, v3

    .line 740
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/2addr v2, v1

    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    add-int/2addr v2, v0

    .line 741
    .end local v1    # "hashCode":I
    .local v2, "hashCode":I
    return v2
.end method

.method public isExemptedFromAppStandby()Z
    .locals 1

    .line 366
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImportantWhileForeground()Z
    .locals 1

    .line 582
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPeriodic()Z
    .locals 1

    .line 530
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    return v0
.end method

.method public isPersisted()Z
    .locals 1

    .line 537
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    return v0
.end method

.method public isPrefetch()Z
    .locals 1

    .line 589
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequireBatteryNotLow()Z
    .locals 1

    .line 380
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequireCharging()Z
    .locals 2

    .line 373
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRequireDeviceIdle()Z
    .locals 1

    .line 387
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequireNubiaDeviceNotUse()Z
    .locals 1

    .line 1060
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->mRequireNubiaDeviceNotUse:Z

    return v0
.end method

.method public isRequireStorageNotLow()Z
    .locals 1

    .line 394
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setNubiaPermission(Z)V
    .locals 0
    .param p1, "hasPermission"    # Z

    .line 1033
    iput-boolean p1, p0, Landroid/app/job/JobInfo;->mHasNubiaPermission:Z

    .line 1034
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(job:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 828
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 830
    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 831
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 834
    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 836
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    :goto_0
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 839
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 841
    iget-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 842
    iget-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 843
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v0, :cond_1

    .line 844
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 847
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    :goto_1
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 850
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 851
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 852
    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 853
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 856
    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 857
    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 858
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    iget v0, p0, Landroid/app/job/JobInfo;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    iget v0, p0, Landroid/app/job/JobInfo;->mNubiaOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    iget-wide v0, p0, Landroid/app/job/JobInfo;->mNubiaRunTimeLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 866
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->mRequireNubiaDeviceNotUse:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    return-void
.end method
