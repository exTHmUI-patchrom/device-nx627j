.class public Lnubia/os/ApplicationManager$Trigger;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/ApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trigger"
.end annotation


# static fields
.field private static sService:Lnubia/os/IApplicationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsAllowDialogShow(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1981
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1982
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$8500(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static IsGameModeRunning()Z
    .locals 1

    .line 1971
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1972
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$8300(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method public static IsGameModeSubRunning(I)Z
    .locals 1
    .param p0, "flag"    # I

    .line 1976
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1977
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$8400(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method public static addPackageToPreLaunchBlackList(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1583
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1584
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$3100(Lnubia/os/IApplicationManager;Ljava/lang/String;)V

    .line 1585
    return-void
.end method

.method public static allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 1448
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1449
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$400(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static allowAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1443
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1444
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$300(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static allowBackgroundSyncToRun(ILjava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1530
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1531
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$2000(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p0, "operation"    # Landroid/app/PendingIntent;

    .line 1453
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1454
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$500(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method public static allowFreezeAppWakeupAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1438
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1439
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$200(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static allowPartialWakelock(ILjava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1428
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1429
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$000(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static allowWakeupAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1433
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1434
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$100(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static change4DNode(Z)V
    .locals 1
    .param p0, "isOpen"    # Z

    .line 2082
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2083
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$9900(Lnubia/os/IApplicationManager;Z)V

    .line 2084
    return-void
.end method

.method public static checkActionAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p0, "actname"    # Ljava/lang/String;

    .line 1798
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1799
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$7400(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkAllowedGetActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "actname"    # Ljava/lang/String;

    .line 1803
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1804
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$7500(Lnubia/os/IApplicationManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ensureService()V
    .locals 1

    .line 1421
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    if-nez v0, :cond_0

    .line 1422
    const-string v0, "nubia.application.manager"

    .line 1423
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1422
    invoke-static {v0}, Lnubia/os/IApplicationManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IApplicationManager;

    move-result-object v0

    sput-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    .line 1425
    :cond_0
    return-void
.end method

.method public static getActionState(Ljava/lang/String;)Z
    .locals 1
    .param p0, "actname"    # Ljava/lang/String;

    .line 1808
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1809
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$7600(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getAppLearningCallback()Lnubia/os/IAppLearningCallback;
    .locals 1

    .line 1554
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1555
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$2500(Lnubia/os/IApplicationManager;)Lnubia/os/IAppLearningCallback;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationRecond(I)Ljava/util/List;
    .locals 1
    .param p0, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1959
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1960
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$8100(Lnubia/os/IApplicationManager;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUserLearningProcess()Ljava/util/List;
    .locals 1

    .line 1578
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1579
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$3000(Lnubia/os/IApplicationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getForegroundPackageName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1818
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1819
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$7800(Lnubia/os/IApplicationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFrozenProcessStatus(Ljava/lang/String;I[I)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "status"    # [I

    .line 1643
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1644
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2}, Lnubia/os/ApplicationManager;->access$4300(Lnubia/os/IApplicationManager;Ljava/lang/String;I[I)Z

    move-result v0

    return v0
.end method

.method public static getGameLauncherAppNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1823
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1824
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$7900(Lnubia/os/IApplicationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getGameMode()I
    .locals 1

    .line 1966
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1967
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$8200(Lnubia/os/IApplicationManager;)I

    move-result v0

    return v0
.end method

.method public static getGameScreenRefreshRate(ILjava/lang/String;)I
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pkgname"    # Ljava/lang/String;

    .line 1829
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1830
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager$Trigger;->getGameScreenRefreshRateImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getGameScreenRefreshRateImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)I
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "pkgname"    # Ljava/lang/String;

    .line 1866
    if-eqz p0, :cond_0

    .line 1868
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->getGameScreenRefreshRate(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1869
    :catch_0
    move-exception v0

    .line 1870
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lnubia/os/ApplicationManager;->access$8000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1871
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1875
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/16 v0, -0x64

    return v0
.end method

.method public static getLightEffectState(I)I
    .locals 1
    .param p0, "type"    # I

    .line 1860
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1861
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager$Trigger;->getLightEffectStateImpl(Lnubia/os/IApplicationManager;I)I

    move-result v0

    return v0
.end method

.method private static getLightEffectStateImpl(Lnubia/os/IApplicationManager;I)I
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "type"    # I

    .line 1944
    if-eqz p0, :cond_0

    .line 1946
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->getLightEffectState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1947
    :catch_0
    move-exception v0

    .line 1948
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lnubia/os/ApplicationManager;->access$8000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1949
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1953
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getNetAvailable()Z
    .locals 1

    .line 1540
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1541
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$2200(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method public static grantPermissionDialogClick(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1769
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1770
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$6900(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V

    .line 1771
    return-void
.end method

.method public static installEvent(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1759
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1760
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$6700(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V

    .line 1761
    return-void
.end method

.method public static isAllowStartActivityInGameKeys()Z
    .locals 1

    .line 1986
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1987
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$8600(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method public static isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "reqCode"    # I
    .param p1, "subCode"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "argStr1"    # Ljava/lang/String;
    .param p5, "argStr2"    # Ljava/lang/String;

    .line 1659
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1660
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lnubia/os/ApplicationManager;->access$4600(Lnubia/os/IApplicationManager;IIIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isControlledByMotionDoze(ILjava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1535
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1536
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$2100(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGameAppOnForeground()Z
    .locals 1

    .line 2001
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2002
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$8900(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method public static isGameKeyOn()Z
    .locals 1

    .line 2006
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2007
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$9000(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method public static isLightEffectOpened()Z
    .locals 1

    .line 1840
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1841
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->isLightEffectOpenedImpl(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method private static isLightEffectOpenedImpl(Lnubia/os/IApplicationManager;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 1892
    if-eqz p0, :cond_0

    .line 1894
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->isLightEffectOpened()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1895
    :catch_0
    move-exception v0

    .line 1896
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lnubia/os/ApplicationManager;->access$8000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1897
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1901
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNotifyDisplayEvent(III)Z
    .locals 1
    .param p0, "pid"    # I
    .param p1, "state"    # I
    .param p2, "displayId"    # I

    .line 1648
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1649
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2}, Lnubia/os/ApplicationManager;->access$4400(Lnubia/os/IApplicationManager;III)Z

    move-result v0

    return v0
.end method

.method public static isOpen4DNode()Z
    .locals 1

    .line 2077
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2078
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$9800(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method public static isProcessFrozen(I)Z
    .locals 1
    .param p0, "pid"    # I

    .line 1624
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1625
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$3900(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method public static isProcessFrozenByUid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 1634
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1635
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$4100(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method public static isProcessRealFrozen(I)Z
    .locals 1
    .param p0, "pid"    # I

    .line 1629
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1630
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$4000(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method public static isProcessRealFrozenByUid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 1638
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1639
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$4200(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method public static isUsbInstallSwitchOn()Z
    .locals 1

    .line 1754
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1755
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$6600(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method public static noteActionMutex(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "isOpen"    # Z
    .param p3, "isSave"    # Z

    .line 1780
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1781
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$7100(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1783
    return-void
.end method

.method public static noteActivityStackRemoved(I)V
    .locals 1
    .param p0, "stackId"    # I

    .line 1510
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1511
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$1600(Lnubia/os/IApplicationManager;I)V

    .line 1512
    return-void
.end method

.method public static noteAddWindow(IILjava/lang/String;)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1614
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1615
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2}, Lnubia/os/ApplicationManager;->access$3700(Lnubia/os/IApplicationManager;IILjava/lang/String;)V

    .line 1616
    return-void
.end method

.method public static noteAppAnrCrash(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 2036
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2037
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lnubia/os/ApplicationManager;->access$9200(Lnubia/os/IApplicationManager;Ljava/lang/String;ILjava/lang/String;J)V

    .line 2038
    return-void
.end method

.method public static noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 7
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .line 1699
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1700
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lnubia/os/ApplicationManager;->access$5500(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;J)V

    .line 1701
    return-void
.end method

.method public static noteAppExit(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .line 1704
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1705
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$5600(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;)V

    .line 1706
    return-void
.end method

.method public static noteAppExitReason(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1709
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1710
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$5700(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    return-void
.end method

.method public static noteAppForeground(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 9
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "caller"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .param p7, "isColdLaunch"    # Z

    .line 1694
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1695
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lnubia/os/ApplicationManager;->access$5400(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 1696
    return-void
.end method

.method public static noteAppInactive(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "idle"    # Z

    .line 1689
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1690
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$5300(Lnubia/os/IApplicationManager;Ljava/lang/String;Z)V

    .line 1691
    return-void
.end method

.method public static noteAppTransitionAnimation(Z)V
    .locals 1
    .param p0, "execute"    # Z

    .line 1520
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1521
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$1800(Lnubia/os/IApplicationManager;Z)V

    .line 1522
    return-void
.end method

.method public static noteAppUsingCamera(ILjava/lang/String;ILjava/lang/String;JZ)V
    .locals 8
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "timestamp"    # J
    .param p6, "isLaunch"    # Z

    .line 2031
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2032
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-static/range {v0 .. v7}, Lnubia/os/ApplicationManager;->access$9100(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;JZ)V

    .line 2033
    return-void
.end method

.method public static noteCreateActivity(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 2113
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2114
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$10500(Lnubia/os/IApplicationManager;Ljava/lang/String;)V

    .line 2115
    return-void
.end method

.method public static noteDisplayPowerModeChanged(I)V
    .locals 1
    .param p0, "mode"    # I

    .line 1685
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1686
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$5200(Lnubia/os/IApplicationManager;I)V

    .line 1687
    return-void
.end method

.method public static noteDisplayStateChanged(III)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "state"    # I
    .param p2, "displayId"    # I

    .line 1653
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1654
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2}, Lnubia/os/ApplicationManager;->access$4500(Lnubia/os/IApplicationManager;III)V

    .line 1655
    return-void
.end method

.method public static noteEdgeGesture(Ljava/lang/String;)V
    .locals 1
    .param p0, "gesture"    # Ljava/lang/String;

    .line 2021
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2022
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->noteEdgeGestureImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)V

    .line 2023
    return-void
.end method

.method public static noteEndGps(IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 9
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "interval"    # J
    .param p6, "timestamp"    # J

    .line 1739
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1740
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide v7, p6

    invoke-static/range {v0 .. v8}, Lnubia/os/ApplicationManager;->access$6300(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 1741
    return-void
.end method

.method public static noteEndMusic(IIJ)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "timestamp"    # J

    .line 1719
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1720
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$5900(Lnubia/os/IApplicationManager;IIJ)V

    .line 1721
    return-void
.end method

.method public static noteEndMusicToColorfullight(II)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "uid"    # I

    .line 1729
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1730
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$6100(Lnubia/os/IApplicationManager;II)V

    .line 1731
    return-void
.end method

.method public static noteEndNetworkPosition(IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 9
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "interval"    # J
    .param p6, "timestamp"    # J

    .line 1749
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1750
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide v7, p6

    invoke-static/range {v0 .. v8}, Lnubia/os/ApplicationManager;->access$6500(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 1751
    return-void
.end method

.method public static noteFingerprintAuth(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "success"    # Z

    .line 2026
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2027
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->noteFingerprintAuthImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Z)V

    .line 2028
    return-void
.end method

.method public static noteGPSReceivers([Landroid/os/Bundle;)V
    .locals 1
    .param p0, "GPSReceivers"    # [Landroid/os/Bundle;

    .line 1813
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1814
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$7700(Lnubia/os/IApplicationManager;[Landroid/os/Bundle;)V

    .line 1815
    return-void
.end method

.method public static noteGameMagicVoice(II)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "pid"    # I

    .line 2103
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2104
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$10300(Lnubia/os/IApplicationManager;II)V

    .line 2105
    return-void
.end method

.method public static noteGameModeIsRunning()V
    .locals 1

    .line 1564
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1565
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$2700(Lnubia/os/IApplicationManager;)V

    .line 1566
    return-void
.end method

.method public static noteGameModeIsStopped()V
    .locals 1

    .line 1568
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1569
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$2800(Lnubia/os/IApplicationManager;)V

    .line 1570
    return-void
.end method

.method public static noteIdleState(I)V
    .locals 1
    .param p0, "state"    # I

    .line 1681
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1682
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$5100(Lnubia/os/IApplicationManager;I)V

    .line 1683
    return-void
.end method

.method public static noteKeyguardStateChanged(I)V
    .locals 1
    .param p0, "state"    # I

    .line 1604
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1605
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$3500(Lnubia/os/IApplicationManager;I)V

    .line 1606
    return-void
.end method

.method public static noteKillExceptionBackgroundApp(Ljava/lang/String;I)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 2056
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2057
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$9500(Lnubia/os/IApplicationManager;Ljava/lang/String;I)V

    .line 2058
    return-void
.end method

.method public static noteNaviGestureFinalization()V
    .locals 1

    .line 2098
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2099
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$10200(Lnubia/os/IApplicationManager;)V

    .line 2100
    return-void
.end method

.method public static noteNaviGestureStarted()V
    .locals 1

    .line 2093
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2094
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$10100(Lnubia/os/IApplicationManager;)V

    .line 2095
    return-void
.end method

.method public static noteNotificationClick(Landroid/content/Intent;J)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "timestamp"    # J

    .line 2046
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2047
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2}, Lnubia/os/ApplicationManager;->noteNotificationClickImpl(Lnubia/os/IApplicationManager;Landroid/content/Intent;J)V

    .line 2048
    return-void
.end method

.method public static notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "visible"    # Z
    .param p5, "topActivityPackageName"    # Ljava/lang/String;
    .param p6, "topActivity"    # Ljava/lang/String;

    .line 1490
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1491
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lnubia/os/ApplicationManager;->access$1200(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1492
    return-void
.end method

.method public static notePlayAudioChange(IIII)V
    .locals 1
    .param p0, "what"    # I
    .param p1, "sessionId"    # I
    .param p2, "streamType"    # I
    .param p3, "state"    # I

    .line 1835
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1836
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager$Trigger;->notePlayAudioChangeImpl(Lnubia/os/IApplicationManager;IIII)V

    .line 1837
    return-void
.end method

.method private static notePlayAudioChangeImpl(Lnubia/os/IApplicationManager;IIII)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "what"    # I
    .param p2, "sessionId"    # I
    .param p3, "streamType"    # I
    .param p4, "state"    # I

    .line 1880
    if-eqz p0, :cond_0

    .line 1882
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->notePlayAudioChange(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1887
    goto :goto_0

    .line 1883
    :catch_0
    move-exception v0

    .line 1884
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lnubia/os/ApplicationManager;->access$8000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1885
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1889
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static notePlayMusicToColorfullight(II)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "uid"    # I

    .line 1724
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1725
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$6000(Lnubia/os/IApplicationManager;II)V

    .line 1726
    return-void
.end method

.method public static noteProcessNeedPreLaunch(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 6
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isBg"    # Z
    .param p4, "is2LevelLaunch"    # Z

    .line 1559
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1560
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lnubia/os/ApplicationManager;->access$2600(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 1561
    return-void
.end method

.method public static noteProcessStatus([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[Z)V
    .locals 8
    .param p0, "pid"    # [I
    .param p1, "uid"    # [I
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "adj"    # [I
    .param p4, "reasonPid"    # [I
    .param p5, "reasonPackageNames"    # [Ljava/lang/String;
    .param p6, "isExecService"    # [Z

    .line 1589
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1590
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lnubia/os/ApplicationManager;->access$3200(Lnubia/os/IApplicationManager;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[Z)V

    .line 1591
    return-void
.end method

.method public static noteProcessStatusChanged()V
    .locals 1

    .line 1594
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1595
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$3300(Lnubia/os/IApplicationManager;)V

    .line 1596
    return-void
.end method

.method public static noteRemoveWindow(I)V
    .locals 1
    .param p0, "pid"    # I

    .line 1619
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1620
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$3800(Lnubia/os/IApplicationManager;I)V

    .line 1621
    return-void
.end method

.method public static noteRemovingProcess(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .line 1505
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1506
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$1500(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 1507
    return-void
.end method

.method public static noteResumedActivity(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1484
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1485
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$1100(Lnubia/os/IApplicationManager;Ljava/lang/String;)V

    .line 1486
    return-void
.end method

.method public static noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .line 1515
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1516
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$1700(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 1517
    return-void
.end method

.method public static noteResumingActivity(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 8
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "isHomeActivity"    # Z
    .param p5, "pid"    # I
    .param p6, "processName"    # Ljava/lang/String;

    .line 1479
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1480
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lnubia/os/ApplicationManager;->access$1000(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 1481
    return-void
.end method

.method public static noteScreenState(I)V
    .locals 1
    .param p0, "state"    # I

    .line 1677
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1678
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$5000(Lnubia/os/IApplicationManager;I)V

    .line 1679
    return-void
.end method

.method public static noteScreenStateChanged(I)V
    .locals 1
    .param p0, "state"    # I

    .line 1599
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1600
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$3400(Lnubia/os/IApplicationManager;I)V

    .line 1601
    return-void
.end method

.method public static noteSetUserIsMonkey(Z)V
    .locals 1
    .param p0, "userIsMonkey"    # Z

    .line 2011
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2012
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->noteSetUserIsMonkeyImpl(Lnubia/os/IApplicationManager;Z)V

    .line 2013
    return-void
.end method

.method public static noteStartActivity(Landroid/content/Intent;)V
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 2061
    if-eqz p0, :cond_0

    .line 2062
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2063
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 2064
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2065
    sget-object v1, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnubia/os/ApplicationManager;->access$9600(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method public static noteStartCtsTest(Z)V
    .locals 1
    .param p0, "isStartCts"    # Z

    .line 2088
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2089
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$10000(Lnubia/os/IApplicationManager;Z)V

    .line 2090
    return-void
.end method

.method public static noteStartGps(IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 9
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "interval"    # J
    .param p6, "timestamp"    # J

    .line 1734
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1735
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide v7, p6

    invoke-static/range {v0 .. v8}, Lnubia/os/ApplicationManager;->access$6200(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 1736
    return-void
.end method

.method public static noteStartMusic(IIJ)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "timestamp"    # J

    .line 1714
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1715
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$5800(Lnubia/os/IApplicationManager;IIJ)V

    .line 1716
    return-void
.end method

.method public static noteStartNetworkPosition(IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 9
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "interval"    # J
    .param p6, "timestamp"    # J

    .line 1744
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1745
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide v7, p6

    invoke-static/range {v0 .. v8}, Lnubia/os/ApplicationManager;->access$6400(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 1746
    return-void
.end method

.method public static noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "hostingType"    # Ljava/lang/String;

    .line 1500
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1501
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$1400(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    return-void
.end method

.method public static noteStatusBarExpanding(Z)V
    .locals 1
    .param p0, "expanding"    # Z

    .line 1525
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1526
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$1900(Lnubia/os/IApplicationManager;Z)V

    .line 1527
    return-void
.end method

.method public static noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .line 1495
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1496
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$1300(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 1497
    return-void
.end method

.method public static noteThreadLag(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "tid"    # J
    .param p4, "delay"    # J
    .param p6, "reason"    # Ljava/lang/String;

    .line 2041
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2042
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lnubia/os/ApplicationManager;->access$9300(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 2043
    return-void
.end method

.method public static noteUpdateFunctionState(I)V
    .locals 1
    .param p0, "parameter"    # I

    .line 2108
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2109
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$10400(Lnubia/os/IApplicationManager;I)V

    .line 2110
    return-void
.end method

.method public static noteWakeUp(Ljava/lang/String;I)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 2051
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2052
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$9400(Lnubia/os/IApplicationManager;Ljava/lang/String;I)V

    .line 2053
    return-void
.end method

.method public static noteWindowStateChange(III)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "windowId"    # I
    .param p2, "state"    # I

    .line 1609
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1610
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2}, Lnubia/os/ApplicationManager;->access$3600(Lnubia/os/IApplicationManager;III)V

    .line 1611
    return-void
.end method

.method public static notifyClipChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .line 1668
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1669
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$4800(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    return-void
.end method

.method public static notifyGameSwitchChanged(Z)V
    .locals 1
    .param p0, "gameSwitch"    # Z

    .line 2072
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2073
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$9700(Lnubia/os/IApplicationManager;Z)V

    .line 2074
    return-void
.end method

.method public static registerActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cb"    # Lcn/nubia/mutex/IMutexCallback;

    .line 1787
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1788
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$7200(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    .line 1789
    return-void
.end method

.method public static registerAudioPlayCallback(Lnubia/os/IAudioPlayCallback;)Z
    .locals 1
    .param p0, "cb"    # Lnubia/os/IAudioPlayCallback;

    .line 1850
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1851
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager$Trigger;->registerAudioPlayCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/IAudioPlayCallback;)Z

    move-result v0

    return v0
.end method

.method private static registerAudioPlayCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/IAudioPlayCallback;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "cb"    # Lnubia/os/IAudioPlayCallback;

    .line 1918
    if-eqz p0, :cond_0

    .line 1920
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->registerAudioPlayCallback(Lnubia/os/IAudioPlayCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1921
    :catch_0
    move-exception v0

    .line 1922
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lnubia/os/ApplicationManager;->access$8000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1923
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1927
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static registerCallback(Lnubia/os/ITaskCallback;J)V
    .locals 1
    .param p0, "cb"    # Lnubia/os/ITaskCallback;
    .param p1, "flag"    # J

    .line 1458
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1459
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2}, Lnubia/os/ApplicationManager;->access$600(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;J)V

    .line 1460
    return-void
.end method

.method public static registerCallback(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V
    .locals 1
    .param p0, "cb"    # Lnubia/os/ITaskCallback;
    .param p1, "flag"    # J
    .param p3, "filter"    # Landroid/os/Bundle;

    .line 1463
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1464
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$700(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V

    .line 1465
    return-void
.end method

.method public static registerFreezeChangeCallback(Lnubia/os/IFreezeChangeCallback;)V
    .locals 1
    .param p0, "callback"    # Lnubia/os/IFreezeChangeCallback;

    .line 2016
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 2017
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->registerFreezeChangeCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/IFreezeChangeCallback;)V

    .line 2018
    return-void
.end method

.method public static setAppLearningCallback(Lnubia/os/IAppLearningCallback;)V
    .locals 1
    .param p0, "callback"    # Lnubia/os/IAppLearningCallback;

    .line 1549
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1550
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$2400(Lnubia/os/IApplicationManager;Lnubia/os/IAppLearningCallback;)V

    .line 1551
    return-void
.end method

.method public static setAppLearningProcessList(Ljava/util/List;)V
    .locals 1
    .param p0, "processList"    # Ljava/util/List;

    .line 1573
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1574
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$2900(Lnubia/os/IApplicationManager;Ljava/util/List;)V

    .line 1575
    return-void
.end method

.method public static setFreezeCallback(Lnubia/os/IFreezeCallback;)V
    .locals 1
    .param p0, "callback"    # Lnubia/os/IFreezeCallback;

    .line 1544
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1545
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$2300(Lnubia/os/IApplicationManager;Lnubia/os/IFreezeCallback;)V

    .line 1546
    return-void
.end method

.method public static setLightEffectState(II)Z
    .locals 1
    .param p0, "type"    # I
    .param p1, "state"    # I

    .line 1845
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1846
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager$Trigger;->setLightEffectStateImpl(Lnubia/os/IApplicationManager;II)Z

    move-result v0

    return v0
.end method

.method private static setLightEffectStateImpl(Lnubia/os/IApplicationManager;II)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "type"    # I
    .param p2, "state"    # I

    .line 1905
    if-eqz p0, :cond_0

    .line 1907
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->setLightEffectState(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1908
    :catch_0
    move-exception v0

    .line 1909
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lnubia/os/ApplicationManager;->access$8000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1910
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1914
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setNetworkFirewall(ILjava/lang/String;Z)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enableNetwork"    # Z

    .line 1672
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1673
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1, p2}, Lnubia/os/ApplicationManager;->access$4900(Lnubia/os/IApplicationManager;ILjava/lang/String;Z)V

    .line 1674
    return-void
.end method

.method public static smallPermissionDialogClick(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1774
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1775
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$7000(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V

    .line 1776
    return-void
.end method

.method public static startGameBoxIfGamekeyOn(J)Z
    .locals 1
    .param p0, "delay"    # J

    .line 1996
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1997
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$8800(Lnubia/os/IApplicationManager;J)Z

    move-result v0

    return v0
.end method

.method public static startOrStopGameBox(Z)Z
    .locals 1
    .param p0, "gameSwitch"    # Z

    .line 1991
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1992
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$8700(Lnubia/os/IApplicationManager;Z)Z

    move-result v0

    return v0
.end method

.method public static unfreezeWhenKill(I)V
    .locals 1
    .param p0, "pid"    # I

    .line 1664
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1665
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$4700(Lnubia/os/IApplicationManager;I)V

    .line 1666
    return-void
.end method

.method public static uninstallEvent(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1764
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1765
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$6800(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V

    .line 1766
    return-void
.end method

.method public static unregisterActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cb"    # Lcn/nubia/mutex/IMutexCallback;

    .line 1793
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1794
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$7300(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    .line 1795
    return-void
.end method

.method public static unregisterAudioPlayCallback(Lnubia/os/IAudioPlayCallback;)Z
    .locals 1
    .param p0, "cb"    # Lnubia/os/IAudioPlayCallback;

    .line 1855
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1856
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager$Trigger;->unregisterAudioPlayCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/IAudioPlayCallback;)Z

    move-result v0

    return v0
.end method

.method private static unregisterAudioPlayCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/IAudioPlayCallback;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "cb"    # Lnubia/os/IAudioPlayCallback;

    .line 1931
    if-eqz p0, :cond_0

    .line 1933
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->unregisterAudioPlayCallback(Lnubia/os/IAudioPlayCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1934
    :catch_0
    move-exception v0

    .line 1935
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lnubia/os/ApplicationManager;->access$8000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1936
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1940
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static unregisterCallback(Lnubia/os/ITaskCallback;)V
    .locals 1
    .param p0, "cb"    # Lnubia/os/ITaskCallback;

    .line 1468
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1469
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$800(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;)V

    .line 1470
    return-void
.end method

.method public static updateHighlightsCoordinate(I)V
    .locals 1
    .param p0, "gameType"    # I

    .line 1473
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 1474
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$900(Lnubia/os/IApplicationManager;I)V

    .line 1475
    return-void
.end method
