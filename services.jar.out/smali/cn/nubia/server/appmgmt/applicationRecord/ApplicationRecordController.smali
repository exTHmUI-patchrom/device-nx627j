.class public Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;
.super Ljava/lang/Object;
.source "ApplicationRecordController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$PackageRemoveReceiver;,
        Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$noteResumingActivityRunnable;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ApplicationRecordService"

.field private static final TEN_MINUTE:J = 0x927c0L

.field private static final THREE_DAY:J = 0xf731400L


# instance fields
.field private mAppLearningRecommendMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mComputedPackageNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mComputedPackageNameListLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mDefauteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsForceRefresh:Z

.field private mIsRegisterPackageRemoveBroadcast:Z

.field private mLasetUid:I

.field private mLastPackageName:Ljava/lang/String;

.field private mLastRecordTime:J

.field private mLastRefreshTime:J

.field private mLastSavaRecordUpdateTime:J

.field private mPackageRemoveReceiver:Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$PackageRemoveReceiver;

.field private mReturnAppNumber:I

.field private mSaveAppRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveclassNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTenMinuteRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastRecordTime:J

    .line 41
    const/16 v2, 0x8

    iput v2, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mReturnAppNumber:I

    .line 42
    const-string v2, "defaute"

    iput-object v2, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastPackageName:Ljava/lang/String;

    .line 43
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLasetUid:I

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mTenMinuteRecordList:Ljava/util/ArrayList;

    .line 46
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveclassNameMap:Ljava/util/Map;

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mFilterPackageList:Ljava/util/ArrayList;

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mDefauteList:Ljava/util/ArrayList;

    .line 49
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveAppRecordMap:Ljava/util/Map;

    .line 50
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mAppLearningRecommendMap:Ljava/util/Map;

    .line 51
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mComputedPackageNameListLock:Ljava/lang/Object;

    .line 52
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mIsRegisterPackageRemoveBroadcast:Z

    .line 54
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastSavaRecordUpdateTime:J

    .line 55
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastRefreshTime:J

    .line 56
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mIsForceRefresh:Z

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mComputedPackageNameList:Ljava/util/List;

    .line 60
    iput-object p2, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object p1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$PackageRemoveReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$PackageRemoveReceiver;-><init>(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mPackageRemoveReceiver:Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$PackageRemoveReceiver;

    .line 63
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->initDefauteList()V

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastSavaRecordUpdateTime:J

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;Ljava/lang/String;IJ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->addAppEnterRecond(Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    .line 32
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;
    .param p1, "x1"    # Z

    .line 32
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mIsRegisterPackageRemoveBroadcast:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    .line 32
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveclassNameMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;
    .param p1, "x1"    # Z

    .line 32
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mIsForceRefresh:Z

    return p1
.end method

.method private addAppEnterRecond(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "time"    # J

    .line 129
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mTenMinuteRecordList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-wide v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastRecordTime:J

    const-wide/32 v3, 0x927c0

    add-long/2addr v1, v3

    cmp-long v1, v1, p3

    if-gez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mTenMinuteRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 133
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mTenMinuteRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mTenMinuteRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 135
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    .line 137
    .local v2, "record":Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getTime()J

    move-result-wide v5

    add-long/2addr v5, v3

    cmp-long v5, v5, p3

    if-gez v5, :cond_1

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 140
    .end local v2    # "record":Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
    :cond_1
    goto :goto_0

    .line 143
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    :cond_2
    new-instance v1, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    invoke-direct {v1, p1, p3, p4}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;-><init>(Ljava/lang/String;J)V

    .line 144
    .local v1, "record":Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mTenMinuteRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iput-wide p3, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastRecordTime:J

    .line 146
    .end local v1    # "record":Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveAppRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    .line 149
    .local v0, "appRecord":Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
    const-wide/16 v1, 0x1

    if-nez v0, :cond_3

    .line 150
    new-instance v3, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    invoke-direct {v3, p1, p3, p4}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;-><init>(Ljava/lang/String;J)V

    move-object v0, v3

    .line 151
    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->setCount(J)V

    goto :goto_1

    .line 153
    :cond_3
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getCount()J

    move-result-wide v3

    .line 154
    .local v3, "count":J
    add-long/2addr v3, v1

    .line 155
    invoke-virtual {v0, v3, v4}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->setCount(J)V

    .line 156
    invoke-virtual {v0, p3, p4}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->setTime(J)V

    .line 158
    .end local v3    # "count":J
    :goto_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveAppRecordMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void

    .line 146
    .end local v0    # "appRecord":Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private checkIsRepetition(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 118
    iget v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLasetUid:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    return v0

    .line 121
    :cond_0
    iput-object p1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastPackageName:Ljava/lang/String;

    .line 122
    iput p2, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLasetUid:I

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method private computePackageNameList(I)Ljava/util/List;
    .locals 12
    .param p1, "arraylistNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v1, "dstList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput p1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mReturnAppNumber:I

    .line 313
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->getPackageNameListFromTenMinute()Ljava/util/List;

    move-result-object v2

    .line 315
    .local v2, "tenMinutepackageName":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 316
    move v4, v3

    .line 316
    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 317
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    invoke-virtual {v5}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 322
    .local v6, "className":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->getActivityFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 324
    if-eqz v6, :cond_0

    .line 325
    const-string v7, "ApplicationRecordService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tenMinutePackageName add  :packagename = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    invoke-virtual {v9}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getCount()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mReturnAppNumber:I

    if-lt v7, v8, :cond_1

    .line 334
    return-object v1

    .line 316
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 339
    .end local v4    # "i":I
    :cond_2
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->getPackageNameListFromThreeDay()Ljava/util/List;

    move-result-object v4

    .line 340
    .local v4, "threeDayPackageName":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_6

    .line 341
    move v5, v3

    .line 341
    .local v5, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 342
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 347
    goto :goto_2

    .line 350
    :cond_3
    const/4 v7, 0x0

    .line 351
    .local v7, "className":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->getActivityFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 352
    if-eqz v7, :cond_4

    .line 353
    const-string v8, "ApplicationRecordService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "threeDayPackageName add :packagename = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",count="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    invoke-virtual {v10}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getCount()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    iget v9, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mReturnAppNumber:I

    if-lt v8, v9, :cond_5

    .line 362
    return-object v1

    .line 341
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 367
    .end local v5    # "i":I
    :cond_6
    iget-object v5, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mDefauteList:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mDefauteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_a

    .line 368
    nop

    .line 368
    .local v3, "i":I
    :goto_3
    iget-object v5, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mDefauteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 369
    iget-object v5, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mDefauteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 370
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 371
    goto :goto_4

    .line 373
    :cond_7
    invoke-direct {p0, v5}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->getActivityFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "className":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 375
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mReturnAppNumber:I

    if-lt v7, v8, :cond_9

    .line 379
    return-object v1

    .line 368
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 383
    .end local v3    # "i":I
    :cond_a
    return-object v1
.end method

.method private getActivityFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveclassNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 388
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 389
    return-object v0

    .line 392
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    .line 394
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 398
    goto :goto_0

    .line 395
    :catch_0
    move-exception v4

    .line 396
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ApplicationRecordService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " NameNotFoundException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 399
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v2, :cond_1

    .line 400
    return-object v1

    .line 403
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 404
    .local v4, "resolveIntenet":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    iget-object v5, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 408
    .local v3, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 409
    return-object v1

    .line 411
    :cond_2
    const/4 v5, 0x0

    .line 412
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v6, "com.android.settings"

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 413
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 414
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 415
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 416
    const-string v7, "com.android.settings.Settings"

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 417
    iget-object v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveclassNameMap:Ljava/util/Map;

    const-string v7, "com.android.settings.Settings"

    invoke-interface {v1, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v1, "com.android.settings.Settings"

    return-object v1

    .line 421
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    goto :goto_1

    .line 422
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 424
    :goto_1
    if-eqz v5, :cond_6

    .line 425
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 426
    iget-object v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveclassNameMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    return-object v0

    .line 429
    :cond_6
    return-object v1
.end method

.method private getPackageNameListFromTenMinute()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mTenMinuteRecordList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mTenMinuteRecordList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mergeRecord(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    .line 291
    .local v1, "dstList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->sortArraylist(Ljava/util/List;)V

    .line 293
    return-object v1

    .line 291
    .end local v1    # "dstList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getPackageNameListFromThreeDay()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;",
            ">;"
        }
    .end annotation

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastSavaRecordUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveAppRecordMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 299
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastSavaRecordUpdateTime:J

    .line 303
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mergeAppLearningData()Ljava/util/List;

    move-result-object v0

    .line 304
    .local v0, "dstList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->sortArraylist(Ljava/util/List;)V

    .line 305
    return-object v0
.end method

.method private initDefauteList()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mDefauteList:Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mDefauteList:Ljava/util/ArrayList;

    const-string v1, "cn.nubia.neostore"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mDefauteList:Ljava/util/ArrayList;

    const-string v1, "cn.nubia.thememanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mDefauteList:Ljava/util/ArrayList;

    const-string v1, "cn.nubia.gallery3d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mDefauteList:Ljava/util/ArrayList;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mDefauteList:Ljava/util/ArrayList;

    const-string v1, "cn.nubia.myfile"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mDefauteList:Ljava/util/ArrayList;

    const-string v1, "cn.nubia.flycow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mDefauteList:Ljava/util/ArrayList;

    const-string v1, "cn.nubia.neoshare"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method private mergeAppLearningData()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v0, "dist":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    iget-object v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mAppLearningRecommendMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveAppRecordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 220
    return-object v0

    .line 222
    :cond_0
    const-wide/16 v1, 0x0

    .line 223
    .local v1, "applearningCount":J
    const-wide/16 v3, 0x0

    .line 224
    .local v3, "saveRecordCount":J
    const/4 v5, 0x0

    .line 226
    .local v5, "record":Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
    iget-object v6, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mAppLearningRecommendMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    const-wide/16 v7, 0x2

    if-eqz v6, :cond_3

    .line 227
    iget-object v6, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mAppLearningRecommendMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 228
    .local v9, "packageName":Ljava/lang/String;
    iget-object v10, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mAppLearningRecommendMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 229
    iget-object v10, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveAppRecordMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v5, v10

    check-cast v5, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    .line 230
    if-eqz v5, :cond_1

    .line 231
    invoke-virtual {v5}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getCount()J

    move-result-wide v3

    .line 232
    new-instance v10, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    invoke-virtual {v5}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getTime()J

    move-result-wide v11

    invoke-direct {v10, v9, v11, v12}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;-><init>(Ljava/lang/String;J)V

    move-object v5, v10

    .line 233
    add-long v10, v3, v1

    invoke-virtual {v5, v10, v11}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->setCount(J)V

    goto :goto_1

    .line 235
    :cond_1
    new-instance v10, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    iget-wide v11, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastSavaRecordUpdateTime:J

    invoke-direct {v10, v9, v11, v12}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;-><init>(Ljava/lang/String;J)V

    move-object v5, v10

    .line 236
    invoke-virtual {v5, v1, v2}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->setCount(J)V

    .line 238
    :goto_1
    invoke-virtual {v5}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getCount()J

    move-result-wide v10

    cmp-long v10, v10, v7

    if-ltz v10, :cond_2

    .line 239
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 244
    :cond_3
    iget-object v6, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveAppRecordMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-eqz v6, :cond_6

    .line 245
    iget-object v6, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveAppRecordMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 246
    .restart local v9    # "packageName":Ljava/lang/String;
    iget-object v10, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mAppLearningRecommendMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 247
    goto :goto_2

    .line 250
    :cond_4
    iget-object v10, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveAppRecordMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v5, v10

    check-cast v5, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    .line 251
    invoke-virtual {v5}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getCount()J

    move-result-wide v10

    cmp-long v10, v10, v7

    if-ltz v10, :cond_5

    .line 252
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 259
    :cond_6
    return-object v0
.end method

.method private mergeRecord(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;",
            ">;"
        }
    .end annotation

    .line 162
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "dst":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_7

    .line 169
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getTime()J

    move-result-wide v2

    .line 170
    .local v2, "time":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x927c0

    sub-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 171
    goto :goto_3

    .line 174
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    invoke-virtual {v4}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mFilterPackageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 176
    goto :goto_3

    .line 180
    :cond_2
    const/4 v5, 0x0

    .line 181
    .local v5, "isHasRecor":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const-wide/16 v8, 0x1

    if-ge v6, v7, :cond_5

    .line 182
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    .line 183
    .local v7, "dstRecord":Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
    invoke-virtual {v7}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 184
    invoke-virtual {v7}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getCount()J

    move-result-wide v10

    .line 185
    .local v10, "count":J
    add-long/2addr v10, v8

    .line 186
    invoke-virtual {v7, v10, v11}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->setCount(J)V

    .line 187
    invoke-virtual {v7}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getTime()J

    move-result-wide v12

    cmp-long v12, v2, v12

    if-lez v12, :cond_3

    .line 188
    invoke-virtual {v7, v2, v3}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->setTime(J)V

    .line 190
    :cond_3
    const/4 v5, 0x1

    .line 191
    goto :goto_2

    .line 181
    .end local v10    # "count":J
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 195
    .end local v6    # "j":I
    .end local v7    # "dstRecord":Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
    :cond_5
    :goto_2
    if-nez v5, :cond_6

    .line 196
    new-instance v6, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    invoke-virtual {v7}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    invoke-virtual {v10}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getTime()J

    move-result-wide v10

    invoke-direct {v6, v7, v10, v11}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;-><init>(Ljava/lang/String;J)V

    .line 197
    .local v6, "dstRecord":Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
    invoke-virtual {v6, v8, v9}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->setCount(J)V

    .line 198
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v2    # "time":J
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "isHasRecor":Z
    .end local v6    # "dstRecord":Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 202
    .end local v1    # "i":I
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_9

    .line 203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 204
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    .line 206
    .local v2, "record":Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    cmp-long v3, v3, v5

    if-gez v3, :cond_8

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 209
    .end local v2    # "record":Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
    :cond_8
    goto :goto_4

    .line 211
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    :cond_9
    return-object v0

    .line 165
    :cond_a
    :goto_5
    return-object v0
.end method

.method private refreshAppRecommendData(I)V
    .locals 4
    .param p1, "arraylistNum"    # I

    .line 474
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mIsForceRefresh:Z

    if-eqz v0, :cond_0

    .line 475
    const-string v0, "ApplicationRecordService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshAppRecommendData update:mIsForceRefresh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mIsForceRefresh:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mComputedPackageNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 477
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->computePackageNameList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mComputedPackageNameList:Ljava/util/List;

    .line 478
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastRefreshTime:J

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mIsForceRefresh:Z

    goto :goto_1

    .line 481
    :cond_0
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastRefreshTime:J

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastRefreshTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 487
    :cond_1
    const-string v0, "ApplicationRecordService"

    const-string/jumbo v1, "refreshAppRecommendData NO Update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 482
    :cond_2
    :goto_0
    const-string v0, "ApplicationRecordService"

    const-string/jumbo v1, "refreshAppRecommendData update:Update_Time_OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mComputedPackageNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 484
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->computePackageNameList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mComputedPackageNameList:Ljava/util/List;

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastRefreshTime:J

    .line 490
    :goto_1
    return-void
.end method

.method private sortArraylist(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;",
            ">;)V"
        }
    .end annotation

    .line 263
    .local p1, "arrayList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$1;-><init>(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;)V

    .line 284
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 285
    return-void

    .line 264
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;>;"
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getPackageNameList(I)Ljava/util/List;
    .locals 2
    .param p1, "arraylistNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mComputedPackageNameListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->refreshAppRecommendData(I)V

    .line 495
    iget-object v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mComputedPackageNameList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 496
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteResumingActivity(Ljava/lang/String;IZI)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isHomeActivity"    # Z
    .param p4, "stackId"    # I

    .line 84
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->checkIsRepetition(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    return-void

    .line 88
    :cond_0
    if-nez p3, :cond_2

    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mFilterPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    :try_start_0
    new-instance v0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$noteResumingActivityRunnable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$noteResumingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;Ljava/lang/String;IJ)V

    .line 94
    .local v0, "npar":Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$noteResumingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "npar":Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$noteResumingActivityRunnable;
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 89
    :cond_2
    :goto_1
    return-void
.end method

.method public setAppLearningRecommendList(Ljava/util/List;)V
    .locals 10
    .param p1, "processList"    # Ljava/util/List;

    .line 455
    const-string v0, "ApplicationRecordService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAppLearningRecommendList start, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mAppLearningRecommendMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 457
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mSaveAppRecordMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mLastSavaRecordUpdateTime:J

    .line 460
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 462
    .local v1, "element":Landroid/os/Bundle;
    const-string v2, "app_learning_user_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 463
    .local v2, "userId":I
    const-string v4, "app_learning_package_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 464
    .local v4, "appName":Ljava/lang/String;
    const-string v5, "app_learning_uid"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 465
    .local v3, "uid":I
    const-string v5, "app_learning_count"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 467
    .local v5, "count":J
    const-string v7, "ApplicationRecordService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setAppLearningRecommendList packagename = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v7, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->mAppLearningRecommendMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .end local v1    # "element":Landroid/os/Bundle;
    .end local v2    # "userId":I
    .end local v3    # "uid":I
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "count":J
    goto :goto_0

    .line 471
    :cond_0
    return-void
.end method
