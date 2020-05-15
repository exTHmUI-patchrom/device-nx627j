.class public Lcom/android/internal/os/RoSystemProperties;
.super Ljava/lang/Object;
.source "RoSystemProperties.java"


# static fields
.field public static final CONFIG_AVOID_GFX_ACCEL:Z

.field public static final CONFIG_LOW_RAM:Z

.field public static final CONFIG_SMALL_BATTERY:Z

.field public static final CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

.field public static final CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

.field public static final CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

.field public static final CONTROL_PRIVAPP_PERMISSIONS_LOG:Z

.field public static final CRYPTO_BLOCK_ENCRYPTED:Z

.field public static final CRYPTO_ENCRYPTABLE:Z

.field public static final CRYPTO_ENCRYPTED:Z

.field public static final CRYPTO_FILE_ENCRYPTED:Z

.field public static final CRYPTO_STATE:Ljava/lang/String;

.field public static final CRYPTO_TYPE:Ljava/lang/String;

.field public static final DEBUGGABLE:Z

.field public static final FACTORYTEST:I

.field public static final FW_SYSTEM_USER_SPLIT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    const-string/jumbo v0, "ro.debuggable"

    .line 27
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    .line 28
    const-string/jumbo v0, "ro.factorytest"

    .line 29
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/os/RoSystemProperties;->FACTORYTEST:I

    .line 30
    const-string/jumbo v0, "ro.control_privapp_permissions"

    .line 31
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "ro.config.avoid_gfx_accel"

    .line 35
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_AVOID_GFX_ACCEL:Z

    .line 36
    const-string/jumbo v0, "ro.config.low_ram"

    .line 37
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_LOW_RAM:Z

    .line 38
    const-string/jumbo v0, "ro.config.small_battery"

    .line 39
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_SMALL_BATTERY:Z

    .line 42
    const-string/jumbo v0, "ro.fw.system_user_split"

    .line 43
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->FW_SYSTEM_USER_SPLIT:Z

    .line 46
    const-string/jumbo v0, "ro.crypto.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_STATE:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "ro.crypto.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_TYPE:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_STATE:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "unsupported"

    sget-object v3, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_STATE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTABLE:Z

    .line 51
    const-string v0, "encrypted"

    sget-object v3, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_STATE:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTED:Z

    .line 53
    const-string v0, "file"

    sget-object v3, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_TYPE:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_FILE_ENCRYPTED:Z

    .line 55
    const-string v0, "block"

    sget-object v3, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_TYPE:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_BLOCK_ENCRYPTED:Z

    .line 58
    const-string/jumbo v0, "log"

    sget-object v3, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_LOG:Z

    .line 60
    const-string v0, "enforce"

    sget-object v3, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    .line 62
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_LOG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-nez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    sput-boolean v1, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
