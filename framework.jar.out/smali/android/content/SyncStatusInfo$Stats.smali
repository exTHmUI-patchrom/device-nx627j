.class public Landroid/content/SyncStatusInfo$Stats;
.super Ljava/lang/Object;
.source "SyncStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field public numCancels:I

.field public numFailures:I

.field public numSourceFeed:I

.field public numSourceLocal:I

.field public numSourceOther:I

.field public numSourcePeriodic:I

.field public numSourcePoll:I

.field public numSourceUser:I

.field public numSyncs:I

.field public totalElapsedTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 75
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 76
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 77
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 78
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 79
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 80
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 81
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 82
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 83
    return-void
.end method

.method public copyTo(Landroid/content/SyncStatusInfo$Stats;)V
    .locals 2
    .param p1, "to"    # Landroid/content/SyncStatusInfo$Stats;

    .line 59
    iget-wide v0, p0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    iput-wide v0, p1, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 60
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 61
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 62
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 63
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 64
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 65
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 66
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 67
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 68
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 69
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 111
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 87
    iget-wide v0, p0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return-void
.end method
