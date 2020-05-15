.class public final Lcom/android/internal/telephony/CarrierAppUtils;
.super Ljava/lang/Object;
.source "CarrierAppUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarrierAppUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/content/ContentResolver;I)V
    .locals 9
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "userId"    # I

    const-class v0, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 106
    .local v1, "config":Lcom/android/server/SystemConfig;
    nop

    .line 107
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierApps()Landroid/util/ArraySet;

    move-result-object v7

    .line 110
    .local v7, "systemCarrierAppsDisabledUntilUsed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    nop

    .line 111
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;

    move-result-object v8

    .line 112
    .local v8, "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILandroid/util/ArraySet;Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit v0

    return-void

    .line 104
    .end local v1    # "config":Lcom/android/server/SystemConfig;
    .end local v7    # "systemCarrierAppsDisabledUntilUsed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local p0    # "callingPackage":Ljava/lang/String;
    .end local p1    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local p2    # "contentResolver":Landroid/content/ContentResolver;
    .end local p3    # "userId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I)V
    .locals 9
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "userId"    # I

    const-class v0, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v0

    .line 79
    :try_start_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 80
    .local v1, "config":Lcom/android/server/SystemConfig;
    nop

    .line 81
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierApps()Landroid/util/ArraySet;

    move-result-object v7

    .line 82
    .local v7, "systemCarrierAppsDisabledUntilUsed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    nop

    .line 83
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;

    move-result-object v8

    .line 84
    .local v8, "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILandroid/util/ArraySet;Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit v0

    return-void

    .line 78
    .end local v1    # "config":Lcom/android/server/SystemConfig;
    .end local v7    # "systemCarrierAppsDisabledUntilUsed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local p0    # "callingPackage":Ljava/lang/String;
    .end local p1    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local p2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local p3    # "contentResolver":Landroid/content/ContentResolver;
    .end local p4    # "userId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILandroid/util/ArraySet;Landroid/util/ArrayMap;)V
    .locals 23
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/IPackageManager;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/content/ContentResolver;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .local p5, "systemCarrierAppsDisabledUntilUsed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p6, "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    .line 124
    move-object/from16 v11, p5

    invoke-static {v7, v10, v11}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;ILandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v12

    .line 126
    .local v12, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v12, :cond_12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    move-object/from16 v13, p6

    move-object/from16 v21, v12

    goto/16 :goto_f

    .line 130
    :cond_0
    move-object/from16 v13, p6

    invoke-static {v7, v10, v13}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAssociatedAppsHelper(Landroid/content/pm/IPackageManager;ILandroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object v14

    .line 135
    .local v14, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 137
    .local v15, "enabledCarrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "carrier_apps_handled"

    const/4 v6, 0x0

    invoke-static {v9, v0, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    move/from16 v16, v0

    .line 141
    .local v16, "hasRunOnce":Z
    :try_start_0
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    move-object v4, v1

    .line 142
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v3, v1

    .line 143
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 144
    :try_start_1
    invoke-virtual {v8, v3}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v1, v5, :cond_2

    move v1, v5

    goto :goto_2

    .line 261
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    move-object/from16 v21, v12

    goto/16 :goto_d

    .line 144
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    move v1, v6

    :goto_2
    move/from16 v17, v1

    .line 148
    .local v17, "hasPrivileges":Z
    :try_start_2
    invoke-interface {v7, v3, v5}, Landroid/content/pm/IPackageManager;->setSystemAppHiddenUntilInstalled(Ljava/lang/String;Z)V

    .line 149
    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v1

    .line 150
    .local v2, "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v2, :cond_3

    .line 151
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v18

    .line 152
    .local v19, "associatedApp":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v6, v19

    iget-object v5, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .end local v19    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    .local v6, "associatedApp":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v20, v0

    const/4 v0, 0x1

    invoke-interface {v7, v5, v0}, Landroid/content/pm/IPackageManager;->setSystemAppHiddenUntilInstalled(Ljava/lang/String;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 156
    .end local v6    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    nop

    .line 151
    move-object/from16 v0, v20

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_3

    .line 159
    :cond_3
    move-object/from16 v20, v0

    const/high16 v0, 0x800000

    if-eqz v17, :cond_a

    .line 162
    :try_start_4
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    const/4 v6, 0x4

    if-nez v1, :cond_6

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->enabledSetting:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v1, :cond_5

    :try_start_5
    iget v1, v4, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-eq v1, v6, :cond_5

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    and-int/2addr v1, v0

    if-nez v1, :cond_4

    goto :goto_4

    .line 183
    :cond_4
    move-object v0, v2

    move-object v8, v3

    move-object v11, v4

    move-object/from16 v21, v12

    move v12, v6

    goto :goto_5

    .line 168
    :cond_5
    :goto_4
    :try_start_6
    const-string v1, "CarrierAppUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): ENABLED for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v5, 0x1

    invoke-interface {v7, v3, v5, v10}, Landroid/content/pm/IPackageManager;->setSystemAppInstallState(Ljava/lang/String;ZI)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 174
    const/4 v6, 0x1

    const/16 v18, 0x1

    move-object v1, v7

    move-object v0, v2

    move-object v2, v3

    .end local v2    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v0, "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object v8, v3

    move v3, v6

    .end local v3    # "packageName":Ljava/lang/String;
    .local v8, "packageName":Ljava/lang/String;
    move-object v6, v4

    move/from16 v4, v18

    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    move v5, v10

    move-object v11, v6

    move-object/from16 v21, v12

    const/4 v12, 0x4

    move-object/from16 v6, p0

    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v11, "ai":Landroid/content/pm/ApplicationInfo;
    .local v21, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_7
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_5

    .line 183
    .end local v0    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v21    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v2    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_6
    move-object v0, v2

    move-object v8, v3

    move-object v11, v4

    move-object/from16 v21, v12

    move v12, v6

    .end local v2    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v0    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v21    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_5
    if-eqz v0, :cond_9

    .line 184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    move-object v5, v1

    .line 185
    .local v5, "associatedApp":Landroid/content/pm/ApplicationInfo;
    iget v1, v5, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-eqz v1, :cond_8

    iget v1, v5, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-eq v1, v12, :cond_8

    iget v1, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_7

    goto :goto_7

    .line 204
    .end local v5    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    :cond_7
    move-object/from16 v19, v6

    const/4 v12, 0x1

    goto :goto_8

    .line 191
    .restart local v5    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    :cond_8
    :goto_7
    const-string v1, "CarrierAppUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update associated state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): ENABLED for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v7, v1, v4, v10}, Landroid/content/pm/IPackageManager;->setSystemAppInstallState(Ljava/lang/String;ZI)Z

    .line 197
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v18, 0x1

    move-object v1, v7

    move v12, v4

    move/from16 v4, v18

    move-object/from16 v18, v5

    move v5, v10

    .end local v5    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    .local v18, "associatedApp":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v19, v6

    move-object/from16 v6, p0

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 204
    .end local v18    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    :goto_8
    nop

    .line 184
    move-object/from16 v6, v19

    const/4 v12, 0x4

    goto :goto_6

    .line 208
    :cond_9
    const/4 v12, 0x1

    iget-object v1, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 212
    .end local v0    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v21    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v2    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_a
    move-object v0, v2

    move-object v8, v3

    move-object v11, v4

    move-object/from16 v21, v12

    const/4 v12, 0x1

    .end local v2    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v0    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v21    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, v11, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-nez v1, :cond_b

    iget v1, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    .line 216
    const-string v1, "CarrierAppUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): DISABLED_UNTIL_USED for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v1, 0x0

    invoke-interface {v7, v8, v1, v10}, Landroid/content/pm/IPackageManager;->setSystemAppInstallState(Ljava/lang/String;ZI)Z

    .line 227
    :cond_b
    if-nez v16, :cond_e

    .line 228
    if-eqz v0, :cond_e

    .line 229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 230
    .local v2, "associatedApp":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-nez v3, :cond_c

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-eqz v3, :cond_d

    .line 234
    const-string v3, "CarrierAppUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update associated state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): DISABLED_UNTIL_USED for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v7, v3, v5, v10}, Landroid/content/pm/IPackageManager;->setSystemAppInstallState(Ljava/lang/String;ZI)Z

    .end local v2    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    goto :goto_a

    .line 242
    :cond_c
    const/high16 v4, 0x800000

    :cond_d
    const/4 v5, 0x0

    :goto_a
    goto :goto_9

    .line 246
    .end local v0    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "hasPrivileges":Z
    :cond_e
    :goto_b
    const/4 v5, 0x0

    .line 141
    move v6, v5

    move v5, v12

    move-object/from16 v0, v20

    move-object/from16 v12, v21

    move-object/from16 v8, p2

    move-object/from16 v11, p5

    goto/16 :goto_1

    .line 249
    .end local v21    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_f
    move-object/from16 v21, v12

    move v12, v5

    .end local v12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v21    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v16, :cond_10

    .line 250
    const-string v0, "carrier_apps_handled"

    invoke-static {v9, v0, v12, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_c

    .line 261
    :catch_1
    move-exception v0

    goto :goto_d

    .line 254
    :cond_10
    :goto_c
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 257
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 258
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 259
    invoke-interface {v7, v0, v10}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 263
    .end local v0    # "packageNames":[Ljava/lang/String;
    :cond_11
    goto :goto_e

    .line 261
    .end local v21    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_2
    move-exception v0

    move-object/from16 v21, v12

    .line 262
    .end local v12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v21    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_d
    const-string v1, "CarrierAppUtils"

    const-string v2, "Could not reach PackageManager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void

    .line 127
    .end local v14    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    .end local v15    # "enabledCarrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "hasRunOnce":Z
    .end local v21    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_12
    move-object/from16 v13, p6

    move-object/from16 v21, v12

    .end local v12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v21    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_f
    return-void
.end method

.method private static getApplicationInfoIfSystemApp(Landroid/content/pm/IPackageManager;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 377
    const v0, 0x20008000

    :try_start_0
    invoke-interface {p0, p2, v0, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 380
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 381
    return-object v0

    .line 385
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CarrierAppUtils"

    const-string v2, "Could not reach PackageManager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultCarrierAppCandidates(Landroid/content/pm/IPackageManager;I)Ljava/util/List;
    .locals 2
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 312
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierApps()Landroid/util/ArraySet;

    move-result-object v0

    .line 313
    .local v0, "systemCarrierAppsDisabledUntilUsed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;ILandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;ILandroid/util/ArraySet;)Ljava/util/List;
    .locals 5
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 321
    .local p2, "systemCarrierAppsDisabledUntilUsed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 322
    return-object v0

    .line 325
    :cond_0
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 326
    .local v1, "size":I
    if-nez v1, :cond_1

    .line 327
    return-object v0

    .line 330
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 332
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 333
    .local v3, "packageName":Ljava/lang/String;
    nop

    .line 334
    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(Landroid/content/pm/IPackageManager;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 335
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_2

    .line 336
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method public static getDefaultCarrierApps(Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)Ljava/util/List;
    .locals 6
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "Landroid/telephony/TelephonyManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 276
    invoke-static {p0, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidates(Landroid/content/pm/IPackageManager;I)Ljava/util/List;

    move-result-object v0

    .line 277
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 284
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 285
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 286
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 287
    .local v4, "packageName":Ljava/lang/String;
    nop

    .line 288
    invoke-virtual {p1, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 290
    .local v5, "hasPrivileges":Z
    :goto_1
    if-nez v5, :cond_2

    .line 291
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 284
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "hasPrivileges":Z
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 295
    .end local v1    # "i":I
    :cond_3
    return-object v0

    .line 278
    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getDefaultCarrierAssociatedAppsHelper(Landroid/content/pm/IPackageManager;ILandroid/util/ArrayMap;)Ljava/util/Map;
    .locals 10
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation

    .line 346
    .local p2, "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 347
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 348
    .local v1, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 349
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 350
    .local v4, "carrierAppPackage":Ljava/lang/String;
    nop

    .line 351
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 352
    .local v5, "associatedAppPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v6, v2

    .local v6, "j":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 353
    nop

    .line 355
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 354
    invoke-static {p0, p1, v7}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(Landroid/content/pm/IPackageManager;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 358
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v8

    if-nez v8, :cond_1

    .line 359
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 360
    .local v8, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v8, :cond_0

    .line 361
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    .line 362
    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_0
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 348
    .end local v4    # "carrierAppPackage":Ljava/lang/String;
    .end local v5    # "associatedAppPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method
