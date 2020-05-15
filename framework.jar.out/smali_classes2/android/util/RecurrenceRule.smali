.class public Landroid/util/RecurrenceRule;
.super Ljava/lang/Object;
.source "RecurrenceRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/RecurrenceRule$RecurringIterator;,
        Landroid/util/RecurrenceRule$NonrecurringIterator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/util/RecurrenceRule;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGD:Z

.field private static final TAG:Ljava/lang/String; = "RecurrenceRule"

.field private static final VERSION_INIT:I

.field public static sClock:Ljava/time/Clock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final end:Ljava/time/ZonedDateTime;

.field public final period:Ljava/time/Period;

.field public final start:Ljava/time/ZonedDateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-string v0, "RecurrenceRule"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/util/RecurrenceRule;->LOGD:Z

    .line 50
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Landroid/util/RecurrenceRule;->sClock:Ljava/time/Clock;

    .line 140
    new-instance v0, Landroid/util/RecurrenceRule$1;

    invoke-direct {v0}, Landroid/util/RecurrenceRule$1;-><init>()V

    sput-object v0, Landroid/util/RecurrenceRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/util/RecurrenceRule$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/util/RecurrenceRule$1;

    .line 42
    invoke-direct {p0, p1}, Landroid/util/RecurrenceRule;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 97
    .local v0, "version":I
    if-nez v0, :cond_0

    .line 99
    invoke-static {p1}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v1

    iput-object v1, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 100
    invoke-static {p1}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v1

    iput-object v1, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 101
    invoke-static {p1}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v1

    iput-object v1, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 102
    nop

    .line 106
    return-void

    .line 104
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V
    .locals 0
    .param p1, "start"    # Ljava/time/ZonedDateTime;
    .param p2, "end"    # Ljava/time/ZonedDateTime;
    .param p3, "period"    # Ljava/time/Period;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 58
    iput-object p2, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 59
    iput-object p3, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 60
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 42
    sget-boolean v0, Landroid/util/RecurrenceRule;->LOGD:Z

    return v0
.end method

.method public static buildNever()Landroid/util/RecurrenceRule;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    new-instance v0, Landroid/util/RecurrenceRule;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static buildRecurringMonthly(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;
    .locals 5
    .param p0, "dayOfMonth"    # I
    .param p1, "zone"    # Ljava/time/ZoneId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    sget-object v0, Landroid/util/RecurrenceRule;->sClock:Ljava/time/Clock;

    invoke-static {v0}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 71
    .local v0, "now":Ljava/time/ZonedDateTime;
    nop

    .line 72
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDate;->minusYears(J)Ljava/time/LocalDate;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/time/LocalDate;->withMonth(I)Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/time/LocalDate;->withDayOfMonth(I)Ljava/time/LocalDate;

    move-result-object v1

    sget-object v3, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    .line 71
    invoke-static {v1, v3, p1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 74
    .local v1, "start":Ljava/time/ZonedDateTime;
    new-instance v3, Landroid/util/RecurrenceRule;

    invoke-static {v2}, Ljava/time/Period;->ofMonths(I)Ljava/time/Period;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v3
.end method

.method public static convertPeriod(Ljava/time/Period;)Ljava/lang/String;
    .locals 1
    .param p0, "period"    # Ljava/time/Period;

    .line 256
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/time/Period;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static convertPeriod(Ljava/lang/String;)Ljava/time/Period;
    .locals 1
    .param p0, "period"    # Ljava/lang/String;

    .line 260
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # Ljava/time/ZonedDateTime;

    .line 248
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;
    .locals 1
    .param p0, "time"    # Ljava/lang/String;

    .line 252
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
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

    .line 166
    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Landroid/util/RecurrenceRule$RecurringIterator;

    invoke-direct {v0, p0}, Landroid/util/RecurrenceRule$RecurringIterator;-><init>(Landroid/util/RecurrenceRule;)V

    return-object v0

    .line 169
    :cond_0
    new-instance v0, Landroid/util/RecurrenceRule$NonrecurringIterator;

    invoke-direct {v0, p0}, Landroid/util/RecurrenceRule$NonrecurringIterator;-><init>(Landroid/util/RecurrenceRule;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 131
    instance-of v0, p1, Landroid/util/RecurrenceRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 132
    move-object v0, p1

    check-cast v0, Landroid/util/RecurrenceRule;

    .line 133
    .local v0, "other":Landroid/util/RecurrenceRule;
    iget-object v2, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    iget-object v3, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    iget-object v3, v0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 134
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    iget-object v3, v0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 135
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    .line 133
    :cond_0
    return v1

    .line 137
    .end local v0    # "other":Landroid/util/RecurrenceRule;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 126
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMonthly()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 160
    invoke-virtual {v0}, Ljava/time/Period;->getYears()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 161
    invoke-virtual {v0}, Ljava/time/Period;->getMonths()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 162
    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 158
    :goto_0
    return v1
.end method

.method public isRecurring()Z
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecurrenceRule{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "start="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " end="

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " period="

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 90
    iget-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 110
    iget-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 113
    return-void
.end method
