.class public Landroid/app/admin/SecurityLog;
.super Ljava/lang/Object;
.source "SecurityLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/SecurityLog$SecurityEvent;,
        Landroid/app/admin/SecurityLog$SecurityLogLevel;,
        Landroid/app/admin/SecurityLog$SecurityLogTag;
    }
.end annotation


# static fields
.field public static final LEVEL_ERROR:I = 0x3

.field public static final LEVEL_INFO:I = 0x1

.field public static final LEVEL_WARNING:I = 0x2

.field private static final PROPERTY_LOGGING_ENABLED:Ljava/lang/String; = "persist.logd.security"

.field public static final TAG_ADB_SHELL_CMD:I = 0x33452

.field public static final TAG_ADB_SHELL_INTERACTIVE:I = 0x33451

.field public static final TAG_APP_PROCESS_START:I = 0x33455

.field public static final TAG_CERT_AUTHORITY_INSTALLED:I = 0x3346d

.field public static final TAG_CERT_AUTHORITY_REMOVED:I = 0x3346e

.field public static final TAG_CERT_VALIDATION_FAILURE:I = 0x33471

.field public static final TAG_CRYPTO_SELF_TEST_COMPLETED:I = 0x3346f

.field public static final TAG_KEYGUARD_DISABLED_FEATURES_SET:I = 0x33465

.field public static final TAG_KEYGUARD_DISMISSED:I = 0x33456

.field public static final TAG_KEYGUARD_DISMISS_AUTH_ATTEMPT:I = 0x33457

.field public static final TAG_KEYGUARD_SECURED:I = 0x33458

.field public static final TAG_KEY_DESTRUCTION:I = 0x3346a

.field public static final TAG_KEY_GENERATED:I = 0x33468

.field public static final TAG_KEY_IMPORT:I = 0x33469

.field public static final TAG_KEY_INTEGRITY_VIOLATION:I = 0x33470

.field public static final TAG_LOGGING_STARTED:I = 0x3345b

.field public static final TAG_LOGGING_STOPPED:I = 0x3345c

.field public static final TAG_LOG_BUFFER_SIZE_CRITICAL:I = 0x3345f

.field public static final TAG_MAX_PASSWORD_ATTEMPTS_SET:I = 0x33464

.field public static final TAG_MAX_SCREEN_LOCK_TIMEOUT_SET:I = 0x33463

.field public static final TAG_MEDIA_MOUNT:I = 0x3345d

.field public static final TAG_MEDIA_UNMOUNT:I = 0x3345e

.field public static final TAG_OS_SHUTDOWN:I = 0x3345a

.field public static final TAG_OS_STARTUP:I = 0x33459

.field public static final TAG_PASSWORD_COMPLEXITY_SET:I = 0x33461

.field public static final TAG_PASSWORD_EXPIRATION_SET:I = 0x33460

.field public static final TAG_PASSWORD_HISTORY_LENGTH_SET:I = 0x33462

.field public static final TAG_REMOTE_LOCK:I = 0x33466

.field public static final TAG_SYNC_RECV_FILE:I = 0x33453

.field public static final TAG_SYNC_SEND_FILE:I = 0x33454

.field public static final TAG_USER_RESTRICTION_ADDED:I = 0x3346b

.field public static final TAG_USER_RESTRICTION_REMOVED:I = 0x3346c

.field public static final TAG_WIPE_FAILURE:I = 0x33467


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoggingEnabledProperty()Z
    .locals 2

    .line 465
    const-string/jumbo v0, "persist.logd.security"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static native isLoggingEnabled()Z
.end method

.method public static native readEvents(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native readEventsOnWrapping(JLjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native readEventsSince(JLjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native readPreviousEvents(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static setLoggingEnabledProperty(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .line 458
    const-string/jumbo v0, "persist.logd.security"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public static native writeEvent(ILjava/lang/String;)I
.end method

.method public static varargs native writeEvent(I[Ljava/lang/Object;)I
.end method
