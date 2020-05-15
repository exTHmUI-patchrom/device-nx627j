.class public Landroid/view/RemoteAnimationAdapter;
.super Ljava/lang/Object;
.source "RemoteAnimationAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RemoteAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallingPid:I

.field private final mDuration:J

.field private final mRunner:Landroid/view/IRemoteAnimationRunner;

.field private final mStatusBarTransitionDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Landroid/view/RemoteAnimationAdapter$1;

    invoke-direct {v0}, Landroid/view/RemoteAnimationAdapter$1;-><init>()V

    sput-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IRemoteAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    iput-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mDuration:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mStatusBarTransitionDelay:J

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/view/IRemoteAnimationRunner;JJ)V
    .locals 0
    .param p1, "runner"    # Landroid/view/IRemoteAnimationRunner;
    .param p2, "duration"    # J
    .param p4, "statusBarTransitionDelay"    # J

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/view/RemoteAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    .line 67
    iput-wide p2, p0, Landroid/view/RemoteAnimationAdapter;->mDuration:J

    .line 68
    iput-wide p4, p0, Landroid/view/RemoteAnimationAdapter;->mStatusBarTransitionDelay:J

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getCallingPid()I
    .locals 1

    .line 100
    iget v0, p0, Landroid/view/RemoteAnimationAdapter;->mCallingPid:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 82
    iget-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mDuration:J

    return-wide v0
.end method

.method public getRunner()Landroid/view/IRemoteAnimationRunner;
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    return-object v0
.end method

.method public getStatusBarTransitionDelay()J
    .locals 2

    .line 86
    iget-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mStatusBarTransitionDelay:J

    return-wide v0
.end method

.method public setCallingPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .line 93
    iput p1, p0, Landroid/view/RemoteAnimationAdapter;->mCallingPid:I

    .line 94
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 110
    iget-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 111
    iget-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mStatusBarTransitionDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    return-void
.end method
