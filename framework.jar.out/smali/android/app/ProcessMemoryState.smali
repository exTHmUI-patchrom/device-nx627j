.class public Landroid/app/ProcessMemoryState;
.super Ljava/lang/Object;
.source "ProcessMemoryState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ProcessMemoryState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cacheInBytes:J

.field public oomScore:I

.field public pgfault:J

.field public pgmajfault:J

.field public processName:Ljava/lang/String;

.field public rssInBytes:J

.field public swapInBytes:J

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Landroid/app/ProcessMemoryState$1;

    invoke-direct {v0}, Landroid/app/ProcessMemoryState$1;-><init>()V

    sput-object v0, Landroid/app/ProcessMemoryState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IJJJJJ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "oomScore"    # I
    .param p4, "pgfault"    # J
    .param p6, "pgmajfault"    # J
    .param p8, "rssInBytes"    # J
    .param p10, "cacheInBytes"    # J
    .param p12, "swapInBytes"    # J

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/app/ProcessMemoryState;->uid:I

    .line 40
    iput-object p2, p0, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    .line 41
    iput p3, p0, Landroid/app/ProcessMemoryState;->oomScore:I

    .line 42
    iput-wide p4, p0, Landroid/app/ProcessMemoryState;->pgfault:J

    .line 43
    iput-wide p6, p0, Landroid/app/ProcessMemoryState;->pgmajfault:J

    .line 44
    iput-wide p8, p0, Landroid/app/ProcessMemoryState;->rssInBytes:J

    .line 45
    iput-wide p10, p0, Landroid/app/ProcessMemoryState;->cacheInBytes:J

    .line 46
    iput-wide p12, p0, Landroid/app/ProcessMemoryState;->swapInBytes:J

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProcessMemoryState;->uid:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProcessMemoryState;->oomScore:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ProcessMemoryState;->pgfault:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ProcessMemoryState;->pgmajfault:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ProcessMemoryState;->rssInBytes:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ProcessMemoryState;->cacheInBytes:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ProcessMemoryState;->swapInBytes:J

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ProcessMemoryState$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/ProcessMemoryState$1;

    .line 26
    invoke-direct {p0, p1}, Landroid/app/ProcessMemoryState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 79
    iget v0, p0, Landroid/app/ProcessMemoryState;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Landroid/app/ProcessMemoryState;->oomScore:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-wide v0, p0, Landroid/app/ProcessMemoryState;->pgfault:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-wide v0, p0, Landroid/app/ProcessMemoryState;->pgmajfault:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    iget-wide v0, p0, Landroid/app/ProcessMemoryState;->rssInBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-wide v0, p0, Landroid/app/ProcessMemoryState;->cacheInBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-wide v0, p0, Landroid/app/ProcessMemoryState;->swapInBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    return-void
.end method
