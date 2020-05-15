.class public Lnubia/twolevel/RenderThreadAdjustor;
.super Ljava/lang/Object;
.source "RenderThreadAdjustor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;
    }
.end annotation


# static fields
.field private static mInstance:Lnubia/twolevel/RenderThreadAdjustor;

.field static preCreatedRenderThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private appInfoFileName:Ljava/lang/String;

.field private mEverGoIntoTranslucent:Z

.field mLaunchForActivityStart:Z

.field private mPreCreatedLock:Ljava/lang/Object;

.field private preLaunchedSurfaceName:Ljava/lang/String;

.field private renderThreadCreater:Landroid/os/HandlerThread;

.field private renderThreadInfoFN:Ljava/lang/String;

.field private surfaceNameFile:Ljava/lang/String;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 87
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnubia/twolevel/RenderThreadAdjustor;->preCreatedRenderThreads:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Lnubia/twolevel/RenderThreadAdjustor;

    invoke-direct {v0}, Lnubia/twolevel/RenderThreadAdjustor;-><init>()V

    sput-object v0, Lnubia/twolevel/RenderThreadAdjustor;->mInstance:Lnubia/twolevel/RenderThreadAdjustor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/twolevel/RenderThreadAdjustor;->mLaunchForActivityStart:Z

    .line 24
    const-string v1, "TwoLevelStart"

    iput-object v1, p0, Lnubia/twolevel/RenderThreadAdjustor;->TAG:Ljava/lang/String;

    .line 25
    const-string v1, "/render_thread_info"

    iput-object v1, p0, Lnubia/twolevel/RenderThreadAdjustor;->renderThreadInfoFN:Ljava/lang/String;

    .line 26
    const-string v1, "/surfacename_nubia"

    iput-object v1, p0, Lnubia/twolevel/RenderThreadAdjustor;->surfaceNameFile:Ljava/lang/String;

    .line 27
    const-string v1, "/app_info"

    iput-object v1, p0, Lnubia/twolevel/RenderThreadAdjustor;->appInfoFileName:Ljava/lang/String;

    .line 28
    iput-boolean v0, p0, Lnubia/twolevel/RenderThreadAdjustor;->mEverGoIntoTranslucent:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/twolevel/RenderThreadAdjustor;->preLaunchedSurfaceName:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnubia/twolevel/RenderThreadAdjustor;->mPreCreatedLock:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method private createRenderThread(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 116
    invoke-direct {p0, p1}, Lnubia/twolevel/RenderThreadAdjustor;->getFilesDirAbsolutePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "filesDirPath":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnubia/twolevel/RenderThreadAdjustor;->renderThreadInfoFN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "_RenderThreadInfoFile":Ljava/io/File;
    invoke-direct {p0, p1, p2}, Lnubia/twolevel/RenderThreadAdjustor;->isSameAppVersionWithStored(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 121
    return-void

    .line 124
    :cond_1
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "RenderThreadCreator"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnubia/twolevel/RenderThreadAdjustor;->renderThreadCreater:Landroid/os/HandlerThread;

    .line 125
    iget-object v2, p0, Lnubia/twolevel/RenderThreadAdjustor;->renderThreadCreater:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v2, Lnubia/twolevel/RenderThreadAdjustor$1;

    iget-object v3, p0, Lnubia/twolevel/RenderThreadAdjustor;->renderThreadCreater:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1, p1}, Lnubia/twolevel/RenderThreadAdjustor$1;-><init>(Lnubia/twolevel/RenderThreadAdjustor;Landroid/os/Looper;Ljava/io/File;Landroid/content/Context;)V

    .line 144
    .local v2, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 145
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    return-void
.end method

.method private getFilesDirAbsolutePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 183
    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static instance()Lnubia/twolevel/RenderThreadAdjustor;
    .locals 1

    .line 38
    sget-object v0, Lnubia/twolevel/RenderThreadAdjustor;->mInstance:Lnubia/twolevel/RenderThreadAdjustor;

    return-object v0
.end method

.method private isSameAppVersionWithStored(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 154
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnubia/twolevel/RenderThreadAdjustor;->appInfoFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "appInfoFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 156
    const/4 v1, -0x1

    .line 157
    .local v1, "versionCode":I
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    .local v5, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v6

    .line 159
    :try_start_2
    invoke-static {v4, v5}, Lnubia/twolevel/RenderThreadAdjustor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v6

    move-object v7, v4

    goto :goto_0

    .line 157
    :catch_0
    move-exception v6

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    :catchall_1
    move-exception v7

    move-object v8, v7

    move-object v7, v6

    move-object v6, v8

    :goto_0
    :try_start_4
    invoke-static {v7, v5}, Lnubia/twolevel/RenderThreadAdjustor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v5    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    .line 160
    :goto_1
    iget v5, p2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    if-eq v1, v5, :cond_0

    .line 162
    :try_start_5
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 163
    .local v5, "bw":Ljava/io/BufferedWriter;
    :try_start_6
    iget v6, p2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v5, v3}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 165
    :try_start_7
    invoke-static {v4, v5}, Lnubia/twolevel/RenderThreadAdjustor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catchall_2
    move-exception v3

    goto :goto_2

    .line 162
    :catch_2
    move-exception v3

    move-object v4, v3

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 165
    :goto_2
    :try_start_9
    invoke-static {v4, v5}, Lnubia/twolevel/RenderThreadAdjustor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v3

    .line 166
    :goto_3
    return v2

    .line 168
    .end local v1    # "versionCode":I
    :cond_0
    nop

    .line 175
    const/4 v1, 0x1

    return v1

    .line 169
    :cond_1
    :try_start_a
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 170
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_b
    iget v5, p2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 172
    :try_start_c
    invoke-static {v4, v1}, Lnubia/twolevel/RenderThreadAdjustor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_5

    :catchall_3
    move-exception v3

    goto :goto_4

    .line 169
    :catch_4
    move-exception v3

    move-object v4, v3

    :try_start_d
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 172
    :goto_4
    :try_start_e
    invoke-static {v4, v1}, Lnubia/twolevel/RenderThreadAdjustor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v1

    .line 173
    :goto_5
    return v2
.end method


# virtual methods
.method public adjustRenderThreadStart(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 59
    iget-boolean v0, p0, Lnubia/twolevel/RenderThreadAdjustor;->mLaunchForActivityStart:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Lnubia/twolevel/TwoLevelUtils;->isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, p1, p2}, Lnubia/twolevel/RenderThreadAdjustor;->createRenderThread(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    .line 62
    :cond_0
    return-void
.end method

.method public checkDebugModeValue(I)I
    .locals 1
    .param p1, "debugModeValue"    # I

    .line 46
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_0

    .line 47
    add-int/lit16 p1, p1, -0x3e8

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/twolevel/RenderThreadAdjustor;->mLaunchForActivityStart:Z

    .line 50
    :cond_0
    return p1
.end method

.method public seekForPreCreatedRenderThread(Ljava/lang/String;Z)Landroid/view/ThreadedRenderer;
    .locals 4
    .param p1, "surfaceName"    # Ljava/lang/String;
    .param p2, "isTranslucent"    # Z

    .line 100
    iget-object v0, p0, Lnubia/twolevel/RenderThreadAdjustor;->mPreCreatedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lnubia/twolevel/RenderThreadAdjustor;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;

    .line 102
    .local v2, "r":Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;
    iget-object v3, v2, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;->mSurfaceName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;->isTranslucent:Z

    if-ne v3, p2, :cond_0

    .line 103
    sget-object v1, Lnubia/twolevel/RenderThreadAdjustor;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, v2, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;->renderThread:Landroid/view/ThreadedRenderer;

    monitor-exit v0

    return-object v1

    .line 106
    .end local v2    # "r":Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;
    :cond_0
    goto :goto_0

    .line 107
    :cond_1
    monitor-exit v0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public storeRenderThreadInfo(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "wideGamut"    # Z

    .line 71
    if-nez p2, :cond_5

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lnubia/twolevel/RenderThreadAdjustor;->getFilesDirAbsolutePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "filesDirPath":Ljava/lang/String;
    if-nez v0, :cond_1

    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lnubia/twolevel/RenderThreadAdjustor;->mPreCreatedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnubia/twolevel/RenderThreadAdjustor;->renderThreadInfoFN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, "_RenderThreadInfoFile":Ljava/io/File;
    invoke-virtual {p0, p3, p2}, Lnubia/twolevel/RenderThreadAdjustor;->seekForPreCreatedRenderThread(Ljava/lang/String;Z)Landroid/view/ThreadedRenderer;

    move-result-object v3

    if-nez v3, :cond_4

    .line 77
    new-instance v3, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;

    invoke-direct {v3}, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;-><init>()V

    .line 78
    .local v3, "record":Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;
    iput-object p3, v3, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;->mSurfaceName:Ljava/lang/String;

    .line 79
    iput-boolean p2, v3, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;->isTranslucent:Z

    .line 80
    sget-object v4, Lnubia/twolevel/RenderThreadAdjustor;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 81
    sget-object v4, Lnubia/twolevel/RenderThreadAdjustor;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :cond_2
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v4, "bw":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 84
    :try_start_2
    sget-object v6, Lnubia/twolevel/RenderThreadAdjustor;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;

    .line 85
    .local v7, "r":Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;
    invoke-virtual {v7}, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .end local v7    # "r":Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;
    goto :goto_0

    .line 87
    :cond_3
    :try_start_3
    invoke-static {v5, v4}, Lnubia/twolevel/RenderThreadAdjustor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 87
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v6

    goto :goto_1

    .line 83
    :catch_0
    move-exception v5

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    :goto_1
    :try_start_5
    invoke-static {v5, v4}, Lnubia/twolevel/RenderThreadAdjustor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v4

    .line 88
    .local v4, "ioe":Ljava/lang/Exception;
    :try_start_6
    iget-object v5, p0, Lnubia/twolevel/RenderThreadAdjustor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add translucent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v2    # "_RenderThreadInfoFile":Ljava/io/File;
    .end local v3    # "record":Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;
    .end local v4    # "ioe":Ljava/lang/Exception;
    :cond_4
    :goto_2
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 71
    .end local v0    # "filesDirPath":Ljava/lang/String;
    :cond_5
    :goto_3
    return-void
.end method
