.class public Lcom/android/internal/logging/AndroidHandler;
.super Ljava/util/logging/Handler;
.source "AndroidHandler.java"

# interfaces
.implements Ldalvik/system/DalvikLogHandler;


# static fields
.field private static final THE_FORMATTER:Ljava/util/logging/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lcom/android/internal/logging/AndroidHandler$1;

    invoke-direct {v0}, Lcom/android/internal/logging/AndroidHandler$1;-><init>()V

    sput-object v0, Lcom/android/internal/logging/AndroidHandler;->THE_FORMATTER:Ljava/util/logging/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 111
    sget-object v0, Lcom/android/internal/logging/AndroidHandler;->THE_FORMATTER:Ljava/util/logging/Formatter;

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/AndroidHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 112
    return-void
.end method

.method static getAndroidLevel(Ljava/util/logging/Level;)I
    .locals 2
    .param p0, "level"    # Ljava/util/logging/Level;

    .line 162
    invoke-virtual {p0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    .line 163
    .local v0, "value":I
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 164
    const/4 v1, 0x6

    return v1

    .line 165
    :cond_0
    const/16 v1, 0x384

    if-lt v0, v1, :cond_1

    .line 166
    const/4 v1, 0x5

    return v1

    .line 167
    :cond_1
    const/16 v1, 0x320

    if-lt v0, v1, :cond_2

    .line 168
    const/4 v1, 0x4

    return v1

    .line 170
    :cond_2
    const/4 v1, 0x3

    return v1
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 117
    return-void
.end method

.method public flush()V
    .locals 0

    .line 122
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 5
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 126
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/logging/AndroidHandler;->getAndroidLevel(Ljava/util/logging/Level;)I

    move-result v0

    .line 127
    .local v0, "level":I
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/DalvikLogging;->loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "tag":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    return-void

    .line 133
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/logging/AndroidHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "message":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v2    # "message":Ljava/lang/String;
    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "AndroidHandler"

    const-string v4, "Error logging message."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public publish(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 4
    .param p1, "source"    # Ljava/util/logging/Logger;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "level"    # Ljava/util/logging/Level;
    .param p4, "message"    # Ljava/lang/String;

    .line 142
    invoke-static {p3}, Lcom/android/internal/logging/AndroidHandler;->getAndroidLevel(Ljava/util/logging/Level;)I

    move-result v0

    .line 143
    .local v0, "priority":I
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    return-void

    .line 148
    :cond_0
    :try_start_0
    invoke-static {v0, p2, p4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "AndroidHandler"

    const-string v3, "Error logging message."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method
