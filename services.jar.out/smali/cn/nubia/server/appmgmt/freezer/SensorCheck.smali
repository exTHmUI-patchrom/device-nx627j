.class public Lcn/nubia/server/appmgmt/freezer/SensorCheck;
.super Ljava/lang/Object;
.source "SensorCheck.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field handle2Pids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mIgnoreSensors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsScreenOff:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field public mTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "ApplicationFreeze_Sensor"

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->TAG:Ljava/lang/String;

    .line 18
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mIsScreenOff:Z

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mTypeMap:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mIgnoreSensors:Ljava/util/HashSet;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->handle2Pids:Ljava/util/HashMap;

    .line 31
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 33
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mSensorManager:Landroid/hardware/SensorManager;

    .line 34
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->initIngoreSensors()V

    .line 35
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->initTypeMap()V

    .line 36
    return-void
.end method

.method private canFreezeThisType(I)Z
    .locals 3
    .param p1, "type"    # I

    .line 144
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->getIgnoreSensors()Ljava/util/HashSet;

    move-result-object v0

    .line 145
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 146
    .local v2, "i":I
    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 147
    .end local v2    # "i":I
    :cond_0
    goto :goto_0

    .line 148
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getIgnoreSensors()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->getIgnoreSensors()Ljava/util/HashSet;

    move-result-object v0

    .line 51
    .local v0, "re":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mIgnoreSensors:Ljava/util/HashSet;

    return-object v1

    .line 52
    :cond_0
    return-object v0
.end method

.method private initIngoreSensors()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mIgnoreSensors:Ljava/util/HashSet;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method private initTypeMap()V
    .locals 6

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 44
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 45
    .local v2, "s":Landroid/hardware/Sensor;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .end local v2    # "s":Landroid/hardware/Sensor;
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method private isInBlackList(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 2
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 152
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    iget-object v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/AppDataManager;->isInSensorBlackList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getHandlesByPid(I)Ljava/util/List;
    .locals 5
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "handles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->handle2Pids:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 124
    .local v2, "handle":I
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->handle2Pids:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 125
    .local v3, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v2    # "handle":I
    .end local v3    # "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 129
    :cond_1
    return-object v0
.end method

.method public getHanldePids(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->handle2Pids:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "handleIndex":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 98
    .local v1, "handle":I
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 99
    .local v2, "handleSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v3, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v4, v0, 0x2

    .local v4, "j":I
    :goto_1
    add-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_0

    .line 101
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    .end local v4    # "j":I
    :cond_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->handle2Pids:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    add-int/lit8 v4, v0, 0x2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int v0, v4, v5

    .line 105
    .end local v1    # "handle":I
    .end local v2    # "handleSize":I
    .end local v3    # "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 106
    :cond_1
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHanldePids : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->handle2Pids:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_2
    return-void
.end method

.method public getSensorsAllPids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "re":[I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 72
    .local v1, "sensorManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "getSensorsAllPids"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 73
    .local v3, "getSensorsAllPids":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mSensorManager:Landroid/hardware/SensorManager;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 76
    .end local v3    # "getSensorsAllPids":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 74
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 79
    nop

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 80
    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    .end local v2    # "i":I
    :cond_0
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSensorsAllPids : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    :try_start_1
    invoke-virtual {p0, v3}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->getHanldePids(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    goto :goto_2

    .line 86
    :catch_1
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->TAG:Ljava/lang/String;

    const-string v5, "getSensorsAllPids : error!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-object v3
.end method

.method public getSensorsEnable(I)[I
    .locals 7
    .param p1, "pid"    # I

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "re":[I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 59
    .local v1, "sensorManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "getSensorsEnable"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 60
    .local v2, "getSensorsEnable":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mSensorManager:Landroid/hardware/SensorManager;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 63
    .end local v2    # "getSensorsEnable":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method hasUnfreezeSensor(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 6
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 157
    iget v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {p0, v0}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->getHandlesByPid(I)Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 160
    .local v3, "handle":I
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 161
    .local v4, "type":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->canFreezeThisType(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->isInBlackList(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 162
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not allow, has sensor "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 165
    .end local v3    # "handle":I
    .end local v4    # "type":Ljava/lang/Integer;
    :cond_2
    goto :goto_0

    .line 166
    :cond_3
    return v1
.end method

.method resetArgs()V
    .locals 1

    .line 170
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->DEBUG:Z

    .line 171
    return-void
.end method

.method public setSensorEnable(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "frozen"    # I

    .line 141
    return-void
.end method
