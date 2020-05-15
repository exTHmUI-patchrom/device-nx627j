.class public Landroid/app/servertransaction/PauseActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;
.source "PauseActivityItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/PauseActivityItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PauseActivityItem"


# instance fields
.field private mConfigChanges:I

.field private mDontReport:Z

.field private mFinished:Z

.field private mUserLeaving:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Landroid/app/servertransaction/PauseActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/PauseActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/PauseActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/PauseActivityItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/servertransaction/PauseActivityItem$1;

    .line 32
    invoke-direct {p0, p1}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain()Landroid/app/servertransaction/PauseActivityItem;
    .locals 2

    .line 91
    const-class v0, Landroid/app/servertransaction/PauseActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/PauseActivityItem;

    .line 92
    .local v0, "instance":Landroid/app/servertransaction/PauseActivityItem;
    if-nez v0, :cond_0

    .line 93
    new-instance v1, Landroid/app/servertransaction/PauseActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/PauseActivityItem;-><init>()V

    move-object v0, v1

    .line 95
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    .line 96
    iput-boolean v1, v0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    .line 97
    iput v1, v0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    .line 100
    return-object v0
.end method

.method public static obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;
    .locals 2
    .param p0, "finished"    # Z
    .param p1, "userLeaving"    # Z
    .param p2, "configChanges"    # I
    .param p3, "dontReport"    # Z

    .line 77
    const-class v0, Landroid/app/servertransaction/PauseActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/PauseActivityItem;

    .line 78
    .local v0, "instance":Landroid/app/servertransaction/PauseActivityItem;
    if-nez v0, :cond_0

    .line 79
    new-instance v1, Landroid/app/servertransaction/PauseActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/PauseActivityItem;-><init>()V

    move-object v0, v1

    .line 81
    :cond_0
    iput-boolean p0, v0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    .line 82
    iput-boolean p1, v0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    .line 83
    iput p2, v0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    .line 84
    iput-boolean p3, v0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    .line 86
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 145
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 146
    return v0

    .line 148
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 151
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/PauseActivityItem;

    .line 152
    .local v2, "other":Landroid/app/servertransaction/PauseActivityItem;
    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    iget v4, v2, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 149
    .end local v2    # "other":Landroid/app/servertransaction/PauseActivityItem;
    :cond_3
    :goto_1
    return v1
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 10
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 44
    const-string v0, "activityPause"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 45
    iget-boolean v5, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    iget-boolean v6, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    iget v7, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    const-string v9, "PAUSE_ACTIVITY_ITEM"

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Landroid/app/ClientTransactionHandler;->handlePauseActivity(Landroid/os/IBinder;ZZILandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V

    .line 47
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 48
    return-void
.end method

.method public getTargetState()I
    .locals 1

    .line 52
    const/4 v0, 0x4

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 158
    const/16 v0, 0x11

    .line 159
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    add-int/2addr v2, v3

    .line 160
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    add-int/2addr v0, v3

    .line 161
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    add-int/2addr v2, v3

    .line 162
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/2addr v1, v2

    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    add-int/2addr v1, v0

    .line 163
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public postExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 58
    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 63
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/app/IActivityManager;->activityPaused(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    nop

    .line 67
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public recycle()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->recycle()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    .line 107
    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    .line 108
    iput v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    .line 109
    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    .line 110
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PauseActivityItem{finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",userLeaving="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",configChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",dontReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 119
    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    iget v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    return-void
.end method
