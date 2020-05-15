.class public final Landroid/os/NubiaDebug;
.super Ljava/lang/Object;
.source "NubiaDebug.java"


# static fields
.field public static final ACTIVITY_DELAY:I

.field public static DEBUG:Z = false

.field public static DEBUG_SYSTRACE_TAG:Z = false

.field public static final DELAY_DEFAULT:I

.field public static final IS_USER_BUILD:Z

.field public static final MESSAGE_COUNT:I

.field public static final MESSAGE_DELAY:I

.field public static final RECEIVER_DELAY:I

.field public static final SERVICE_DELAY:I

.field public static final TAG_NUBIA:Ljava/lang/String; = "nubialog"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    const-string/jumbo v0, "user"

    const-string/jumbo v1, "ro.build.type"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/NubiaDebug;->IS_USER_BUILD:Z

    .line 15
    const-string v0, "debug.nubia.log"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/NubiaDebug;->DEBUG:Z

    .line 21
    sget-boolean v0, Landroid/os/NubiaDebug;->IS_USER_BUILD:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    sput v0, Landroid/os/NubiaDebug;->DELAY_DEFAULT:I

    .line 24
    const-string v0, "debug.nubia.activity_delay"

    sget v2, Landroid/os/NubiaDebug;->DELAY_DEFAULT:I

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    .line 26
    const-string v0, "debug.nubia.service_delay"

    sget v2, Landroid/os/NubiaDebug;->DELAY_DEFAULT:I

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/NubiaDebug;->SERVICE_DELAY:I

    .line 28
    const-string v0, "debug.nubia.receiver_delay"

    sget v2, Landroid/os/NubiaDebug;->DELAY_DEFAULT:I

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/NubiaDebug;->RECEIVER_DELAY:I

    .line 30
    const-string v0, "debug.nubia.message_delay"

    sget v2, Landroid/os/NubiaDebug;->DELAY_DEFAULT:I

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/NubiaDebug;->MESSAGE_DELAY:I

    .line 32
    const-string v0, "debug.nubia.message_count"

    const/16 v2, 0x1e

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/NubiaDebug;->MESSAGE_COUNT:I

    .line 38
    const-string v0, "debug.nubia.systrace_more"

    sget-boolean v2, Landroid/os/NubiaDebug;->IS_USER_BUILD:Z

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
