.class public Landroid/app/Instrumentation;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Instrumentation$Idler;,
        Landroid/app/Instrumentation$ActivityGoing;,
        Landroid/app/Instrumentation$ActivityWaiter;,
        Landroid/app/Instrumentation$SyncRunnable;,
        Landroid/app/Instrumentation$EmptyRunnable;,
        Landroid/app/Instrumentation$InstrumentationThread;,
        Landroid/app/Instrumentation$ActivityResult;,
        Landroid/app/Instrumentation$ActivityMonitor;,
        Landroid/app/Instrumentation$UiAutomationFlags;
    }
.end annotation


# static fields
.field public static final REPORT_KEY_IDENTIFIER:Ljava/lang/String; = "id"

.field public static final REPORT_KEY_STREAMRESULT:Ljava/lang/String; = "stream"

.field private static final TAG:Ljava/lang/String; = "Instrumentation"


# instance fields
.field private mActivityMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Instrumentation$ActivityMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mAutomaticPerformanceSnapshots:Z

.field private mComponent:Landroid/content/ComponentName;

.field private mInstrContext:Landroid/content/Context;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mPerfMetrics:Landroid/os/Bundle;

.field private mPerformanceCollector:Landroid/os/PerformanceCollector;

.field private mRunner:Ljava/lang/Thread;

.field private final mSync:Ljava/lang/Object;

.field private mThread:Landroid/app/ActivityThread;

.field private mUiAutomation:Landroid/app/UiAutomation;

.field private mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private mWaitingActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Instrumentation$ActivityWaiter;",
            ">;"
        }
    .end annotation
.end field

.field private mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 99
    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 114
    return-void
.end method

.method static synthetic access$100(Landroid/app/Instrumentation;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Instrumentation;

    .line 70
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    return v0
.end method

.method static synthetic access$200(Landroid/app/Instrumentation;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/app/Instrumentation;

    .line 70
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Instrumentation;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/app/Instrumentation;

    .line 70
    iget-object v0, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    return-object v0
.end method

.method private addValue(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 1795
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1796
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1797
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 1798
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1800
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 1801
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1802
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1805
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return-void
.end method

.method private checkInstrumenting(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 130
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be called outside of instrumented processes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkStartActivityResult(ILjava/lang/Object;)V
    .locals 3
    .param p0, "res"    # I
    .param p1, "intent"    # Ljava/lang/Object;

    .line 2289
    invoke-static {p0}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2290
    return-void

    .line 2293
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 2331
    :pswitch_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " when starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2322
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session calling startAssistantActivity does not match active session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2325
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start assistant activity on a hidden session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2296
    :pswitch_3
    instance-of v0, p1, Landroid/content/Intent;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2297
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find explicit activity class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 2299
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; have you declared this activity in your AndroidManifest.xml?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2301
    :cond_1
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Activity found to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2307
    :pswitch_4
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "FORWARD_RESULT_FLAG used while also requesting a result"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2304
    :pswitch_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2310
    :pswitch_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PendingIntent is not an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2328
    :pswitch_7
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity could not be started for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2313
    :pswitch_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting under voice control not allowed for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2316
    :pswitch_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session calling startVoiceActivity does not match active session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2319
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start voice activity on a hidden session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x64
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1238
    if-nez p1, :cond_0

    .line 1239
    const-string v0, "Instrumentation"

    const-string v1, "No pkg specified, disabling AppComponentFactory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    sget-object v0, Landroid/app/AppComponentFactory;->DEFAULT:Landroid/app/AppComponentFactory;

    return-object v0

    .line 1242
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    if-nez v0, :cond_1

    .line 1243
    const-string v0, "Instrumentation"

    const-string v1, "Uninitialized ActivityThread, likely app-created Instrumentation, disabling AppComponentFactory"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1245
    sget-object v0, Landroid/app/AppComponentFactory;->DEFAULT:Landroid/app/AppComponentFactory;

    return-object v0

    .line 1247
    :cond_1
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 1249
    .local v0, "apk":Landroid/app/LoadedApk;
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iget-object v0, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1250
    :cond_2
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v1

    return-object v1
.end method

.method public static newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Application;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1138
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1139
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 1140
    return-object v0
.end method

.method private postPerformCreate(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1270
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1271
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1272
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1273
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1274
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1275
    .local v3, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, p1, p1, v4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1273
    .end local v3    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1277
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1279
    :cond_1
    :goto_1
    return-void
.end method

.method private prePerformCreate(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1254
    iget-object v0, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1255
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1257
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1258
    iget-object v3, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityWaiter;

    .line 1259
    .local v3, "aw":Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, v3, Landroid/app/Instrumentation$ActivityWaiter;->intent:Landroid/content/Intent;

    .line 1260
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1261
    iput-object p1, v3, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    .line 1262
    iget-object v5, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v6, Landroid/app/Instrumentation$ActivityGoing;

    invoke-direct {v6, p0, v3}, Landroid/app/Instrumentation$ActivityGoing;-><init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V

    invoke-virtual {v5, v6}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1257
    .end local v3    # "aw":Landroid/app/Instrumentation$ActivityWaiter;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1265
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1267
    :cond_2
    :goto_1
    return-void
.end method

.method private final validateNotAppThread()V
    .locals 2

    .line 2337
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2341
    return-void

    .line 2338
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method can not be called from the main application thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acquireLooperManager(Landroid/os/Looper;)Landroid/os/TestLooperManager;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 2421
    const-string v0, "acquireLooperManager"

    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->checkInstrumenting(Ljava/lang/String;)V

    .line 2422
    new-instance v0, Landroid/os/TestLooperManager;

    invoke-direct {v0, p1}, Landroid/os/TestLooperManager;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .line 777
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 778
    .local v0, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 779
    return-object v0
.end method

.method public addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .line 800
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 801
    .local v0, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 802
    return-object v0
.end method

.method public addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 2
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .line 750
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 751
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-nez v1, :cond_0

    .line 752
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    .line 754
    :cond_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    monitor-exit v0

    .line 756
    return-void

    .line 755
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addResults(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "results"    # Landroid/os/Bundle;

    .line 215
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 217
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    nop

    .line 221
    return-void

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method final basicInit(Landroid/app/ActivityThread;)V
    .locals 0
    .param p1, "thread"    # Landroid/app/ActivityThread;

    .line 2284
    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 2285
    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .line 1289
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->prePerformCreate(Landroid/app/Activity;)V

    .line 1291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1294
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performCreate:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1297
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;)V

    .line 1299
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1300
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1303
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1304
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1305
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1306
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnCreate() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " icicle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_2
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->postPerformCreate(Landroid/app/Activity;)V

    .line 1310
    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1321
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->prePerformCreate(Landroid/app/Activity;)V

    .line 1323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1326
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performCreate:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1329
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1331
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1332
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1335
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1336
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1337
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1338
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnCreate() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " icicle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " persistentState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_2
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->postPerformCreate(Landroid/app/Activity;)V

    .line 1342
    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1361
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1364
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performDestroy:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1367
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->performDestroy()V

    .line 1369
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1370
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1373
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1374
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1375
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1376
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnDestroy() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_2
    return-void
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1510
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1512
    .local v0, "start":J
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performNewIntent(Landroid/content/Intent;)V

    .line 1514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1515
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1516
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 1517
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnNewIntent() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " intent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_0
    return-void
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Lcom/android/internal/content/ReferrerIntent;

    .line 1526
    iget-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1528
    .local v0, "oldReferrer":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1529
    :try_start_0
    iget-object v1, p2, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    goto :goto_0

    .line 1533
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1531
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, p1, v1}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1534
    nop

    .line 1535
    return-void

    .line 1533
    :goto_2
    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    throw v1
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1719
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1721
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performPause:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1723
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->performPause()V

    .line 1724
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1725
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1727
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1728
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1729
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1730
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnPause() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_2
    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .line 1451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1454
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPostCreate:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1457
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1459
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1460
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1463
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1464
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1465
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1466
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnPostCreate() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " icicle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_2
    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1481
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1484
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPostCreate:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1487
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1489
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1490
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1493
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1494
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1495
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1496
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnPostCreate() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " icicle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " persistentState"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_2
    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1573
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1576
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRestart:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1579
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->onRestart()V

    .line 1581
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1582
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1585
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1586
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1587
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1588
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnRestart() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_2
    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1393
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performRestoreInstanceState:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1396
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1398
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1399
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1402
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1403
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1404
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1405
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnRestoreInstanceState() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " savedInstanceState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_2
    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1424
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performRestoreInstanceState:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1427
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1429
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1430
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1433
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1434
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1435
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1436
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnRestoreInstanceState() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " savedInstanceState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " persistentState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_2
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1600
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Activity;->mResumed:Z

    .line 1602
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1605
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1608
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->onResume()V

    .line 1610
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1611
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1614
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1615
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1616
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1617
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnResume() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_2
    iget-object v6, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 1622
    iget-object v6, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 1623
    :try_start_0
    iget-object v7, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 1624
    .local v7, "N":I
    const/4 v8, 0x0

    .line 1624
    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_3

    .line 1625
    iget-object v9, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1626
    .local v9, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v9, p1, p1, v10}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1624
    .end local v9    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1628
    .end local v7    # "N":I
    .end local v8    # "i":I
    :cond_3
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1630
    :cond_4
    :goto_1
    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 1669
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1671
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performSaveInstanceState:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1673
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1674
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1675
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1677
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1678
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1679
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1680
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnSaveInstanceState() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " outState"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    :cond_2
    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;
    .param p3, "outPersistentState"    # Landroid/os/PersistableBundle;

    .line 1695
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1697
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performSaveInstanceState:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1699
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1700
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1701
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1703
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1704
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1705
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1706
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnSaveInstanceState() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " outState"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " outPersistentState"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_2
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1545
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1548
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStart:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1551
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->onStart()V

    .line 1553
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1554
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1557
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1558
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1559
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1560
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnStart() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_2
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1643
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStop:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1646
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->onStop()V

    .line 1648
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1649
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1652
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1653
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1654
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1655
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnStop() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_2
    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1743
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1745
    .local v0, "start":J
    invoke-virtual {p1}, Landroid/app/Activity;->performUserLeaving()V

    .line 1747
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1748
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1749
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 1750
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callActivityOnUserLeaving() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    :cond_0
    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 9
    .param p1, "app"    # Landroid/app/Application;

    .line 1156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1159
    .local v0, "start":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1162
    :cond_0
    invoke-virtual {p1}, Landroid/app/Application;->onCreate()V

    .line 1164
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1165
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1168
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1169
    .local v2, "now":J
    sub-long v4, v2, v0

    .line 1170
    .local v4, "delay":J
    sget v6, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 1171
    const-string/jumbo v6, "nubialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instrumentation callApplicationOnCreate() delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms app:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_2
    return-void
.end method

.method public checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .locals 2
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;
    .param p2, "minHits"    # I

    .line 819
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 820
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->getHits()I

    move-result v1

    if-ge v1, p2, :cond_0

    .line 822
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 824
    :cond_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 825
    monitor-exit v0

    .line 826
    const/4 v0, 0x1

    return v0

    .line 825
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public endPerformanceSnapshot()V
    .locals 1

    .line 262
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    invoke-virtual {v0}, Landroid/os/PerformanceCollector;->endSnapshot()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 265
    :cond_0
    return-void
.end method

.method public execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "options"    # Landroid/os/Bundle;

    .line 1979
    nop

    .line 1980
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 1979
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 1981
    return-void
.end method

.method public execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)I
    .locals 14
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "options"    # Landroid/os/Bundle;
    .param p7, "userId"    # I

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v11, p5

    .line 1998
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x17a

    invoke-static {v3, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 1999
    move-object/from16 v12, p2

    check-cast v12, Landroid/app/IApplicationThread;

    .line 2000
    .local v12, "whoThread":Landroid/app/IApplicationThread;
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    const/4 v13, 0x0

    if-eqz v0, :cond_4

    .line 2001
    iget-object v3, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2002
    :try_start_0
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2003
    .local v0, "N":I
    move v4, v13

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 2004
    iget-object v5, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2005
    .local v5, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v6, 0x0

    .line 2006
    .local v6, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v5}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2007
    aget-object v7, v11, v13

    invoke-virtual {v5, v7}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v7

    move-object v6, v7

    .line 2009
    :cond_0
    const/16 v7, -0x60

    if-eqz v6, :cond_1

    .line 2010
    iget v8, v5, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2011
    monitor-exit v3

    return v7

    .line 2012
    :cond_1
    const/4 v8, 0x0

    aget-object v9, v11, v13

    invoke-virtual {v5, v2, v8, v9}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2013
    iget v8, v5, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2014
    invoke-virtual {v5}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2015
    monitor-exit v3

    return v7

    .line 2003
    .end local v5    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v6    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2020
    .end local v0    # "N":I
    .end local v4    # "i":I
    :cond_3
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2023
    :cond_4
    :goto_1
    :try_start_1
    array-length v0, v11

    new-array v0, v0, [Ljava/lang/String;

    .line 2024
    .local v0, "resolvedTypes":[Ljava/lang/String;
    move v3, v13

    .local v3, "i":I
    :goto_2
    array-length v4, v11

    if-ge v3, v4, :cond_5

    .line 2025
    aget-object v4, v11, v3

    invoke-virtual {v4}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 2026
    aget-object v4, v11, v3

    invoke-virtual {v4, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2027
    aget-object v4, v11, v3

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2024
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2029
    .end local v3    # "i":I
    :cond_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2030
    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v12

    move-object v6, v11

    move-object v7, v0

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v3

    .line 2032
    .local v3, "result":I
    aget-object v4, v11, v13

    invoke-static {v3, v4}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2033
    return v3

    .line 2034
    .end local v0    # "resolvedTypes":[Ljava/lang/String;
    .end local v3    # "result":I
    :catch_0
    move-exception v0

    .line 2035
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failure from system"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 18
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v15, p5

    .line 1915
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x179

    invoke-static {v4, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 1916
    move-object/from16 v16, p2

    check-cast v16, Landroid/app/IApplicationThread;

    .line 1917
    .local v16, "whoThread":Landroid/app/IApplicationThread;
    const/4 v0, 0x0

    if-eqz v3, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    move-object v14, v4

    .line 1918
    .local v14, "referrer":Landroid/net/Uri;
    if-eqz v14, :cond_1

    .line 1919
    const-string v4, "android.intent.extra.REFERRER"

    invoke-virtual {v15, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1921
    :cond_1
    iget-object v4, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 1922
    iget-object v4, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1923
    :try_start_0
    iget-object v6, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 1924
    .local v6, "N":I
    move v7, v5

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_6

    .line 1925
    iget-object v8, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1926
    .local v8, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v9, 0x0

    .line 1927
    .local v9, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1928
    invoke-virtual {v8, v15}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v10

    move-object v9, v10

    .line 1930
    :cond_2
    if-eqz v9, :cond_3

    .line 1931
    iget v0, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1932
    monitor-exit v4

    return-object v9

    .line 1933
    :cond_3
    invoke-virtual {v8, v2, v0, v15}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1934
    iget v10, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1935
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1936
    if-ltz p6, :cond_4

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    nop

    :cond_4
    monitor-exit v4

    return-object v0

    .line 1924
    .end local v8    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v9    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1941
    .end local v6    # "N":I
    .end local v7    # "i":I
    :cond_6
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1944
    :cond_7
    :goto_2
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1945
    invoke-virtual {v15, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1954
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 1955
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    .line 1956
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1957
    if-eqz v3, :cond_8

    :try_start_2
    iget-object v7, v3, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1959
    move-object v10, v7

    goto :goto_3

    .line 1963
    :catch_0
    move-exception v0

    move-object/from16 v17, v14

    goto :goto_6

    .line 1957
    :cond_8
    nop

    .line 1959
    move-object v10, v0

    :goto_3
    :try_start_3
    sget-boolean v7, Landroid/app/ActivityThread;->sIsCompletedMakeApplication:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v7, :cond_9

    :goto_4
    move v12, v5

    goto :goto_5

    :cond_9
    const/high16 v5, -0x80000000

    goto :goto_4

    :goto_5
    const/4 v13, 0x0

    .line 1955
    move-object/from16 v5, v16

    move-object v7, v15

    move-object/from16 v9, p3

    move/from16 v11, p6

    move-object/from16 v17, v14

    move-object/from16 v14, p7

    .end local v14    # "referrer":Landroid/net/Uri;
    .local v17, "referrer":Landroid/net/Uri;
    :try_start_4
    invoke-interface/range {v4 .. v14}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v4

    .line 1962
    .local v4, "result":I
    invoke-static {v4, v15}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1965
    .end local v4    # "result":I
    nop

    .line 1966
    return-object v0

    .line 1963
    :catch_1
    move-exception v0

    goto :goto_6

    .end local v17    # "referrer":Landroid/net/Uri;
    .restart local v14    # "referrer":Landroid/net/Uri;
    :catch_2
    move-exception v0

    move-object/from16 v17, v14

    .line 1964
    .end local v14    # "referrer":Landroid/net/Uri;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "referrer":Landroid/net/Uri;
    :goto_6
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failure from system"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 17
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v14, p5

    .line 2070
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x179

    invoke-static {v3, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 2071
    move-object/from16 v15, p2

    check-cast v15, Landroid/app/IApplicationThread;

    .line 2072
    .local v15, "whoThread":Landroid/app/IApplicationThread;
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    const/4 v13, 0x0

    if-eqz v0, :cond_5

    .line 2073
    iget-object v3, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2074
    :try_start_0
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2075
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 2076
    iget-object v5, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2077
    .local v5, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v6, 0x0

    .line 2078
    .local v6, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v5}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2079
    invoke-virtual {v5, v14}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v7

    move-object v6, v7

    .line 2081
    :cond_0
    if-eqz v6, :cond_1

    .line 2082
    iget v7, v5, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2083
    monitor-exit v3

    return-object v6

    .line 2084
    :cond_1
    invoke-virtual {v5, v2, v13, v14}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2085
    iget v7, v5, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2086
    invoke-virtual {v5}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2087
    if-ltz p6, :cond_2

    invoke-virtual {v5}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v13

    nop

    :cond_2
    monitor-exit v3

    return-object v13

    .line 2075
    .end local v5    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v6    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2092
    .end local v0    # "N":I
    .end local v4    # "i":I
    :cond_4
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2095
    :cond_5
    :goto_1
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 2096
    invoke-virtual {v14, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2097
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2098
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    .line 2099
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 2098
    move-object v4, v15

    move-object v6, v14

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p6

    move-object v0, v13

    move-object/from16 v13, p7

    invoke-interface/range {v3 .. v13}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v3

    .line 2101
    .local v3, "result":I
    invoke-static {v3, v14}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2104
    .end local v3    # "result":I
    nop

    .line 2105
    return-object v0

    .line 2102
    :catch_0
    move-exception v0

    .line 2103
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failure from system"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 18
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "resultWho"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "user"    # Landroid/os/UserHandle;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p5

    .line 2138
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x179

    invoke-static {v3, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 2139
    move-object/from16 v16, p2

    check-cast v16, Landroid/app/IApplicationThread;

    .line 2140
    .local v16, "whoThread":Landroid/app/IApplicationThread;
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    const/4 v14, 0x0

    if-eqz v0, :cond_5

    .line 2141
    iget-object v3, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2142
    :try_start_0
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2143
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 2144
    iget-object v5, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2145
    .local v5, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v6, 0x0

    .line 2146
    .local v6, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v5}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2147
    invoke-virtual {v5, v15}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v7

    move-object v6, v7

    .line 2149
    :cond_0
    if-eqz v6, :cond_1

    .line 2150
    iget v7, v5, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2151
    monitor-exit v3

    return-object v6

    .line 2152
    :cond_1
    invoke-virtual {v5, v2, v14, v15}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2153
    iget v7, v5, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2154
    invoke-virtual {v5}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2155
    if-ltz p6, :cond_2

    invoke-virtual {v5}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v14

    nop

    :cond_2
    monitor-exit v3

    return-object v14

    .line 2143
    .end local v5    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v6    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2160
    .end local v0    # "N":I
    .end local v4    # "i":I
    :cond_4
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2163
    :cond_5
    :goto_1
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 2164
    invoke-virtual {v15, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2165
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2166
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    .line 2167
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 2169
    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2166
    move-object/from16 v4, v16

    move-object v6, v15

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p6

    move-object/from16 v13, p7

    move-object/from16 v17, v14

    move v14, v0

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    .line 2170
    .local v0, "result":I
    invoke-static {v0, v15}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2173
    .end local v0    # "result":I
    nop

    .line 2174
    return-object v17

    .line 2171
    :catch_0
    move-exception v0

    .line 2172
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failure from system"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;
    .locals 19
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "ignoreTargetSecurity"    # Z
    .param p9, "userId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v15, p5

    .line 2185
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x17b

    invoke-static {v4, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 2186
    move-object/from16 v17, p2

    check-cast v17, Landroid/app/IApplicationThread;

    .line 2187
    .local v17, "whoThread":Landroid/app/IApplicationThread;
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    const/4 v14, 0x0

    if-eqz v0, :cond_5

    .line 2188
    iget-object v4, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 2189
    :try_start_0
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2190
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_4

    .line 2191
    iget-object v6, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2192
    .local v6, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v7, 0x0

    .line 2193
    .local v7, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2194
    invoke-virtual {v6, v15}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    move-object v7, v8

    .line 2196
    :cond_0
    if-eqz v7, :cond_1

    .line 2197
    iget v8, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2198
    monitor-exit v4

    return-object v7

    .line 2199
    :cond_1
    invoke-virtual {v6, v2, v14, v15}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2200
    iget v8, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2201
    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2202
    if-ltz p6, :cond_2

    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v14

    nop

    :cond_2
    monitor-exit v4

    return-object v14

    .line 2190
    .end local v6    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v7    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2207
    .end local v0    # "N":I
    .end local v5    # "i":I
    :cond_4
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2210
    :cond_5
    :goto_1
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 2211
    invoke-virtual {v15, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2212
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 2213
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    .line 2214
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    .line 2215
    if-eqz v3, :cond_6

    iget-object v0, v3, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v10, v0

    goto :goto_2

    :cond_6
    move-object v10, v14

    :goto_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 2213
    move-object/from16 v5, v17

    move-object v7, v15

    move-object/from16 v9, p3

    move/from16 v11, p6

    move-object v0, v14

    move-object/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    :try_start_2
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityManager;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2217
    .local v4, "result":I
    move-object/from16 v5, p5

    :try_start_3
    invoke-static {v4, v5}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2220
    .end local v4    # "result":I
    nop

    .line 2221
    return-object v0

    .line 2218
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v5, p5

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v5, v15

    .line 2219
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Failure from system"

    invoke-direct {v4, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public execStartActivityFromAppTask(Landroid/content/Context;Landroid/os/IBinder;Landroid/app/IAppTask;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "appTask"    # Landroid/app/IAppTask;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "options"    # Landroid/os/Bundle;

    .line 2231
    invoke-virtual {p4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17c

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 2232
    move-object v0, p2

    check-cast v0, Landroid/app/IApplicationThread;

    .line 2233
    .local v0, "whoThread":Landroid/app/IApplicationThread;
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 2234
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 2235
    :try_start_0
    iget-object v2, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 2236
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 2237
    iget-object v4, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2238
    .local v4, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v5, 0x0

    .line 2239
    .local v5, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v4}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2240
    invoke-virtual {v4, p4}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v6

    move-object v5, v6

    .line 2242
    :cond_0
    if-eqz v5, :cond_1

    .line 2243
    iget v6, v4, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2244
    monitor-exit v1

    return-void

    .line 2245
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, p4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2246
    iget v6, v4, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2247
    invoke-virtual {v4}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2248
    monitor-exit v1

    return-void

    .line 2236
    .end local v4    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v5    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2253
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2256
    :cond_4
    :goto_1
    :try_start_1
    invoke-virtual {p4}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 2257
    invoke-virtual {p4, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2258
    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    .line 2259
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    .line 2258
    move-object v3, p3

    move-object v6, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/app/IAppTask;->startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    .line 2260
    .local v1, "result":I
    invoke-static {v1, p4}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2263
    .end local v1    # "result":I
    nop

    .line 2264
    return-void

    .line 2261
    :catch_0
    move-exception v1

    .line 2262
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failure from system"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public finish(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .line 234
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    .line 237
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 238
    if-nez p2, :cond_1

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p2, v0

    .line 241
    :cond_1
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 243
    :cond_2
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 244
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->disconnect()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    .line 247
    :cond_3
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread;->finishInstrumentation(ILandroid/os/Bundle;)V

    .line 248
    return-void
.end method

.method public getAllocCounts()Landroid/os/Bundle;
    .locals 4

    .line 1811
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1812
    .local v0, "results":Landroid/os/Bundle;
    const-string v1, "global_alloc_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1813
    const-string v1, "global_alloc_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1814
    const-string v1, "global_freed_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1815
    const-string v1, "global_freed_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1816
    const-string v1, "gc_invocation_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1817
    return-object v0
.end method

.method public getBinderCounts()Landroid/os/Bundle;
    .locals 4

    .line 1825
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1826
    .local v0, "results":Landroid/os/Bundle;
    const-string/jumbo v1, "sent_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1827
    const-string/jumbo v1, "received_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1828
    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 296
    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 287
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .locals 1

    .line 311
    iget-object v0, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUiAutomation()Landroid/app/UiAutomation;
    .locals 1

    .line 2367
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->getUiAutomation(I)Landroid/app/UiAutomation;

    move-result-object v0

    return-object v0
.end method

.method public getUiAutomation(I)Landroid/app/UiAutomation;
    .locals 4
    .param p1, "flags"    # I

    .line 2398
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2400
    .local v0, "mustCreateNewAutomation":Z
    :goto_1
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    if-eqz v1, :cond_4

    .line 2401
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1}, Landroid/app/UiAutomation;->getFlags()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 2402
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    return-object v1

    .line 2404
    :cond_2
    if-eqz v0, :cond_3

    .line 2405
    new-instance v1, Landroid/app/UiAutomation;

    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-direct {v1, v2, v3}, Landroid/app/UiAutomation;-><init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    iput-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    goto :goto_2

    .line 2408
    :cond_3
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1}, Landroid/app/UiAutomation;->disconnect()V

    .line 2410
    :goto_2
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1, p1}, Landroid/app/UiAutomation;->connect(I)V

    .line 2411
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    return-object v1

    .line 2413
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method final init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V
    .locals 1
    .param p1, "thread"    # Landroid/app/ActivityThread;
    .param p2, "instrContext"    # Landroid/content/Context;
    .param p3, "appContext"    # Landroid/content/Context;
    .param p4, "component"    # Landroid/content/ComponentName;
    .param p5, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p6, "uiAutomationConnection"    # Landroid/app/IUiAutomationConnection;

    .line 2270
    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 2271
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 2272
    iput-object p2, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 2273
    iput-object p3, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    .line 2274
    iput-object p4, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    .line 2275
    iput-object p5, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 2276
    iput-object p6, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 2277
    return-void
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .locals 5
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    .line 929
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 935
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 936
    .local v0, "downEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 939
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 941
    :try_start_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    nop

    .line 947
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Landroid/view/KeyEvent;-><init>(II)V

    move-object v1, v2

    .line 948
    .local v1, "upEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 951
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 975
    new-instance v2, Landroid/app/Instrumentation$1ContextMenuRunnable;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/app/Instrumentation$1ContextMenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 976
    .local v2, "cmr":Landroid/app/Instrumentation$1ContextMenuRunnable;
    invoke-virtual {p0, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 977
    iget-boolean v3, v2, Landroid/app/Instrumentation$1ContextMenuRunnable;->returnValue:Z

    return v3

    .line 942
    .end local v1    # "upEvent":Landroid/view/KeyEvent;
    .end local v2    # "cmr":Landroid/app/Instrumentation$1ContextMenuRunnable;
    :catch_0
    move-exception v1

    .line 943
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "Instrumentation"

    const-string v4, "Could not sleep for long press timeout"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 944
    return v2
.end method

.method public invokeMenuActionSync(Landroid/app/Activity;II)Z
    .locals 2
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    .line 913
    new-instance v0, Landroid/app/Instrumentation$1MenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1MenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 914
    .local v0, "mr":Landroid/app/Instrumentation$1MenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 915
    iget-boolean v1, v0, Landroid/app/Instrumentation$1MenuRunnable;->returnValue:Z

    return v1
.end method

.method public isProfiling()Z
    .locals 1

    .line 332
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 22
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "application"    # Landroid/app/Application;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "info"    # Landroid/content/pm/ActivityInfo;
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "parent"    # Landroid/app/Activity;
    .param p9, "id"    # Ljava/lang/String;
    .param p10, "lastNonConfigurationInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1202
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1203
    .local v0, "activity":Landroid/app/Activity;
    const/16 v19, 0x0

    .line 1205
    .local v19, "aThread":Landroid/app/ActivityThread;
    if-nez p4, :cond_0

    .line 1206
    new-instance v2, Landroid/app/Application;

    invoke-direct {v2}, Landroid/app/Application;-><init>()V

    move-object v1, v2

    .line 1208
    .end local p4    # "application":Landroid/app/Application;
    .local v1, "application":Landroid/app/Application;
    move-object/from16 v20, v1

    goto :goto_0

    .end local v1    # "application":Landroid/app/Application;
    .restart local p4    # "application":Landroid/app/Application;
    :cond_0
    move-object/from16 v20, p4

    .end local p4    # "application":Landroid/app/Application;
    .local v20, "application":Landroid/app/Application;
    :goto_0
    const/4 v6, 0x0

    move-object/from16 v13, p10

    check-cast v13, Landroid/app/Activity$NonConfigurationInstances;

    new-instance v14, Landroid/content/res/Configuration;

    invoke-direct {v14}, Landroid/content/res/Configuration;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v7, v20

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v18}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 1213
    return-object v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1232
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1233
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1234
    .local v0, "pkg":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/AppComponentFactory;->instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1120
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;

    move-result-object v0

    .line 1121
    invoke-virtual {v0, p1, p2}, Landroid/app/AppComponentFactory;->instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v0

    .line 1122
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 1123
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arguments"    # Landroid/os/Bundle;

    .line 148
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 272
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 0

    .line 173
    return-void
.end method

.method public removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 2
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .line 874
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 876
    monitor-exit v0

    .line 877
    return-void

    .line 876
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runner"    # Ljava/lang/Runnable;

    .line 407
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 408
    new-instance v0, Landroid/app/Instrumentation$SyncRunnable;

    invoke-direct {v0, p1}, Landroid/app/Instrumentation$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 409
    .local v0, "sr":Landroid/app/Instrumentation$SyncRunnable;
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    invoke-virtual {v0}, Landroid/app/Instrumentation$SyncRunnable;->waitForComplete()V

    .line 411
    return-void
.end method

.method public sendCharacterSync(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .line 1062
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1063
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1064
    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .locals 2
    .param p1, "key"    # I

    .line 1049
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1050
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1051
    return-void
.end method

.method public sendKeySync(Landroid/view/KeyEvent;)V
    .locals 26
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1016
    invoke-direct/range {p0 .. p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1018
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 1019
    .local v0, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 1020
    .local v2, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v17

    .line 1021
    .local v17, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    .line 1022
    .local v18, "code":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v19

    .line 1023
    .local v19, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v20

    .line 1024
    .local v20, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v21

    .line 1025
    .local v21, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v22

    .line 1026
    .local v22, "scancode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    .line 1027
    .local v4, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    .line 1028
    .local v23, "flags":I
    if-nez v4, :cond_0

    .line 1029
    const/16 v4, 0x101

    .line 1031
    .end local v4    # "source":I
    .local v24, "source":I
    :cond_0
    move/from16 v24, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 1032
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1034
    :cond_1
    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 1035
    move-wide v0, v2

    .line 1037
    :cond_2
    new-instance v25, Landroid/view/KeyEvent;

    or-int/lit8 v15, v23, 0x8

    move-object/from16 v4, v25

    move-wide v5, v0

    move-wide v7, v2

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v13, v21

    move/from16 v14, v22

    move/from16 v16, v24

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1039
    .local v4, "newEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v4, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1041
    return-void
.end method

.method public sendPointerSync(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1078
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1079
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1080
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1082
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1084
    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .line 200
    iget-object v0, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v1, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 208
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .line 987
    if-nez p1, :cond_0

    .line 988
    return-void

    .line 990
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 992
    .local v0, "keyCharacterMap":Landroid/view/KeyCharacterMap;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    .line 994
    .local v1, "events":[Landroid/view/KeyEvent;
    if-eqz v1, :cond_1

    .line 995
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1001
    aget-object v4, v1, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6, v2}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 995
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1004
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1098
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1099
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 1100
    const v0, 0x10004

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1102
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1104
    return-void
.end method

.method public setAutomaticPerformanceSnapshots()V
    .locals 1

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 252
    new-instance v0, Landroid/os/PerformanceCollector;

    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    .line 253
    return-void
.end method

.method public setInTouchMode(Z)V
    .locals 1
    .param p1, "inTouch"    # Z

    .line 367
    :try_start_0
    const-string/jumbo v0, "window"

    .line 368
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 367
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 368
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 372
    :goto_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 156
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Landroid/app/Instrumentation$InstrumentationThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/Instrumentation$InstrumentationThread;-><init>(Landroid/app/Instrumentation;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    .line 160
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 161
    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Instrumentation already started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public startActivitySync(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Activity;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 464
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x178

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 465
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 467
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v1

    .line 470
    nop

    .line 471
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 470
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 472
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_3

    .line 475
    iget-object v2, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "myProc":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 484
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 486
    new-instance v3, Landroid/app/Instrumentation$ActivityWaiter;

    invoke-direct {v3, p1}, Landroid/app/Instrumentation$ActivityWaiter;-><init>(Landroid/content/Intent;)V

    .line 488
    .local v3, "aw":Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-nez v4, :cond_0

    .line 489
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    .line 491
    :cond_0
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    goto :goto_0

    .line 498
    :catch_0
    move-exception v4

    .line 500
    :goto_0
    :try_start_2
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 502
    iget-object v4, v3, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    monitor-exit v0

    return-object v4

    .line 479
    .end local v3    # "aw":Landroid/app/Instrumentation$ActivityWaiter;
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent in process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " resolved to different process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 473
    .end local v2    # "myProc":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve activity for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 503
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startAllocCounting()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1766
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1767
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1768
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1770
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    .line 1773
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 1774
    return-void
.end method

.method public startPerformanceSnapshot()V
    .locals 2

    .line 256
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PerformanceCollector;->beginSnapshot(Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method

.method public startProfiling()V
    .locals 3

    .line 341
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProfileFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 344
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 346
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public stopAllocCounting()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1783
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1784
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1785
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1786
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 1787
    return-void
.end method

.method public stopProfiling()V
    .locals 1

    .line 352
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 355
    :cond_0
    return-void
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "recipient"    # Ljava/lang/Runnable;

    .line 382
    iget-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v1, Landroid/app/Instrumentation$Idler;

    invoke-direct {v1, p1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 383
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/Instrumentation$EmptyRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method

.method public waitForIdleSync()V
    .locals 4

    .line 392
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 393
    new-instance v0, Landroid/app/Instrumentation$Idler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    .line 394
    .local v0, "idler":Landroid/app/Instrumentation$Idler;
    iget-object v2, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-virtual {v2, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 395
    iget-object v2, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/app/Instrumentation$EmptyRunnable;

    invoke-direct {v3, v1}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    invoke-virtual {v0}, Landroid/app/Instrumentation$Idler;->waitForIdle()V

    .line 397
    return-void
.end method

.method public waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .locals 3
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .line 839
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivity()Landroid/app/Activity;

    move-result-object v0

    .line 840
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 841
    :try_start_0
    iget-object v2, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 842
    monitor-exit v1

    .line 843
    return-object v0

    .line 842
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .locals 3
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;
    .param p2, "timeOut"    # J

    .line 858
    invoke-virtual {p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivityWithTimeout(J)Landroid/app/Activity;

    move-result-object v0

    .line 859
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 860
    :try_start_0
    iget-object v2, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 861
    monitor-exit v1

    .line 862
    return-object v0

    .line 861
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
