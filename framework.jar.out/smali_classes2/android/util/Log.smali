.class public final Landroid/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Log$ImmediateLogWriter;,
        Landroid/util/Log$PreloadHolder;,
        Landroid/util/Log$Holder;,
        Landroid/util/Log$TerribleFailureHandler;,
        Landroid/util/Log$TerribleFailure;
    }
.end annotation


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final LOG_ID_CRASH:I = 0x4

.field public static final LOG_ID_EVENTS:I = 0x2

.field public static final LOG_ID_MAIN:I = 0x0

.field public static final LOG_ID_RADIO:I = 0x1

.field public static final LOG_ID_SYSTEM:I = 0x3

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static sWtfHandler:Landroid/util/Log$TerribleFailureHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Landroid/util/Log$1;

    invoke-direct {v0}, Landroid/util/Log$1;-><init>()V

    sput-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method static synthetic access$000([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # [Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->printCtaLogThread([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .line 73
    invoke-static {}, Landroid/util/Log;->logger_entry_max_payload_native()I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 306
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 317
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 401
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 412
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 495
    if-nez p0, :cond_0

    .line 496
    const-string v0, ""

    return-object v0

    .line 501
    :cond_0
    move-object v0, p0

    .line 502
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_2

    .line 503
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_1

    .line 504
    const-string v1, ""

    return-object v1

    .line 506
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 509
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 510
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/4 v3, 0x0

    const/16 v4, 0x100

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 511
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 512
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 513
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 327
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 338
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static isCtaLogOn()Z
    .locals 5

    .line 159
    const-string/jumbo v0, "nubia_cta_log"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 160
    return v1

    .line 163
    :cond_0
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 164
    .local v0, "index":I
    const/4 v2, 0x1

    if-ltz v0, :cond_1

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    return v2

    .line 167
    :cond_1
    const-string v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "userdebug"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 170
    :cond_2
    return v1

    .line 168
    :cond_3
    :goto_0
    return v2
.end method

.method public static native isLoggable(Ljava/lang/String;I)Z
.end method

.method private static native logger_entry_max_payload_native()I
.end method

.method private static printCtaLog(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 183
    const-string v0, "CTA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    return v1

    .line 187
    :cond_0
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "msgs":[Ljava/lang/String;
    invoke-static {}, Landroid/util/Log;->isCtaLogOn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    .line 194
    :cond_1
    return v1

    .line 196
    :cond_2
    invoke-static {}, Landroid/util/Log$Holder;->access$100()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/util/Log$2;

    invoke-direct {v2, v0, p1}, Landroid/util/Log$2;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    const/4 v1, 0x1

    return v1

    .line 204
    .end local v0    # "msgs":[Ljava/lang/String;
    :cond_3
    return v1
.end method

.method private static printCtaLogThread([Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p0, "msgs"    # [Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 208
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 209
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "pks":[Ljava/lang/String;
    const-string/jumbo v0, "nubia_cta_log_debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pksize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5, v4, v0, v3}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz v2, :cond_f

    .line 212
    aget-object v3, v2, v5

    .line 213
    .local v3, "pkg":Ljava/lang/String;
    const/4 v0, 0x0

    move-object v6, v0

    .line 215
    .local v6, "pName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-interface {v0, v7}, Landroid/app/IActivityManager;->getRunningAppProcessesForPid(I)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v0

    .line 216
    .local v0, "runinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v7, 0x1

    if-eqz v0, :cond_b

    .line 217
    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object v3, v8

    .line 218
    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object v6, v8

    .line 219
    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 220
    .local v8, "pkgs":[Ljava/lang/String;
    if-eqz v8, :cond_a

    .line 221
    array-length v9, v8

    if-ne v9, v7, :cond_0

    .line 222
    aget-object v9, v8, v5

    move-object v3, v9

    goto/16 :goto_4

    .line 223
    :cond_0
    const-string v9, "android"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "system"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_3

    .line 226
    :cond_1
    const/4 v9, 0x0

    .line 227
    .local v9, "prePkg":Ljava/lang/String;
    const/4 v10, 0x0

    .line 228
    .local v10, "equalsPkg":Ljava/lang/String;
    array-length v11, v8

    move-object v12, v9

    move v9, v5

    .line 228
    .end local v9    # "prePkg":Ljava/lang/String;
    .local v12, "prePkg":Ljava/lang/String;
    :goto_0
    if-ge v9, v11, :cond_5

    aget-object v13, v8, v9

    .line 229
    .local v13, "pk":Ljava/lang/String;
    iget-object v14, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 230
    move-object v10, v13

    .line 231
    goto :goto_2

    .line 232
    :cond_2
    iget-object v14, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 233
    if-nez v12, :cond_3

    .line 234
    move-object v12, v13

    goto :goto_1

    .line 236
    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_4

    .line 238
    move-object v12, v13

    .line 228
    .end local v13    # "pk":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 243
    :cond_5
    :goto_2
    if-eqz v10, :cond_6

    .line 244
    move-object v3, v10

    goto :goto_4

    .line 245
    :cond_6
    if-eqz v12, :cond_7

    .line 246
    move-object v3, v12

    goto :goto_4

    .line 248
    :cond_7
    aget-object v9, v8, v5

    move-object v3, v9

    .line 249
    const-string/jumbo v9, "nubia_cta_log_debug"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "***uid : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", pid : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", processName : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " not match pkgs.***"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v4, v9, v11}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    .end local v10    # "equalsPkg":Ljava/lang/String;
    .end local v12    # "prePkg":Ljava/lang/String;
    goto :goto_4

    .line 224
    :cond_8
    :goto_3
    const-string v9, "android"

    move-object v3, v9

    .line 252
    :goto_4
    const-string/jumbo v9, "nubia_cta_log_debug"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "***processName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ***"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v4, v9, v10}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    .line 253
    array-length v9, v8

    move v10, v5

    :goto_5
    if-ge v10, v9, :cond_9

    aget-object v11, v8, v10

    .line 254
    .local v11, "pk":Ljava/lang/String;
    const-string/jumbo v12, "nubia_cta_log_debug"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "***pk : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " ***"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v4, v12, v13}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v11    # "pk":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 256
    :cond_9
    const-string/jumbo v9, "nubia_cta_log_debug"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "***choose pkg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ***"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v4, v9, v10}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v8    # "pkgs":[Ljava/lang/String;
    :cond_a
    goto :goto_6

    .line 259
    :cond_b
    const-string/jumbo v8, "nubia_cta_log_debug"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "***uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", pid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", pksize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " not find in runningAppProcessInfos***"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v4, v8, v9}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 263
    .end local v0    # "runinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_6
    nop

    .line 265
    :try_start_1
    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 266
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 267
    .local v8, "name":Ljava/lang/CharSequence;
    if-nez v6, :cond_c

    .line 268
    :try_start_2
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v9

    goto :goto_7

    .line 292
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "name":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    move-object/from16 v9, p0

    move-object/from16 v11, p1

    goto/16 :goto_a

    .line 270
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "name":Ljava/lang/CharSequence;
    :cond_c
    :goto_7
    if-nez p0, :cond_d

    .line 271
    :try_start_3
    const-string v10, "@"
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v11, p1

    :try_start_4
    invoke-virtual {v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v9, v10

    .line 271
    .end local p0    # "msgs":[Ljava/lang/String;
    .local v9, "msgs":[Ljava/lang/String;
    goto :goto_8

    .line 292
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "name":Ljava/lang/CharSequence;
    .end local v9    # "msgs":[Ljava/lang/String;
    .restart local p0    # "msgs":[Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_9

    .line 273
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "name":Ljava/lang/CharSequence;
    :cond_d
    move-object/from16 v11, p1

    move-object/from16 v9, p0

    .line 273
    .end local p0    # "msgs":[Ljava/lang/String;
    .restart local v9    # "msgs":[Ljava/lang/String;
    :goto_8
    :try_start_5
    array-length v10, v9

    const/4 v12, 0x3

    if-lt v10, v12, :cond_e

    .line 274
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v10, "builder":Ljava/lang/StringBuilder;
    const-string v12, "<"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v12, ">"

    .line 277
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "["

    .line 278
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]"

    .line 280
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "["

    .line 281
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]"

    .line 283
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    .line 284
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "["

    .line 285
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v9, v7

    .line 286
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    .line 287
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    .line 288
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v9, v4

    .line 289
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v7, "ctaifs"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v4, v7, v12}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 294
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "name":Ljava/lang/CharSequence;
    .end local v10    # "builder":Ljava/lang/StringBuilder;
    :cond_e
    goto :goto_b

    .line 292
    :catch_2
    move-exception v0

    goto :goto_a

    .line 292
    .end local v9    # "msgs":[Ljava/lang/String;
    .restart local p0    # "msgs":[Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v11, p1

    .line 292
    .end local p0    # "msgs":[Ljava/lang/String;
    .restart local v9    # "msgs":[Ljava/lang/String;
    :goto_9
    move-object/from16 v9, p0

    .line 293
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_a
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 293
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "pName":Ljava/lang/String;
    goto :goto_b

    .line 261
    .end local v9    # "msgs":[Ljava/lang/String;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v6    # "pName":Ljava/lang/String;
    .restart local p0    # "msgs":[Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v11, p1

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 296
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "pName":Ljava/lang/String;
    :cond_f
    move-object/from16 v11, p1

    move-object/from16 v9, p0

    .line 296
    .end local p0    # "msgs":[Ljava/lang/String;
    .restart local v9    # "msgs":[Ljava/lang/String;
    :goto_b
    return-void
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 525
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static native println_native(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 5
    .param p0, "bufID"    # I
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "tr"    # Ljava/lang/Throwable;

    .line 551
    new-instance v0, Landroid/util/Log$ImmediateLogWriter;

    invoke-direct {v0, p0, p1, p2}, Landroid/util/Log$ImmediateLogWriter;-><init>(IILjava/lang/String;)V

    .line 556
    .local v0, "logWriter":Landroid/util/Log$ImmediateLogWriter;
    sget v1, Landroid/util/Log$PreloadHolder;->LOGGER_ENTRY_MAX_PAYLOAD:I

    add-int/lit8 v1, v1, -0x2

    .line 558
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x20

    .line 561
    .local v1, "bufferSize":I
    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 563
    new-instance v2, Lcom/android/internal/util/LineBreakBufferedWriter;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/util/LineBreakBufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 565
    .local v2, "lbbw":Lcom/android/internal/util/LineBreakBufferedWriter;
    invoke-virtual {v2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->println(Ljava/lang/String;)V

    .line 567
    if-eqz p4, :cond_4

    .line 570
    move-object v3, p4

    .line 571
    .local v3, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v3, :cond_3

    .line 572
    instance-of v4, v3, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_1

    .line 573
    goto :goto_2

    .line 575
    :cond_1
    instance-of v4, v3, Landroid/os/DeadSystemException;

    if-eqz v4, :cond_2

    .line 576
    const-string v4, "DeadSystemException: The system died; earlier logs will point to the root cause"

    invoke-virtual {v2, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->println(Ljava/lang/String;)V

    .line 578
    goto :goto_2

    .line 580
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_1

    .line 582
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 583
    invoke-virtual {p4, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 587
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->flush()V

    .line 589
    invoke-virtual {v0}, Landroid/util/Log$ImmediateLogWriter;->getWritten()I

    move-result v3

    return v3
.end method

.method public static setWtfHandler(Landroid/util/Log$TerribleFailureHandler;)Landroid/util/Log$TerribleFailureHandler;
    .locals 2
    .param p0, "handler"    # Landroid/util/Log$TerribleFailureHandler;

    .line 482
    if-eqz p0, :cond_0

    .line 485
    sget-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 486
    .local v0, "oldHandler":Landroid/util/Log$TerribleFailureHandler;
    sput-object p0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 487
    return-object v0

    .line 483
    .end local v0    # "oldHandler":Landroid/util/Log$TerribleFailureHandler;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 138
    invoke-static {p0, p1}, Landroid/util/Log;->printCtaLog(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "ret":I
    if-lez v0, :cond_0

    return v0

    .line 140
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 348
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 359
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 391
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v1, v2, p0, v0, p1}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I
    .locals 3
    .param p0, "logId"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;
    .param p4, "localStack"    # Z
    .param p5, "system"    # Z

    .line 460
    new-instance v0, Landroid/util/Log$TerribleFailure;

    invoke-direct {v0, p2, p3}, Landroid/util/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    .local v0, "what":Landroid/util/Log$TerribleFailure;
    if-eqz p4, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    const/4 v2, 0x6

    invoke-static {p0, v2, p1, p2, v1}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 465
    .local v1, "bytes":I
    sget-object v2, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    invoke-interface {v2, p1, v0, p5}, Landroid/util/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    .line 466
    return v1
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 425
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 455
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 444
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method

.method static wtfQuiet(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "logId"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "system"    # Z

    .line 470
    new-instance v0, Landroid/util/Log$TerribleFailure;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/util/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    .local v0, "what":Landroid/util/Log$TerribleFailure;
    sget-object v1, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    invoke-interface {v1, p1, v0, p3}, Landroid/util/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    .line 472
    return-void
.end method

.method public static wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 434
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method
