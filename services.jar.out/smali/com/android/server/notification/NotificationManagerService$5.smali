.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 1030
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 1033
    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1034
    .local v3, "action":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1035
    return-void

    .line 1038
    :cond_0
    const/4 v0, 0x0

    .line 1039
    .local v0, "queryRestart":Z
    const/4 v4, 0x0

    .line 1040
    .local v4, "queryRemove":Z
    const/4 v5, 0x0

    .line 1041
    .local v5, "packageChanged":Z
    const/4 v6, 0x1

    .line 1042
    .local v6, "cancelNotifications":Z
    const/4 v7, 0x0

    .line 1043
    .local v7, "hideNotifications":Z
    const/4 v8, 0x0

    .line 1044
    .local v8, "unhideNotifications":Z
    const/16 v20, 0x5

    .line 1046
    .local v20, "reason":I
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    .line 1047
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v4, v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    .line 1048
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    .line 1049
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v5, v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 1050
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v0, v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1051
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.PACKAGES_SUSPENDED"

    .line 1052
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 1053
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 1138
    :cond_1
    move-object/from16 v27, v3

    goto/16 :goto_a

    .line 1054
    :cond_2
    :goto_0
    move/from16 v21, v5

    move v5, v0

    .line 1054
    .end local v0    # "queryRestart":Z
    .local v5, "queryRestart":Z
    .local v21, "packageChanged":Z
    const-string v0, "android.intent.extra.user_handle"

    const/4 v9, -0x1

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1056
    .local v15, "changeUserId":I
    const/4 v10, 0x0

    .line 1057
    .local v10, "pkgList":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1058
    .local v11, "uidList":[I
    const/4 v14, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_3

    const-string v0, "android.intent.extra.REPLACING"

    .line 1059
    invoke-virtual {v2, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v14

    goto :goto_1

    :cond_3
    move v0, v13

    :goto_1
    move v12, v0

    .line 1060
    .local v12, "removingPackage":Z
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "NotificationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " removing="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_4
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1062
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1063
    .end local v10    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    const-string v9, "android.intent.extra.changed_uid_list"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v11

    .line 1118
    .end local v4    # "queryRemove":Z
    .end local v11    # "uidList":[I
    .local v3, "uidList":[I
    .local v25, "queryRemove":Z
    .local v27, "action":Ljava/lang/String;
    :goto_2
    move-object/from16 v27, v3

    move/from16 v25, v4

    move-object v3, v11

    const/4 v14, 0x0

    goto/16 :goto_6

    .line 1064
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v25    # "queryRemove":Z
    .end local v27    # "action":Ljava/lang/String;
    .local v3, "action":Ljava/lang/String;
    .restart local v4    # "queryRemove":Z
    .restart local v10    # "pkgList":[Ljava/lang/String;
    .restart local v11    # "uidList":[I
    :cond_5
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1065
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1066
    .end local v10    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1067
    const/4 v7, 0x1

    goto :goto_2

    .line 1068
    .end local v0    # "pkgList":[Ljava/lang/String;
    .restart local v10    # "pkgList":[Ljava/lang/String;
    :cond_6
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1069
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1070
    .end local v10    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1071
    const/4 v8, 0x1

    goto :goto_2

    .line 1072
    .end local v0    # "pkgList":[Ljava/lang/String;
    .restart local v10    # "pkgList":[Ljava/lang/String;
    :cond_7
    if-eqz v5, :cond_8

    .line 1073
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1074
    .end local v10    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    new-array v9, v14, [I

    const-string v10, "android.intent.extra.UID"

    const/4 v13, -0x1

    invoke-virtual {v2, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x0

    aput v10, v9, v13

    move-object v11, v9

    goto :goto_2

    .line 1076
    .end local v0    # "pkgList":[Ljava/lang/String;
    .restart local v10    # "pkgList":[Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 1077
    .local v9, "uri":Landroid/net/Uri;
    if-nez v9, :cond_9

    .line 1078
    return-void

    .line 1080
    :cond_9
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 1081
    .local v13, "pkgName":Ljava/lang/String;
    if-nez v13, :cond_a

    .line 1082
    return-void

    .line 1086
    :cond_a
    const-string v0, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v4

    const-string v4, "action="

    .line 1086
    .end local v4    # "queryRemove":Z
    .restart local v25    # "queryRemove":Z
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pkgName= "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "com.tencent.mm"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "com.tencent.tmgp.sgame"

    .line 1088
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1089
    :cond_b
    const/4 v6, 0x0

    .line 1090
    const-string v0, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "not cancel action="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " pkgName= "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_c
    if-eqz v21, :cond_10

    .line 1097
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1099
    const/4 v4, -0x1

    if-eq v15, v4, :cond_d

    .line 1097
    move v4, v15

    goto :goto_3

    .line 1100
    :cond_d
    nop

    .line 1097
    const/4 v4, 0x0

    :goto_3
    invoke-interface {v0, v13, v4}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    .local v0, "enabled":I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_e

    if-nez v0, :cond_f

    .line 1103
    :cond_e
    const/4 v0, 0x0

    .line 1113
    .end local v6    # "cancelNotifications":Z
    .local v0, "cancelNotifications":Z
    move v6, v0

    .line 1113
    .end local v0    # "cancelNotifications":Z
    .restart local v6    # "cancelNotifications":Z
    :cond_f
    :goto_4
    goto :goto_5

    .line 1111
    :catch_0
    move-exception v0

    goto :goto_5

    .line 1105
    :catch_1
    move-exception v0

    .line 1108
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_f

    .line 1109
    const-string v4, "NotificationService"

    const-string v14, "Exception trying to look up app enabled setting"

    invoke-static {v4, v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1109
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_4

    .line 1115
    :cond_10
    :goto_5
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v0, v14

    .line 1116
    .end local v10    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    new-array v10, v4, [I

    const-string v4, "android.intent.extra.UID"

    move-object/from16 v27, v3

    const/4 v3, -0x1

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1116
    .end local v3    # "action":Ljava/lang/String;
    .restart local v27    # "action":Ljava/lang/String;
    aput v3, v10, v14

    move-object v11, v10

    .line 1118
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v13    # "pkgName":Ljava/lang/String;
    move-object v3, v11

    .line 1118
    .end local v11    # "uidList":[I
    .local v3, "uidList":[I
    :goto_6
    if-eqz v0, :cond_15

    array-length v4, v0

    if-lez v4, :cond_15

    .line 1119
    array-length v4, v0

    move v13, v14

    :goto_7
    if-ge v13, v4, :cond_15

    aget-object v22, v0, v13

    .line 1120
    .local v22, "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_12

    .line 1121
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1500()I

    move-result v10

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1600()I

    move-result v11

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-nez v5, :cond_11

    const/16 v19, 0x1

    goto :goto_8

    :cond_11
    move/from16 v19, v14

    :goto_8
    const/16 v23, 0x0

    move/from16 v28, v12

    move-object/from16 v12, v22

    .end local v12    # "removingPackage":Z
    .local v28, "removingPackage":Z
    move/from16 v24, v13

    move/from16 v29, v14

    move-object/from16 v13, v16

    const/16 v26, 0x1

    move/from16 v14, v17

    move/from16 v30, v15

    move/from16 v15, v18

    .line 1121
    .end local v15    # "changeUserId":I
    .local v30, "changeUserId":I
    move/from16 v16, v19

    move/from16 v17, v30

    move/from16 v18, v20

    move-object/from16 v19, v23

    invoke-virtual/range {v9 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto :goto_9

    .line 1123
    .end local v28    # "removingPackage":Z
    .end local v30    # "changeUserId":I
    .restart local v12    # "removingPackage":Z
    .restart local v15    # "changeUserId":I
    :cond_12
    move/from16 v28, v12

    move/from16 v24, v13

    move/from16 v29, v14

    move/from16 v30, v15

    const/16 v26, 0x1

    .line 1123
    .end local v12    # "removingPackage":Z
    .end local v15    # "changeUserId":I
    .restart local v28    # "removingPackage":Z
    .restart local v30    # "changeUserId":I
    if-eqz v7, :cond_13

    .line 1124
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_9

    .line 1125
    :cond_13
    if-eqz v8, :cond_14

    .line 1126
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;)V

    .line 1119
    .end local v22    # "pkgName":Ljava/lang/String;
    :cond_14
    :goto_9
    add-int/lit8 v13, v24, 0x1

    move/from16 v12, v28

    move/from16 v14, v29

    move/from16 v15, v30

    goto :goto_7

    .line 1132
    .end local v28    # "removingPackage":Z
    .end local v30    # "changeUserId":I
    .restart local v12    # "removingPackage":Z
    .restart local v15    # "changeUserId":I
    :cond_15
    move/from16 v28, v12

    move/from16 v30, v15

    .line 1132
    .end local v12    # "removingPackage":Z
    .end local v15    # "changeUserId":I
    .restart local v28    # "removingPackage":Z
    .restart local v30    # "changeUserId":I
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v4

    move/from16 v9, v28

    invoke-virtual {v4, v9, v0, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 1133
    .end local v28    # "removingPackage":Z
    .local v9, "removingPackage":Z
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v4

    invoke-virtual {v4, v9, v0, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 1134
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v4

    invoke-virtual {v4, v9, v0, v3}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 1135
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v4

    move/from16 v10, v30

    invoke-virtual {v4, v9, v10, v0, v3}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(ZI[Ljava/lang/String;[I)V

    .line 1136
    .end local v30    # "changeUserId":I
    .local v10, "changeUserId":I
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 1138
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v3    # "uidList":[I
    .end local v9    # "removingPackage":Z
    .end local v10    # "changeUserId":I
    move v0, v5

    move/from16 v5, v21

    move/from16 v4, v25

    .line 1138
    .end local v21    # "packageChanged":Z
    .end local v25    # "queryRemove":Z
    .local v0, "queryRestart":Z
    .restart local v4    # "queryRemove":Z
    .local v5, "packageChanged":Z
    :goto_a
    return-void
.end method
