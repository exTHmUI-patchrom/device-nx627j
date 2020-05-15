.class Lcom/android/server/fingerprint/FingerprintService$11;
.super Lcom/android/server/fingerprint/AuthenticationClient;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;

.field final synthetic val$opPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;Ljava/lang/String;)V
    .locals 16
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "halDeviceId"    # J
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "targetUserId"    # I
    .param p8, "groupId"    # I
    .param p9, "opId"    # J
    .param p11, "restricted"    # Z
    .param p12, "owner"    # Ljava/lang/String;
    .param p13, "bundle"    # Landroid/os/Bundle;
    .param p14, "dialogReceiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;
    .param p15, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v15, p0

    .line 1113
    move-object/from16 v14, p1

    iput-object v14, v15, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move-object/from16 v0, p16

    iput-object v0, v15, Lcom/android/server/fingerprint/FingerprintService$11;->val$opPackageName:Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    move/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    invoke-direct/range {v0 .. v14}, Lcom/android/server/fingerprint/AuthenticationClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V

    return-void
.end method


# virtual methods
.method public getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprintServiceHandler()Landroid/os/Handler;
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public handleFailedAttempt()I
    .locals 6

    .line 1134
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1135
    return v1

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$11;->val$opPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    return v1

    .line 1142
    :cond_1
    const-string v0, "com.android.settings"

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$11;->val$opPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1143
    return v1

    .line 1146
    :cond_2
    const-string v0, "com.android.camera"

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$11;->val$opPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1147
    return v1

    .line 1150
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1151
    .local v0, "currentUser":I
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1152
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1000(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1153
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v2

    .line 1154
    .local v2, "lockoutMode":I
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1155
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    move-result-object v3

    iget v5, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    add-int/2addr v5, v4

    iput v5, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    goto :goto_0

    .line 1156
    :cond_4
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    move-result-object v3

    if-eqz v3, :cond_5

    if-ne v2, v4, :cond_5

    .line 1157
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    move-result-object v3

    iget v5, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    add-int/2addr v5, v4

    iput v5, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    .line 1161
    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    .line 1162
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1300(Lcom/android/server/fingerprint/FingerprintService;I)V

    .line 1163
    return v2

    .line 1165
    :cond_6
    return v1
.end method

.method public notifyUserActivity()V
    .locals 1

    .line 1181
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$600(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 1182
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1117
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/TaskStackListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    goto :goto_0

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Could not register task stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1121
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1126
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/TaskStackListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    goto :goto_0

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Could not unregister task stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1130
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public resetFailedAttempts()V
    .locals 3

    .line 1170
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    .line 1171
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 1170
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttemptsForUser(ZI)V

    .line 1172
    return-void
.end method
