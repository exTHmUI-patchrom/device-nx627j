.class public Landroid/app/admin/SecurityLogTags;
.super Ljava/lang/Object;
.source "SecurityLogTags.java"


# static fields
.field public static final SECURITY_ADB_SHELL_COMMAND:I = 0x33452

.field public static final SECURITY_ADB_SHELL_INTERACTIVE:I = 0x33451

.field public static final SECURITY_ADB_SYNC_RECV:I = 0x33453

.field public static final SECURITY_ADB_SYNC_SEND:I = 0x33454

.field public static final SECURITY_APP_PROCESS_START:I = 0x33455

.field public static final SECURITY_CERT_AUTHORITY_INSTALLED:I = 0x3346d

.field public static final SECURITY_CERT_AUTHORITY_REMOVED:I = 0x3346e

.field public static final SECURITY_CERT_VALIDATION_FAILURE:I = 0x33471

.field public static final SECURITY_CRYPTO_SELF_TEST_COMPLETED:I = 0x3346f

.field public static final SECURITY_KEYGUARD_DISABLED_FEATURES_SET:I = 0x33465

.field public static final SECURITY_KEYGUARD_DISMISSED:I = 0x33456

.field public static final SECURITY_KEYGUARD_DISMISS_AUTH_ATTEMPT:I = 0x33457

.field public static final SECURITY_KEYGUARD_SECURED:I = 0x33458

.field public static final SECURITY_KEY_DESTROYED:I = 0x3346a

.field public static final SECURITY_KEY_GENERATED:I = 0x33468

.field public static final SECURITY_KEY_IMPORTED:I = 0x33469

.field public static final SECURITY_KEY_INTEGRITY_VIOLATION:I = 0x33470

.field public static final SECURITY_LOGGING_STARTED:I = 0x3345b

.field public static final SECURITY_LOGGING_STOPPED:I = 0x3345c

.field public static final SECURITY_LOG_BUFFER_SIZE_CRITICAL:I = 0x3345f

.field public static final SECURITY_MAX_PASSWORD_ATTEMPTS_SET:I = 0x33464

.field public static final SECURITY_MAX_SCREEN_LOCK_TIMEOUT_SET:I = 0x33463

.field public static final SECURITY_MEDIA_MOUNTED:I = 0x3345d

.field public static final SECURITY_MEDIA_UNMOUNTED:I = 0x3345e

.field public static final SECURITY_OS_SHUTDOWN:I = 0x3345a

.field public static final SECURITY_OS_STARTUP:I = 0x33459

.field public static final SECURITY_PASSWORD_COMPLEXITY_SET:I = 0x33461

.field public static final SECURITY_PASSWORD_EXPIRATION_SET:I = 0x33460

.field public static final SECURITY_PASSWORD_HISTORY_LENGTH_SET:I = 0x33462

.field public static final SECURITY_REMOTE_LOCK:I = 0x33466

.field public static final SECURITY_USER_RESTRICTION_ADDED:I = 0x3346b

.field public static final SECURITY_USER_RESTRICTION_REMOVED:I = 0x3346c

.field public static final SECURITY_WIPE_FAILED:I = 0x33467


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeSecurityAdbShellCommand(Ljava/lang/String;)V
    .locals 1
    .param p0, "command"    # Ljava/lang/String;

    .line 117
    const v0, 0x33452

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 118
    return-void
.end method

.method public static writeSecurityAdbShellInteractive()V
    .locals 2

    .line 113
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x33451

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 114
    return-void
.end method

.method public static writeSecurityAdbSyncRecv(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 121
    const v0, 0x33453

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 122
    return-void
.end method

.method public static writeSecurityAdbSyncSend(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 125
    const v0, 0x33454

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 126
    return-void
.end method

.method public static writeSecurityAppProcessStart(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "seinfo"    # Ljava/lang/String;
    .param p6, "sha256"    # Ljava/lang/String;

    .line 129
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const v1, 0x33455

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 130
    return-void
.end method

.method public static writeSecurityCertAuthorityInstalled(ILjava/lang/String;)V
    .locals 3
    .param p0, "success"    # I
    .param p1, "subject"    # Ljava/lang/String;

    .line 225
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x3346d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 226
    return-void
.end method

.method public static writeSecurityCertAuthorityRemoved(ILjava/lang/String;)V
    .locals 3
    .param p0, "success"    # I
    .param p1, "subject"    # Ljava/lang/String;

    .line 229
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x3346e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 230
    return-void
.end method

.method public static writeSecurityCertValidationFailure(Ljava/lang/String;)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;

    .line 241
    const v0, 0x33471

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 242
    return-void
.end method

.method public static writeSecurityCryptoSelfTestCompleted(I)V
    .locals 1
    .param p0, "success"    # I

    .line 233
    const v0, 0x3346f

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 234
    return-void
.end method

.method public static writeSecurityKeyDestroyed(ILjava/lang/String;I)V
    .locals 3
    .param p0, "success"    # I
    .param p1, "keyId"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 213
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x3346a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 214
    return-void
.end method

.method public static writeSecurityKeyGenerated(ILjava/lang/String;I)V
    .locals 3
    .param p0, "success"    # I
    .param p1, "keyId"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 205
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x33468

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 206
    return-void
.end method

.method public static writeSecurityKeyImported(ILjava/lang/String;I)V
    .locals 3
    .param p0, "success"    # I
    .param p1, "keyId"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 209
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x33469

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 210
    return-void
.end method

.method public static writeSecurityKeyIntegrityViolation(Ljava/lang/String;I)V
    .locals 3
    .param p0, "keyId"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 237
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x33470

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 238
    return-void
.end method

.method public static writeSecurityKeyguardDisabledFeaturesSet(Ljava/lang/String;III)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I
    .param p3, "features"    # I

    .line 193
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x33465

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 194
    return-void
.end method

.method public static writeSecurityKeyguardDismissAuthAttempt(II)V
    .locals 3
    .param p0, "success"    # I
    .param p1, "methodStrength"    # I

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x33457

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 138
    return-void
.end method

.method public static writeSecurityKeyguardDismissed()V
    .locals 2

    .line 133
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x33456

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 134
    return-void
.end method

.method public static writeSecurityKeyguardSecured()V
    .locals 2

    .line 141
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x33458

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 142
    return-void
.end method

.method public static writeSecurityLogBufferSizeCritical()V
    .locals 2

    .line 169
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x3345f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 170
    return-void
.end method

.method public static writeSecurityLoggingStarted()V
    .locals 2

    .line 153
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x3345b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 154
    return-void
.end method

.method public static writeSecurityLoggingStopped()V
    .locals 2

    .line 157
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x3345c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 158
    return-void
.end method

.method public static writeSecurityMaxPasswordAttemptsSet(Ljava/lang/String;III)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I
    .param p3, "numFailures"    # I

    .line 189
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x33464

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 190
    return-void
.end method

.method public static writeSecurityMaxScreenLockTimeoutSet(Ljava/lang/String;IIJ)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I
    .param p3, "timeout"    # J

    .line 185
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x33463

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 186
    return-void
.end method

.method public static writeSecurityMediaMounted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;

    .line 161
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x3345d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 162
    return-void
.end method

.method public static writeSecurityMediaUnmounted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x3345e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 166
    return-void
.end method

.method public static writeSecurityOsShutdown()V
    .locals 2

    .line 149
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x3345a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 150
    return-void
.end method

.method public static writeSecurityOsStartup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "bootState"    # Ljava/lang/String;
    .param p1, "verityMode"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x33459

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 146
    return-void
.end method

.method public static writeSecurityPasswordComplexitySet(Ljava/lang/String;IIIIIIIIII)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I
    .param p3, "length"    # I
    .param p4, "quality"    # I
    .param p5, "numLetters"    # I
    .param p6, "numNonLetters"    # I
    .param p7, "numNumeric"    # I
    .param p8, "numUppercase"    # I
    .param p9, "numLowercase"    # I
    .param p10, "numSymbols"    # I

    .line 177
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const v1, 0x33461

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 178
    return-void
.end method

.method public static writeSecurityPasswordExpirationSet(Ljava/lang/String;IIJ)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I
    .param p3, "timeout"    # J

    .line 173
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x33460

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 174
    return-void
.end method

.method public static writeSecurityPasswordHistoryLengthSet(Ljava/lang/String;III)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I
    .param p3, "length"    # I

    .line 181
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x33462

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 182
    return-void
.end method

.method public static writeSecurityRemoteLock(Ljava/lang/String;II)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I

    .line 197
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x33466

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 198
    return-void
.end method

.method public static writeSecurityUserRestrictionAdded(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "restriction"    # Ljava/lang/String;

    .line 217
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const v1, 0x3346b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 218
    return-void
.end method

.method public static writeSecurityUserRestrictionRemoved(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "restriction"    # Ljava/lang/String;

    .line 221
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const v1, 0x3346c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 222
    return-void
.end method

.method public static writeSecurityWipeFailed(Ljava/lang/String;I)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I

    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x33467

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 202
    return-void
.end method
