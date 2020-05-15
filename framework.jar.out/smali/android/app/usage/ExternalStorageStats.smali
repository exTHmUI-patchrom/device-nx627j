.class public final Landroid/app/usage/ExternalStorageStats;
.super Ljava/lang/Object;
.source "ExternalStorageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/ExternalStorageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appBytes:J

.field public audioBytes:J

.field public imageBytes:J

.field public obbBytes:J

.field public totalBytes:J

.field public videoBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    new-instance v0, Landroid/app/usage/ExternalStorageStats$1;

    invoke-direct {v0}, Landroid/app/usage/ExternalStorageStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/ExternalStorageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    .line 117
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getAppBytes()J
    .locals 2

    .line 97
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    return-wide v0
.end method

.method public getAudioBytes()J
    .locals 2

    .line 59
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    return-wide v0
.end method

.method public getImageBytes()J
    .locals 2

    .line 83
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    return-wide v0
.end method

.method public getObbBytes()J
    .locals 2

    .line 102
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 47
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    return-wide v0
.end method

.method public getVideoBytes()J
    .locals 2

    .line 71
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 126
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    return-void
.end method
