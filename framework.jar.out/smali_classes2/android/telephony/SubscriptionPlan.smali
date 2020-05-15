.class public final Landroid/telephony/SubscriptionPlan;
.super Ljava/lang/Object;
.source "SubscriptionPlan.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionPlan$Builder;,
        Landroid/telephony/SubscriptionPlan$LimitBehavior;
    }
.end annotation


# static fields
.field public static final BYTES_UNKNOWN:J = -0x1L

.field public static final BYTES_UNLIMITED:J = 0x7fffffffffffffffL

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIMIT_BEHAVIOR_BILLED:I = 0x1

.field public static final LIMIT_BEHAVIOR_DISABLED:I = 0x0

.field public static final LIMIT_BEHAVIOR_THROTTLED:I = 0x2

.field public static final LIMIT_BEHAVIOR_UNKNOWN:I = -0x1

.field public static final TIME_UNKNOWN:J = -0x1L


# instance fields
.field private final cycleRule:Landroid/util/RecurrenceRule;

.field private dataLimitBehavior:I

.field private dataLimitBytes:J

.field private dataUsageBytes:J

.field private dataUsageTime:J

.field private summary:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Landroid/telephony/SubscriptionPlan$1;

    invoke-direct {v0}, Landroid/telephony/SubscriptionPlan$1;-><init>()V

    sput-object v0, Landroid/telephony/SubscriptionPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    .line 81
    const/4 v2, -0x1

    iput v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    .line 82
    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    .line 83
    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/util/RecurrenceRule;

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/SubscriptionPlan$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/SubscriptionPlan$1;

    .line 49
    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionPlan;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/util/RecurrenceRule;)V
    .locals 3
    .param p1, "cycleRule"    # Landroid/util/RecurrenceRule;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    .line 81
    const/4 v2, -0x1

    iput v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    .line 82
    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    .line 83
    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    .line 86
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/RecurrenceRule;

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/RecurrenceRule;Landroid/telephony/SubscriptionPlan$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/util/RecurrenceRule;
    .param p2, "x1"    # Landroid/telephony/SubscriptionPlan$1;

    .line 49
    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionPlan;-><init>(Landroid/util/RecurrenceRule;)V

    return-void
.end method

.method static synthetic access$202(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Landroid/telephony/SubscriptionPlan;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 49
    iput-object p1, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$302(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Landroid/telephony/SubscriptionPlan;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 49
    iput-object p1, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$402(Landroid/telephony/SubscriptionPlan;J)J
    .locals 0
    .param p0, "x0"    # Landroid/telephony/SubscriptionPlan;
    .param p1, "x1"    # J

    .line 49
    iput-wide p1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    return-wide p1
.end method

.method static synthetic access$502(Landroid/telephony/SubscriptionPlan;I)I
    .locals 0
    .param p0, "x0"    # Landroid/telephony/SubscriptionPlan;
    .param p1, "x1"    # I

    .line 49
    iput p1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    return p1
.end method

.method static synthetic access$602(Landroid/telephony/SubscriptionPlan;J)J
    .locals 0
    .param p0, "x0"    # Landroid/telephony/SubscriptionPlan;
    .param p1, "x1"    # J

    .line 49
    iput-wide p1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    return-wide p1
.end method

.method static synthetic access$702(Landroid/telephony/SubscriptionPlan;J)J
    .locals 0
    .param p0, "x0"    # Landroid/telephony/SubscriptionPlan;
    .param p1, "x1"    # J

    .line 49
    iput-wide p1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    return-wide p1
.end method


# virtual methods
.method public cycleIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/util/Range<",
            "Ljava/time/ZonedDateTime;",
            ">;>;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v0}, Landroid/util/RecurrenceRule;->cycleIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 136
    instance-of v0, p1, Landroid/telephony/SubscriptionPlan;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 137
    move-object v0, p1

    check-cast v0, Landroid/telephony/SubscriptionPlan;

    .line 138
    .local v0, "other":Landroid/telephony/SubscriptionPlan;
    iget-object v2, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v3, v0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    .line 139
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    .line 140
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    iget-wide v4, v0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    iget v3, v0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    iget-wide v4, v0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    iget-wide v4, v0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    .line 138
    :cond_0
    return v1

    .line 146
    .end local v0    # "other":Landroid/telephony/SubscriptionPlan;
    :cond_1
    return v1
.end method

.method public getCycleRule()Landroid/util/RecurrenceRule;
    .locals 1

    .line 163
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    return-object v0
.end method

.method public getDataLimitBehavior()I
    .locals 1

    .line 189
    iget v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    return v0
.end method

.method public getDataLimitBytes()J
    .locals 2

    .line 181
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    return-wide v0
.end method

.method public getDataUsageBytes()J
    .locals 2

    .line 197
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    return-wide v0
.end method

.method public getDataUsageTime()J
    .locals 2

    .line 204
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    return-wide v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 130
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    .line 131
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 130
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubscriptionPlan{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "cycleRule="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " title="

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, " summary="

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, " dataLimitBytes="

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " dataLimitBehavior="

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dataUsageBytes="

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " dataUsageTime="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 107
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 109
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    iget v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    return-void
.end method
