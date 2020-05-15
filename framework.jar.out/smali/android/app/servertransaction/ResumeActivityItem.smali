.class public Landroid/app/servertransaction/ResumeActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;
.source "ResumeActivityItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ResumeActivityItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ResumeActivityItem"


# instance fields
.field private mIsForward:Z

.field private mProcState:I

.field private mUpdateProcState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Landroid/app/servertransaction/ResumeActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ResumeActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ResumeActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 124
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mUpdateProcState:Z

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ResumeActivityItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/servertransaction/ResumeActivityItem$1;

    .line 32
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;
    .locals 2
    .param p0, "procState"    # I
    .param p1, "isForward"    # Z

    .line 79
    const-class v0, Landroid/app/servertransaction/ResumeActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ResumeActivityItem;

    .line 80
    .local v0, "instance":Landroid/app/servertransaction/ResumeActivityItem;
    if-nez v0, :cond_0

    .line 81
    new-instance v1, Landroid/app/servertransaction/ResumeActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/ResumeActivityItem;-><init>()V

    move-object v0, v1

    .line 83
    :cond_0
    iput p0, v0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/servertransaction/ResumeActivityItem;->mUpdateProcState:Z

    .line 85
    iput-boolean p1, v0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    .line 87
    return-object v0
.end method

.method public static obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;
    .locals 2
    .param p0, "isForward"    # Z

    .line 92
    const-class v0, Landroid/app/servertransaction/ResumeActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ResumeActivityItem;

    .line 93
    .local v0, "instance":Landroid/app/servertransaction/ResumeActivityItem;
    if-nez v0, :cond_0

    .line 94
    new-instance v1, Landroid/app/servertransaction/ResumeActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/ResumeActivityItem;-><init>()V

    move-object v0, v1

    .line 96
    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    .line 97
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/servertransaction/ResumeActivityItem;->mUpdateProcState:Z

    .line 98
    iput-boolean p0, v0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    .line 100
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 143
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 144
    return v0

    .line 146
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 149
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/ResumeActivityItem;

    .line 150
    .local v2, "other":Landroid/app/servertransaction/ResumeActivityItem;
    iget v3, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    iget v4, v2, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/servertransaction/ResumeActivityItem;->mUpdateProcState:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/ResumeActivityItem;->mUpdateProcState:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 147
    .end local v2    # "other":Landroid/app/servertransaction/ResumeActivityItem;
    :cond_3
    :goto_1
    return v1
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 5
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 50
    const-string v0, "activityResume"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 51
    iget-boolean v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    const-string v3, "RESUME_ACTIVITY"

    const/4 v4, 0x1

    invoke-virtual {p1, p2, v4, v0, v3}, Landroid/app/ClientTransactionHandler;->handleResumeActivity(Landroid/os/IBinder;ZZLjava/lang/String;)V

    .line 53
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 54
    return-void
.end method

.method public getTargetState()I
    .locals 1

    .line 69
    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 156
    const/16 v0, 0x11

    .line 157
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    add-int/2addr v2, v3

    .line 158
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-boolean v3, p0, Landroid/app/servertransaction/ResumeActivityItem;->mUpdateProcState:Z

    add-int/2addr v0, v3

    .line 159
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget-boolean v2, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    add-int/2addr v1, v2

    .line 160
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public postExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 61
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/app/IActivityManager;->activityResumed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    nop

    .line 65
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 42
    iget-boolean v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mUpdateProcState:Z

    if-eqz v0, :cond_0

    .line 43
    iget v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/ClientTransactionHandler;->updateProcessState(IZ)V

    .line 45
    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->recycle()V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mUpdateProcState:Z

    .line 108
    iput-boolean v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    .line 109
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeActivityItem{procState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",updateProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/ResumeActivityItem;->mUpdateProcState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isForward="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

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
    iget v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-boolean v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mUpdateProcState:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    iget-boolean v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    return-void
.end method
