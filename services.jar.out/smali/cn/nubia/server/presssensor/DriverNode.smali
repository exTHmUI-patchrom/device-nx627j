.class public Lcn/nubia/server/presssensor/DriverNode;
.super Ljava/lang/Object;
.source "DriverNode.java"


# static fields
.field private static final NODE_PRESS_POWER_STAT:Ljava/lang/String; = "/sys/cs_press/cs_press/power_stat"

.field private static final NODE_PRESS_THRESHOLD:Ljava/lang/String; = "/sys/cs_press/cs_press/press_thd"

.field private static final SUB_TAG:Ljava/lang/String; = "[Node] "

.field private static sIsEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable()V
    .locals 3

    .line 35
    const-string v0, "PressSensorService"

    const-string v1, "[Node] disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :try_start_0
    const-string v0, "/sys/cs_press/cs_press/power_stat"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/DriverNode;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "PressSensorService"

    const-string v2, "[Node] disable error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {}, Lcn/nubia/server/presssensor/DriverNode;->isDriverEnableInner()Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/presssensor/DriverNode;->sIsEnable:Z

    .line 44
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 110
    const-string v0, "Node:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  power:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sys/cs_press/cs_press/power_stat"

    invoke-static {v1}, Lcn/nubia/server/presssensor/DriverNode;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  threshold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sys/cs_press/cs_press/press_thd"

    invoke-static {v1}, Lcn/nubia/server/presssensor/DriverNode;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  sIsEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/nubia/server/presssensor/DriverNode;->sIsEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static enable()V
    .locals 3

    .line 23
    const-string v0, "PressSensorService"

    const-string v1, "[Node] enable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :try_start_0
    const-string v0, "/sys/cs_press/cs_press/power_stat"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/DriverNode;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "PressSensorService"

    const-string v2, "[Node] enable error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {}, Lcn/nubia/server/presssensor/DriverNode;->isDriverEnableInner()Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/presssensor/DriverNode;->sIsEnable:Z

    .line 32
    return-void
.end method

.method private static isDriverEnableInner()Z
    .locals 2

    .line 69
    const-string v0, "0"

    const-string v1, "/sys/cs_press/cs_press/power_stat"

    invoke-static {v1}, Lcn/nubia/server/presssensor/DriverNode;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isEnable()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcn/nubia/server/presssensor/DriverNode;->sIsEnable:Z

    return v0
.end method

.method private static read(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "reader":Ljava/io/BufferedReader;
    const-string v1, ""

    .line 89
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 90
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 96
    nop

    .line 98
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    :cond_0
    :goto_0
    goto :goto_2

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v3, Lcn/nubia/server/presssensor/PressSensorService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 101
    :goto_1
    const-string v3, "PressSensorService"

    const-string v4, "[Node] close reader error "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 91
    :catch_1
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v3, Lcn/nubia/server/presssensor/PressSensorService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 93
    const-string v3, "PressSensorService"

    const-string v4, "[Node] read error "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v0, :cond_2

    .line 98
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 99
    :catch_2
    move-exception v2

    .line 100
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v3, Lcn/nubia/server/presssensor/PressSensorService;->DEBUG:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 106
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-object v1

    .line 96
    :goto_3
    if-eqz v0, :cond_3

    .line 98
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 103
    goto :goto_4

    .line 99
    :catch_3
    move-exception v3

    .line 100
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v4, Lcn/nubia/server/presssensor/PressSensorService;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 101
    const-string v4, "PressSensorService"

    const-string v5, "[Node] close reader error "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    throw v2
.end method

.method public static setThreshold(I)V
    .locals 3
    .param p0, "threshold"    # I

    .line 47
    const/16 v0, 0x6a4

    if-ne p0, v0, :cond_0

    .line 48
    const-string v0, "PressSensorService"

    const-string v1, "[Node] set to default threshold"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_0
    const-string v0, "PressSensorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Node] set threshold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    const/16 v0, 0x7530

    if-le p0, v0, :cond_1

    .line 53
    const/16 p0, 0x7530

    goto :goto_1

    .line 54
    :cond_1
    const/16 v0, 0x64

    if-ge p0, v0, :cond_2

    .line 55
    const/16 p0, 0x64

    .line 58
    :cond_2
    :goto_1
    :try_start_0
    const-string v0, "/sys/cs_press/cs_press/press_thd"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/DriverNode;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "PressSensorService"

    const-string v2, "[Node] set threshold error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private static write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 76
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    nop

    .line 80
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 83
    return-void

    .line 79
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    throw v1
.end method
