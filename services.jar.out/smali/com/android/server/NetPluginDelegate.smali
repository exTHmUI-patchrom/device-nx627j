.class public Lcom/android/server/NetPluginDelegate;
.super Ljava/lang/Object;
.source "NetPluginDelegate.java"


# static fields
.field private static final LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "NetPluginDelegate"

.field private static extJarAvail:Z

.field private static tcpBufferManagerObj:Ljava/lang/Object;

.field private static tcpBufferRelay:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/NetPluginDelegate;->tcpBufferRelay:Ljava/lang/Class;

    .line 50
    sput-object v0, Lcom/android/server/NetPluginDelegate;->tcpBufferManagerObj:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get5GTcpBuffers(Ljava/lang/String;Landroid/net/NetworkSpecifier;)Ljava/lang/String;
    .locals 8
    .param p0, "currentTcpBuffer"    # Ljava/lang/String;
    .param p1, "sepcifier"    # Landroid/net/NetworkSpecifier;

    .line 57
    move-object v0, p0

    .line 58
    .local v0, "tcpBuffer":Ljava/lang/String;
    const-string v1, "NetPluginDelegate"

    const-string v2, "get5GTcpBuffers"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-boolean v1, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadConnExtJar()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 62
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/NetPluginDelegate;->tcpBufferRelay:Ljava/lang/Class;

    const-string v3, "get5GTcpBuffers"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Landroid/net/NetworkSpecifier;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lcom/android/server/NetPluginDelegate;->tcpBufferManagerObj:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object p1, v4, v7

    .line 63
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 66
    .local v2, "ret":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 67
    move-object v3, v2

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 81
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_1
    :goto_0
    goto :goto_1

    .line 75
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "NetPluginDelegate"

    const-string v4, "Error calling get5GTcpBuffers Method on extension jar"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    sput-boolean v1, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 69
    :catch_1
    move-exception v2

    .line 71
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "NetPluginDelegate"

    const-string v4, "Failed to invoke get5GTcpBuffers()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    sput-boolean v1, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 82
    :goto_1
    return-object v0

    .line 60
    :cond_2
    :goto_2
    return-object p0
.end method

.method private static declared-synchronized loadConnExtJar()Z
    .locals 8

    const-class v0, Lcom/android/server/NetPluginDelegate;

    monitor-enter v0

    .line 116
    :try_start_0
    const-string v1, "com.qualcomm.qti.net.connextension.TCPBufferManager"

    .line 117
    .local v1, "realProvider":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/framework/ConnectivityExt.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "realProviderPath":Ljava/lang/String;
    sget-object v3, Lcom/android/server/NetPluginDelegate;->tcpBufferRelay:Ljava/lang/Class;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/NetPluginDelegate;->tcpBufferManagerObj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 121
    monitor-exit v0

    return v4

    .line 124
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    .line 125
    sget-boolean v3, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 126
    const-string v3, "NetPluginDelegate"

    const-string v4, "ConnectivityExt jar file not present"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    monitor-exit v0

    return v5

    .line 130
    :cond_1
    :try_start_2
    sget-object v3, Lcom/android/server/NetPluginDelegate;->tcpBufferRelay:Ljava/lang/Class;

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/server/NetPluginDelegate;->tcpBufferManagerObj:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 131
    const-string v3, "NetPluginDelegate"

    const-string/jumbo v6, "loading ConnectivityExt jar"

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :try_start_3
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 134
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v3, v2, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 136
    .local v3, "classLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qualcomm.qti.net.connextension.TCPBufferManager"

    invoke-virtual {v3, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/android/server/NetPluginDelegate;->tcpBufferRelay:Ljava/lang/Class;

    .line 137
    sget-object v6, Lcom/android/server/NetPluginDelegate;->tcpBufferRelay:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/android/server/NetPluginDelegate;->tcpBufferManagerObj:Ljava/lang/Object;

    .line 138
    const-string v6, "NetPluginDelegate"

    const-string v7, "ConnectivityExt jar loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    .end local v3    # "classLoader":Ldalvik/system/PathClassLoader;
    goto :goto_0

    .line 146
    :catch_0
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "NetPluginDelegate"

    const-string/jumbo v6, "unable to load ConnectivityExt jar"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    sput-boolean v5, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    monitor-exit v0

    return v5

    .line 139
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 141
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    :try_start_5
    const-string v4, "NetPluginDelegate"

    const-string v6, "Failed to find, instantiate or access ConnectivityExt jar "

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 144
    sput-boolean v5, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    monitor-exit v0

    return v5

    .line 155
    .end local v3    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_2
    :goto_0
    monitor-exit v0

    return v4

    .line 115
    .end local v1    # "realProvider":Ljava/lang/String;
    .end local v2    # "realProviderPath":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static registerHandler(Landroid/os/Handler;)V
    .locals 6
    .param p0, "mHandler"    # Landroid/os/Handler;

    .line 90
    const-string v0, "NetPluginDelegate"

    const-string/jumbo v1, "registerHandler"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-boolean v0, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadConnExtJar()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 93
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/NetPluginDelegate;->tcpBufferRelay:Ljava/lang/Class;

    const-string/jumbo v2, "registerHandler"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/os/Handler;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/server/NetPluginDelegate;->tcpBufferManagerObj:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NetPluginDelegate"

    const-string v3, "Error calling registerHandler Method on extension jar"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    sput-boolean v0, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 95
    :catch_1
    move-exception v1

    .line 97
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "NetPluginDelegate"

    const-string v3, "Failed to call registerHandler"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    sput-boolean v0, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 108
    :goto_1
    return-void

    .line 91
    :cond_1
    :goto_2
    return-void
.end method
