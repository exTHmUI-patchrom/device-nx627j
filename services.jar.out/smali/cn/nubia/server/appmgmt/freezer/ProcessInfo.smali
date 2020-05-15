.class public Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"


# static fields
.field private static final CHECK_TIME:I = 0xea60

.field static final DISPLAY_STATE_OFF:I = 0x1

.field static final DISPLAY_STATE_ON:I = 0x2

.field static final DISPLAY_STATE_UNKNOWN:I = 0x0

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final TIME_NOT_INIT:J = 0x0L

.field static final VISIBLE_APP_ADJ:I = 0x64

.field private static final WINDOW_INVISIBLE:I = 0x2

.field private static final WINDOW_REMOVE:I = 0x3

.field private static final WINDOW_VISIBLE:I = 0x1


# instance fields
.field private mAdj:I

.field mAdjChangeTime:J

.field mCheckCountAfterFrozen:I

.field mCheckMusicTime:J

.field mDisplayState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDontFreezeStrategy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDpyState:I

.field mExecService:Z

.field mFindDifferentTime:J

.field mFreezeCountWhenCheck:I

.field mFreezingTimes:I

.field mIsFrozen:Z

.field mIsInTCPWhiteList:Z

.field private mIsKilled:Z

.field mLastCheckTime:J

.field private mLock:Ljava/lang/Object;

.field mNeedQuit:Z

.field mPackageName:Ljava/lang/String;

.field mPid:I

.field mReasonPackageName:Ljava/lang/String;

.field private mReasonPid:I

.field mTrafficBytes:J

.field mTrafficCheckTime:J

.field mUid:I

.field private mVisibleWindowIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mExecService:Z

    .line 35
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdj:I

    .line 36
    iput v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mReasonPid:I

    .line 38
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mVisibleWindowIds:Ljava/util/HashSet;

    .line 40
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    .line 41
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    .line 42
    iput-wide v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFindDifferentTime:J

    .line 43
    iput-wide v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    .line 44
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsKilled:Z

    .line 45
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mNeedQuit:Z

    .line 47
    iput-wide v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficCheckTime:J

    .line 48
    iput-wide v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficBytes:J

    .line 50
    iput v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    .line 51
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDisplayState:Ljava/util/HashMap;

    .line 53
    iput v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDpyState:I

    .line 54
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsInTCPWhiteList:Z

    .line 56
    iput v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckCountAfterFrozen:I

    .line 57
    iput v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezeCountWhenCheck:I

    .line 58
    iput-wide v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mLastCheckTime:J

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDontFreezeStrategy:Ljava/util/ArrayList;

    .line 64
    iput p1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    .line 65
    iput p2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    .line 66
    iput-object p3, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public IsExecService()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mExecService:Z

    return v0
.end method

.method declared-synchronized addCheckStatus(Z)V
    .locals 6
    .param p1, "isFrozen"    # Z

    monitor-enter p0

    .line 157
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 158
    .local v0, "now":J
    iget-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mLastCheckTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    monitor-exit p0

    return-void

    .line 160
    :cond_0
    :try_start_1
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mLastCheckTime:J

    .line 161
    iget v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckCountAfterFrozen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckCountAfterFrozen:I

    .line 162
    if-eqz p1, :cond_1

    .line 163
    iget v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezeCountWhenCheck:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezeCountWhenCheck:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_1
    monitor-exit p0

    return-void

    .line 156
    .end local v0    # "now":J
    .end local p1    # "isFrozen":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    throw p1
.end method

.method addFreezeTimes()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    .line 140
    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    :goto_0
    iput v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    .line 141
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method cleanDontFreezeStrategy()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDontFreezeStrategy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 193
    return-void
.end method

.method getAdj()I
    .locals 1

    .line 89
    iget v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdj:I

    return v0
.end method

.method declared-synchronized getCheckStatus([I)V
    .locals 2
    .param p1, "status"    # [I

    monitor-enter p0

    .line 168
    if-eqz p1, :cond_1

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckCountAfterFrozen:I

    aput v1, p1, v0

    .line 170
    const/4 v0, 0x1

    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezeCountWhenCheck:I

    aput v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 167
    .end local p1    # "status":[I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    throw p1

    .line 168
    .restart local p0    # "this":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .restart local p1    # "status":[I
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method getDontFreezeStrategy()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDontFreezeStrategy:Ljava/util/ArrayList;

    return-object v0
.end method

.method getFreezingTimer()I
    .locals 2

    .line 145
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    monitor-exit v0

    return v1

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getReasonPackageName()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mReasonPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getReasonPid()I
    .locals 1

    .line 101
    iget v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mReasonPid:I

    return v0
.end method

.method hasSameName(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 2
    .param p1, "other"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 84
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 84
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized hasWindowVisible()Z
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mVisibleWindowIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    throw v0
.end method

.method declared-synchronized isFrozenBetterThan(II)Z
    .locals 2
    .param p1, "total"    # I
    .param p2, "freezeCount"    # I

    monitor-enter p0

    .line 174
    :try_start_0
    iget v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezeCountWhenCheck:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckCountAfterFrozen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v1, p2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .end local p1    # "total":I
    .end local p2    # "freezeCount":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    throw p1
.end method

.method declared-synchronized isKilled()Z
    .locals 1

    monitor-enter p0

    .line 134
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsKilled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    throw v0
.end method

.method declared-synchronized noteWindowChange(II)Z
    .locals 3
    .param p1, "windowId"    # I
    .param p2, "state"    # I

    monitor-enter p0

    .line 116
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 117
    .local v0, "isVisible":Z
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 118
    .local v1, "Id":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 119
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mVisibleWindowIds:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    .line 121
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mVisibleWindowIds:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    .line 115
    .end local v0    # "isVisible":Z
    .end local v1    # "Id":Ljava/lang/Integer;
    .end local p1    # "windowId":I
    .end local p2    # "state":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    throw p1
.end method

.method declared-synchronized resetCheckStatus()V
    .locals 1

    monitor-enter p0

    .line 178
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckCountAfterFrozen:I

    .line 179
    iput v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezeCountWhenCheck:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    throw v0
.end method

.method resetFreezingTimer()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    .line 153
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetTime()V
    .locals 2

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    .line 71
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFindDifferentTime:J

    .line 72
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    .line 73
    return-void
.end method

.method setAdj(I)Z
    .locals 1
    .param p1, "adj"    # I

    .line 76
    iget v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdj:I

    if-eq v0, p1, :cond_0

    .line 77
    iput p1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdj:I

    .line 78
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setDontFreezeStrategy(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p1, "dontFreezeStrategy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDontFreezeStrategy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDontFreezeStrategy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 189
    return-void
.end method

.method public setExecService(Z)V
    .locals 0
    .param p1, "execServiceSize"    # Z

    .line 31
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mExecService:Z

    .line 32
    return-void
.end method

.method declared-synchronized setKilled(Z)V
    .locals 0
    .param p1, "isKilled"    # Z

    monitor-enter p0

    .line 130
    :try_start_0
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsKilled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 129
    .end local p1    # "isKilled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    throw p1
.end method

.method setReasonPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "reasonPackageName"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mReasonPackageName:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 106
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mReasonPackageName:Ljava/lang/String;

    .line 108
    :cond_0
    return-void
.end method

.method setReasonPid(I)Z
    .locals 1
    .param p1, "reasonPid"    # I

    .line 93
    iget v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mReasonPid:I

    if-eq v0, p1, :cond_0

    .line 94
    iput p1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mReasonPid:I

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",reasonPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mReasonPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mReasonPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mReasonPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",window="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mVisibleWindowIds:Ljava/util/HashSet;

    .line 198
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Frozen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",kill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsKilled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",quit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mNeedQuit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    return-object v0
.end method
