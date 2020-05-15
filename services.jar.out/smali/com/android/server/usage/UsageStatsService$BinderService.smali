.class final Lcom/android/server/usage/UsageStatsService$BinderService;
.super Landroid/app/usage/IUsageStatsManager$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/IUsageStatsManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "x1"    # Lcom/android/server/usage/UsageStatsService$1;

    .line 686
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 726
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 727
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 729
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 734
    return-void

    .line 731
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cannot query eventsfor package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 719
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    return-void

    .line 722
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method private hasObserverPermission(Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 705
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 706
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->access$500(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    .line 707
    .local v1, "dpmInternal":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_2

    if-eqz v1, :cond_0

    const/4 v3, -0x1

    .line 709
    invoke-virtual {v1, v0, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 714
    :cond_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.OBSERVE_APP_USAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 712
    :cond_2
    :goto_1
    return v2
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 689
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 690
    .local v0, "callingUid":I
    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 691
    return v1

    .line 693
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3, v0, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    .line 695
    .local v2, "mode":I
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 698
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    return v1

    .line 701
    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    return v1
.end method

.method private isCallingUidSystem()Z
    .locals 2

    .line 737
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 738
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1131
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/usage/UsageStatsService;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1133
    return-void
.end method

.method public getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 966
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 968
    .local v0, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 969
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "getAppStandbyBucket"

    const/4 v8, 0x0

    .line 968
    move v3, v0

    move v4, p3

    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move p3, v1

    .line 973
    nop

    .line 974
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 976
    .local v1, "packageUid":I
    if-eq v1, v0, :cond_1

    .line 977
    invoke-direct {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 978
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Don\'t have permission to query app standby bucket"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 982
    :cond_1
    :goto_0
    if-ltz v1, :cond_2

    .line 986
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2, v0, p3}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v8

    .line 988
    .local v8, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v9, v2

    .line 990
    .local v9, "token":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 991
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 990
    move-object v3, p1

    move v4, p3

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 993
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 990
    return v2

    .line 993
    :catchall_0
    move-exception v2

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 983
    .end local v8    # "obfuscateInstantApps":Z
    .end local v9    # "token":J
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get standby bucket for non existent package ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 971
    .end local v1    # "packageUid":I
    :catch_0
    move-exception v1

    .line 972
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 8
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 1043
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1045
    .local v2, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1046
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getAppStandbyBucket"

    const/4 v7, 0x0

    .line 1045
    move v3, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move p2, v0

    .line 1050
    nop

    .line 1051
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1057
    .local v0, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1058
    invoke-virtual {v3, p2}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBuckets(I)Ljava/util/List;

    move-result-object v3

    .line 1059
    .local v3, "standbyBucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    if-nez v3, :cond_0

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    goto :goto_0

    .line 1060
    :cond_0
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1062
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1059
    return-object v4

    .line 1062
    .end local v3    # "standbyBucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1052
    .end local v0    # "token":J
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Don\'t have permission to query app standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAppInactive(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 922
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 923
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "isAppInactive"

    const/4 v7, 0x0

    .line 922
    move v3, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move p2, v0

    .line 926
    nop

    .line 927
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 928
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 927
    invoke-static {v0, v1, p2}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v0

    .line 929
    .local v0, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v7, v1

    .line 931
    .local v7, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 933
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 931
    move-object v2, p1

    move v3, p2

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFilteredOrParoled(Ljava/lang/String;IJZ)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 931
    return v1

    .line 935
    :catchall_0
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 924
    .end local v0    # "obfuscateInstantApps":Z
    .end local v7    # "token":J
    :catch_0
    move-exception v0

    .line 925
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onCarrierPrivilegedAppsChanged()V
    .locals 3

    .line 1123
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BIND_CARRIER_SERVICES"

    const-string/jumbo v2, "onCarrierPrivilegedAppsChanged can only be called by privileged apps."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->clearCarrierPrivilegedApps()V

    .line 1127
    return-void
.end method

.method public queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 14
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    .line 796
    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 797
    return-object v3

    .line 800
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 801
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v12, v4

    .line 803
    .local v12, "token":J
    :try_start_0
    iget-object v4, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 804
    move v5, v11

    move v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsService;->queryConfigurationStats(IIJJ)Ljava/util/List;

    move-result-object v0

    .line 806
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    if-eqz v0, :cond_1

    .line 807
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    return-object v3

    .line 810
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    :cond_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 811
    nop

    .line 812
    return-object v3

    .line 810
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 14
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    .line 818
    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 819
    return-object v3

    .line 822
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 823
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v12, v4

    .line 825
    .local v12, "token":J
    :try_start_0
    iget-object v4, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 826
    move v5, v11

    move v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsService;->queryEventStats(IIJJ)Ljava/util/List;

    move-result-object v0

    .line 828
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/EventStats;>;"
    if-eqz v0, :cond_1

    .line 829
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 829
    return-object v3

    .line 832
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/EventStats;>;"
    :cond_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 833
    nop

    .line 834
    return-object v3

    .line 832
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 14
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    move-object v1, p0

    .line 839
    move-object/from16 v2, p5

    invoke-direct {v1, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    const/4 v0, 0x0

    return-object v0

    .line 843
    :cond_0
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 844
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 843
    invoke-static {v0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v3

    .line 846
    .local v3, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 847
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    move-wide v12, v5

    .line 849
    .local v12, "token":J
    :try_start_0
    iget-object v5, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v6, v4

    move-wide v7, p1

    move-wide/from16 v9, p3

    move v11, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJZ)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    return-object v0

    .line 852
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 14
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    move-object v1, p0

    .line 859
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 860
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 862
    .local v10, "callingUserId":I
    move-object/from16 v11, p5

    invoke-direct {v1, v11}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 863
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v12, v3

    .line 865
    .local v12, "token":J
    :try_start_0
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v4, v10

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-object v9, v11

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 865
    return-object v0

    .line 868
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 14
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "userId"    # I
    .param p6, "pkg"    # Ljava/lang/String;
    .param p7, "callingPackage"    # Ljava/lang/String;

    move-object v1, p0

    .line 900
    move-object/from16 v9, p7

    invoke-direct {v1, v9}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    const/4 v0, 0x0

    return-object v0

    .line 903
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move/from16 v10, p5

    if-eq v10, v0, :cond_1

    .line 904
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "No permission to query usage stats for this user"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :cond_1
    move-object/from16 v11, p6

    invoke-direct {v1, v11}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 910
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v12, v2

    .line 912
    .local v12, "token":J
    :try_start_0
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v3, v10

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object v8, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 912
    return-object v0

    .line 915
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 14
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "userId"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;

    move-object v1, p0

    .line 875
    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    const/4 v0, 0x0

    return-object v0

    .line 879
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move/from16 v10, p5

    if-eq v10, v0, :cond_1

    .line 880
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v4, "No permission to query usage stats for this user"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :cond_1
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 886
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 885
    invoke-static {v0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v11

    .line 888
    .local v11, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v12, v3

    .line 890
    .local v12, "token":J
    :try_start_0
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v4, v10

    move-wide v5, p1

    move-wide/from16 v7, p3

    move v9, v11

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJZ)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 890
    return-object v0

    .line 893
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 16
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 744
    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 745
    return-object v3

    .line 748
    :cond_0
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 749
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 748
    invoke-static {v0, v4, v5}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v4

    .line 751
    .local v4, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 752
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    move-wide v14, v6

    .line 754
    .local v14, "token":J
    :try_start_0
    iget-object v6, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v7, v5

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move v13, v4

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object v0

    .line 756
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v0, :cond_1

    .line 757
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 757
    return-object v3

    .line 760
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 761
    nop

    .line 762
    return-object v3

    .line 760
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryUsageStatsByUserId(IIJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 16
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .param p7, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 772
    move-object/from16 v2, p7

    invoke-direct {v1, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 773
    return-object v3

    .line 776
    :cond_0
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 777
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 776
    invoke-static {v0, v4, v5}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v4

    .line 779
    .local v4, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    move-wide v14, v5

    .line 781
    .local v14, "token":J
    :try_start_0
    iget-object v6, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move/from16 v7, p1

    move/from16 v8, p2

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move v13, v4

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object v0

    .line 783
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v0, :cond_1

    .line 784
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 784
    return-object v3

    .line 787
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 788
    nop

    .line 789
    return-object v3

    .line 787
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 15
    .param p1, "observerId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "timeLimitMs"    # J
    .param p5, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p6, "callingPackage"    # Ljava/lang/String;

    move-object v1, p0

    move-object/from16 v10, p2

    .line 1164
    move-object/from16 v11, p6

    invoke-direct {v1, v11}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1168
    if-eqz v10, :cond_1

    array-length v0, v10

    if-eqz v0, :cond_1

    .line 1171
    if-eqz p5, :cond_0

    .line 1174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1175
    .local v12, "callingUid":I
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 1176
    .local v13, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v8, v2

    .line 1178
    .local v8, "token":J
    :try_start_0
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, v12

    move/from16 v4, p1

    move-object v5, v10

    move-wide/from16 v6, p3

    move-wide v10, v8

    move-object/from16 v8, p5

    .end local v8    # "token":J
    .local v10, "token":J
    move v9, v13

    :try_start_1
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1181
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1182
    nop

    .line 1183
    return-void

    .line 1181
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v10    # "token":J
    .restart local v8    # "token":J
    :catchall_1
    move-exception v0

    move-wide v10, v8

    .end local v8    # "token":J
    .restart local v10    # "token":J
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1172
    .end local v10    # "token":J
    .end local v12    # "callingUid":I
    .end local v13    # "userId":I
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "callbackIntent can\'t be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1169
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify at least one package"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1165
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "annotations"    # [Ljava/lang/String;
    .param p5, "action"    # Ljava/lang/String;

    .line 1138
    if-nez p1, :cond_0

    .line 1139
    const-string v0, "UsageStatsService"

    const-string v1, "Event report user selecting a null package"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return-void

    .line 1143
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1144
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 1149
    const/16 v1, 0x9

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 1151
    iput-object p5, v0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 1153
    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 1155
    iput-object p4, v0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 1157
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1158
    return-void
.end method

.method public setAppInactive(Ljava/lang/String;ZI)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    .line 941
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 943
    .local v2, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 944
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "setAppInactive"

    const/4 v7, 0x0

    .line 943
    move v3, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move p3, v0

    .line 948
    nop

    .line 949
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v3, "No permission to change app idle state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 953
    .local v0, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v3, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 954
    .local v3, "appId":I
    if-gez v3, :cond_0

    .line 960
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 954
    return-void

    .line 956
    :cond_0
    :try_start_2
    invoke-static {p1, p2}, Lnubia/os/ApplicationManager$Trigger;->noteAppInactive(Ljava/lang/String;Z)V

    .line 958
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->setAppIdleAsync(Ljava/lang/String;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 960
    .end local v3    # "appId":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 961
    nop

    .line 962
    return-void

    .line 960
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 946
    .end local v0    # "token":J
    :catch_0
    move-exception v0

    .line 947
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAppStandbyBucket(Ljava/lang/String;II)V
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bucket"    # I
    .param p3, "userId"    # I

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 1000
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v3, "No permission to change app standby state"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const/16 v0, 0xa

    if-lt v11, v0, :cond_5

    const/16 v0, 0x32

    if-gt v11, v0, :cond_5

    .line 1007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v12, v0

    .line 1009
    .local v12, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1010
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "setAppStandbyBucket"

    const/4 v9, 0x0

    .line 1009
    move v4, v12

    move/from16 v5, p3

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v13, v0

    .line 1014
    .end local p3    # "userId":I
    .local v13, "userId":I
    nop

    .line 1015
    if-eqz v12, :cond_1

    const/16 v0, 0x7d0

    if-ne v12, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v9, v0

    .line 1016
    .local v9, "shellCaller":Z
    invoke-static {v12}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v14

    .line 1017
    .local v14, "systemCaller":Z
    if-eqz v14, :cond_2

    .line 1018
    const/16 v0, 0x400

    .line 1019
    :goto_2
    move v6, v0

    goto :goto_3

    :cond_2
    const/16 v0, 0x500

    goto :goto_2

    .line 1020
    .local v6, "reason":I
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v7, v2

    .line 1022
    .local v7, "token":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v2, 0x400000

    invoke-virtual {v0, v10, v2, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 1025
    .local v0, "packageUid":I
    if-eq v0, v12, :cond_4

    .line 1028
    if-ltz v0, :cond_3

    .line 1033
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1034
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1033
    move-object v3, v10

    move v4, v13

    move v5, v11

    move/from16 v17, v12

    move/from16 v18, v13

    move-wide v12, v7

    move-wide v7, v15

    .line 1033
    .end local v7    # "token":J
    .end local v13    # "userId":I
    .local v12, "token":J
    .local v17, "callingUid":I
    .local v18, "userId":I
    :try_start_2
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1036
    .end local v0    # "packageUid":I
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1037
    nop

    .line 1038
    return-void

    .line 1029
    .end local v17    # "callingUid":I
    .end local v18    # "userId":I
    .restart local v0    # "packageUid":I
    .restart local v7    # "token":J
    .local v12, "callingUid":I
    .restart local v13    # "userId":I
    :cond_3
    move/from16 v17, v12

    move/from16 v18, v13

    move-wide v12, v7

    .line 1029
    .end local v7    # "token":J
    .end local v13    # "userId":I
    .local v12, "token":J
    .restart local v17    # "callingUid":I
    .restart local v18    # "userId":I
    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot set standby bucket for non existent package ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1026
    .end local v17    # "callingUid":I
    .end local v18    # "userId":I
    .restart local v7    # "token":J
    .local v12, "callingUid":I
    .restart local v13    # "userId":I
    :cond_4
    move/from16 v17, v12

    move/from16 v18, v13

    move-wide v12, v7

    .line 1026
    .end local v7    # "token":J
    .end local v13    # "userId":I
    .local v12, "token":J
    .restart local v17    # "callingUid":I
    .restart local v18    # "userId":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot set your own standby bucket"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1036
    .end local v0    # "packageUid":I
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1036
    .end local v17    # "callingUid":I
    .end local v18    # "userId":I
    .restart local v7    # "token":J
    .local v12, "callingUid":I
    .restart local v13    # "userId":I
    :catchall_1
    move-exception v0

    move/from16 v17, v12

    move/from16 v18, v13

    move-wide v12, v7

    .line 1036
    .end local v7    # "token":J
    .end local v13    # "userId":I
    .local v12, "token":J
    .restart local v17    # "callingUid":I
    .restart local v18    # "userId":I
    :goto_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1012
    .end local v6    # "reason":I
    .end local v9    # "shellCaller":Z
    .end local v14    # "systemCaller":Z
    .end local v17    # "callingUid":I
    .end local v18    # "userId":I
    .local v12, "callingUid":I
    .restart local p3    # "userId":I
    :catch_0
    move-exception v0

    move/from16 v17, v12

    .line 1013
    .end local v12    # "callingUid":I
    .local v0, "re":Landroid/os/RemoteException;
    .restart local v17    # "callingUid":I
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1005
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v17    # "callingUid":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set the standby bucket to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V
    .locals 19
    .param p1, "appBuckets"    # Landroid/content/pm/ParceledListSlice;
    .param p2, "userId"    # I

    move-object/from16 v1, p0

    .line 1068
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v3, "No permission to change app standby state"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v10, v0

    .line 1073
    .local v10, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1074
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "setAppStandbyBucket"

    const/4 v9, 0x0

    .line 1073
    move v4, v10

    move/from16 v5, p2

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v0

    .line 1078
    .end local p2    # "userId":I
    .local v11, "userId":I
    nop

    .line 1079
    if-eqz v10, :cond_1

    const/16 v0, 0x7d0

    if-ne v10, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v12, v0

    .line 1080
    .local v12, "shellCaller":Z
    if-eqz v12, :cond_2

    .line 1081
    const/16 v0, 0x400

    .line 1082
    :goto_2
    move v6, v0

    goto :goto_3

    :cond_2
    const/16 v0, 0x500

    goto :goto_2

    .line 1083
    .local v6, "reason":I
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v13, v2

    .line 1085
    .local v13, "token":J
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1086
    .local v7, "elapsedRealtime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1087
    .local v0, "bucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/AppStandbyInfo;

    move-object v9, v2

    .line 1088
    .local v9, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    iget-object v2, v9, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    move-object v5, v2

    .line 1089
    .local v5, "packageName":Ljava/lang/String;
    iget v2, v9, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    move v4, v2

    .line 1090
    .local v4, "bucket":I
    const/16 v2, 0xa

    if-lt v4, v2, :cond_4

    const/16 v2, 0x32

    if-gt v4, v2, :cond_4

    .line 1096
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v3, 0x400000

    invoke-virtual {v2, v5, v3, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v10, :cond_3

    .line 1100
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    move-object v3, v5

    move/from16 v16, v4

    move v4, v11

    .line 1100
    .end local v4    # "bucket":I
    .local v16, "bucket":I
    move-object/from16 v17, v5

    move/from16 v5, v16

    .line 1100
    .end local v5    # "packageName":Ljava/lang/String;
    .local v17, "packageName":Ljava/lang/String;
    move-object/from16 v18, v9

    move v9, v12

    .line 1100
    .end local v9    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .local v18, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    .line 1102
    .end local v16    # "bucket":I
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    goto :goto_4

    .line 1098
    .restart local v4    # "bucket":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v9    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    :cond_3
    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v9

    .line 1098
    .end local v4    # "bucket":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v9    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v16    # "bucket":I
    .restart local v17    # "packageName":Ljava/lang/String;
    .restart local v18    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot set your own standby bucket"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1092
    .end local v16    # "bucket":I
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v4    # "bucket":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v9    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    :cond_4
    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v9

    .line 1092
    .end local v4    # "bucket":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v9    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v16    # "bucket":I
    .restart local v17    # "packageName":Ljava/lang/String;
    .restart local v18    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot set the standby bucket to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v16    # "bucket":I
    .restart local v4    # "bucket":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1104
    .end local v0    # "bucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    .end local v4    # "bucket":I
    .end local v7    # "elapsedRealtime":J
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    :cond_5
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1105
    nop

    .line 1106
    return-void

    .line 1104
    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1076
    .end local v6    # "reason":I
    .end local v11    # "userId":I
    .end local v12    # "shellCaller":Z
    .end local v13    # "token":J
    .restart local p2    # "userId":I
    :catch_0
    move-exception v0

    .line 1077
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterAppUsageObserver(ILjava/lang/String;)V
    .locals 5
    .param p1, "observerId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1187
    invoke-direct {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1192
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1193
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1195
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v0, p1, v1}, Lcom/android/server/usage/UsageStatsService;->unregisterAppUsageObserver(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1198
    nop

    .line 1199
    return-void

    .line 1197
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1188
    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelistAppTemporarily(Ljava/lang/String;JI)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1112
    .local v0, "reason":Ljava/lang/StringBuilder;
    const-string v1, "from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1114
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1114
    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    .line 1116
    return-void
.end method
