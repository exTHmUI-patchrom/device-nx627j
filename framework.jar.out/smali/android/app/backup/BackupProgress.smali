.class public Landroid/app/backup/BackupProgress;
.super Ljava/lang/Object;
.source "BackupProgress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/backup/BackupProgress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bytesExpected:J

.field public final bytesTransferred:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Landroid/app/backup/BackupProgress$1;

    invoke-direct {v0}, Landroid/app/backup/BackupProgress$1;-><init>()V

    sput-object v0, Landroid/app/backup/BackupProgress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "_bytesExpected"    # J
    .param p3, "_bytesTransferred"    # J

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Landroid/app/backup/BackupProgress;->bytesExpected:J

    .line 43
    iput-wide p3, p0, Landroid/app/backup/BackupProgress;->bytesTransferred:J

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/backup/BackupProgress;->bytesExpected:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/backup/BackupProgress;->bytesTransferred:J

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/backup/BackupProgress$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/backup/BackupProgress$1;

    .line 30
    invoke-direct {p0, p1}, Landroid/app/backup/BackupProgress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 51
    iget-wide v0, p0, Landroid/app/backup/BackupProgress;->bytesExpected:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    iget-wide v0, p0, Landroid/app/backup/BackupProgress;->bytesTransferred:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    return-void
.end method
