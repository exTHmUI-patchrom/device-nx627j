.class public final Landroid/app/UiAutomation;
.super Ljava/lang/Object;
.source "UiAutomation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;,
        Landroid/app/UiAutomation$AccessibilityEventFilter;,
        Landroid/app/UiAutomation$OnAccessibilityEventListener;
    }
.end annotation


# static fields
.field private static final CONNECTION_ID_UNDEFINED:I = -0x1

.field private static final CONNECT_TIMEOUT_MILLIS:J = 0x1388L

.field private static final DEBUG:Z = false

.field public static final FLAG_DONT_SUPPRESS_ACCESSIBILITY_SERVICES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final ROTATION_FREEZE_0:I = 0x0

.field public static final ROTATION_FREEZE_180:I = 0x2

.field public static final ROTATION_FREEZE_270:I = 0x3

.field public static final ROTATION_FREEZE_90:I = 0x1

.field public static final ROTATION_FREEZE_CURRENT:I = -0x1

.field public static final ROTATION_UNFREEZE:I = -0x2


# instance fields
.field private mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mConnectionId:I

.field private final mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field private mIsConnecting:Z

.field private mIsDestroyed:Z

.field private mLastEventTimeMillis:J

.field private final mLocalCallbackHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

.field private mRemoteCallbackThread:Landroid/os/HandlerThread;

.field private final mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private mWaitingForEventDelivery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const-class v0, Landroid/app/UiAutomation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "connection"    # Landroid/app/IUiAutomationConnection;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 194
    if-eqz p1, :cond_1

    .line 197
    if-eqz p2, :cond_0

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/UiAutomation;->mLocalCallbackHandler:Landroid/os/Handler;

    .line 201
    iput-object p2, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 202
    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Looper cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/app/UiAutomation;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/app/UiAutomation;

    .line 84
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/UiAutomation;I)I
    .locals 0
    .param p0, "x0"    # Landroid/app/UiAutomation;
    .param p1, "x1"    # I

    .line 84
    iput p1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    return p1
.end method

.method static synthetic access$202(Landroid/app/UiAutomation;J)J
    .locals 0
    .param p0, "x0"    # Landroid/app/UiAutomation;
    .param p1, "x1"    # J

    .line 84
    iput-wide p1, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$300(Landroid/app/UiAutomation;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/UiAutomation;

    .line 84
    iget-boolean v0, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    return v0
.end method

.method static synthetic access$400(Landroid/app/UiAutomation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/app/UiAutomation;

    .line 84
    iget-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/app/UiAutomation;

    .line 84
    iget-object v0, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/UiAutomation;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/app/UiAutomation;

    .line 84
    iget-object v0, p0, Landroid/app/UiAutomation;->mLocalCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getDegreesForRotation(I)F
    .locals 1
    .param p0, "value"    # I

    .line 1085
    packed-switch p0, :pswitch_data_0

    .line 1095
    const/4 v0, 0x0

    return v0

    .line 1093
    :pswitch_0
    const/high16 v0, 0x42b40000    # 90.0f

    return v0

    .line 1090
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    return v0

    .line 1087
    :pswitch_2
    const/high16 v0, 0x43870000    # 270.0f

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isConnectedLocked()Z
    .locals 2

    .line 1101
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private throwIfConnectedLocked()V
    .locals 2

    .line 1105
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1108
    return-void

    .line 1106
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UiAutomation not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfNotConnectedLocked()V
    .locals 2

    .line 1111
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    return-void

    .line 1112
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UiAutomation not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private warnIfBetterCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 1117
    const-string/jumbo v0, "pm grant "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "UiAutomation.grantRuntimePermission() is more robust and should be used instead of \'pm grant\'"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1120
    :cond_0
    const-string/jumbo v0, "pm revoke "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1121
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "UiAutomation.revokeRuntimePermission() is more robust and should be used instead of \'pm revoke\'"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clearWindowAnimationFrameStats()V
    .locals 3

    .line 842
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 844
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->clearWindowAnimationFrameStats()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 853
    goto :goto_0

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error clearing window animation frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 854
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 844
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public clearWindowContentFrameStats(I)Z
    .locals 3
    .param p1, "windowId"    # I

    .line 772
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 774
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->clearWindowContentFrameStats(I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error clearing window content frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    .line 774
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public connect()V
    .locals 1

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/UiAutomation;->connect(I)V

    .line 211
    return-void
.end method

.method public connect(I)V
    .locals 10
    .param p1, "flags"    # I

    .line 221
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfConnectedLocked()V

    .line 223
    iget-boolean v1, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    if-eqz v1, :cond_0

    .line 224
    monitor-exit v0

    return-void

    .line 226
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    .line 227
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "UiAutomation"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    .line 228
    iget-object v1, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 229
    new-instance v1, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;

    iget-object v2, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 230
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 234
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    iget-object v1, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, v1, p1}, Landroid/app/IUiAutomationConnection;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 235
    iput p1, p0, Landroid/app/UiAutomation;->mFlags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    nop

    .line 240
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 244
    .local v1, "startTimeMillis":J
    :goto_0
    const/4 v3, 0x0

    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_1

    .line 245
    nop

    .line 259
    :try_start_4
    iput-boolean v3, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    .line 260
    nop

    .line 261
    .end local v1    # "startTimeMillis":J
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 262
    return-void

    .line 247
    .restart local v1    # "startTimeMillis":J
    :cond_1
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-long/2addr v4, v1

    .line 248
    .local v4, "elapsedTimeMillis":J
    const-wide/16 v6, 0x1388

    sub-long/2addr v6, v4

    .line 249
    .local v6, "remainingTimeMillis":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    .line 253
    :try_start_6
    iget-object v8, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v8, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 256
    goto :goto_1

    .line 254
    :catch_0
    move-exception v3

    .line 257
    .end local v4    # "elapsedTimeMillis":J
    .end local v6    # "remainingTimeMillis":J
    :goto_1
    goto :goto_0

    .line 250
    .restart local v4    # "elapsedTimeMillis":J
    .restart local v6    # "remainingTimeMillis":J
    :cond_2
    :try_start_7
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Error while connecting UiAutomation"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 259
    .end local v4    # "elapsedTimeMillis":J
    .end local v6    # "remainingTimeMillis":J
    :catchall_0
    move-exception v4

    :try_start_8
    iput-boolean v3, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    throw v4

    .line 261
    .end local v1    # "startTimeMillis":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1

    .line 236
    :catch_1
    move-exception v0

    .line 237
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error while connecting UiAutomation"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 230
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1
.end method

.method public destroy()V
    .locals 1

    .line 345
    invoke-virtual {p0}, Landroid/app/UiAutomation;->disconnect()V

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    .line 347
    return-void
.end method

.method public disconnect()V
    .locals 4

    .line 281
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    iget-boolean v1, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    if-nez v1, :cond_0

    .line 286
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 287
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 288
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 291
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->disconnect()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    iget-object v1, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 296
    iput-object v0, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    .line 297
    nop

    .line 298
    return-void

    .line 295
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error while disconnecting UiAutomation"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    iget-object v2, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 296
    iput-object v0, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    throw v1

    .line 283
    :cond_0
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot call disconnect() while connecting!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 19
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 581
    move-wide/from16 v2, p3

    iget-object v4, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 582
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 583
    iget-object v0, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 586
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 593
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 595
    .local v5, "executionStartTimeMillis":J
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 602
    .local v7, "receivedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    const/4 v4, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 604
    .local v8, "startTimeMillis":J
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 605
    .local v10, "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    iget-object v11, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 606
    :try_start_2
    iget-object v0, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 607
    iget-object v0, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 608
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 610
    :goto_1
    :try_start_3
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-nez v0, :cond_3

    .line 611
    :try_start_4
    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    move-object v11, v0

    .line 613
    .local v11, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    cmp-long v0, v12, v5

    if-gez v0, :cond_0

    .line 614
    goto :goto_1

    .line 616
    :cond_0
    move-object/from16 v12, p2

    :try_start_5
    invoke-interface {v12, v11}, Landroid/app/UiAutomation$AccessibilityEventFilter;->accept(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_2

    .line 617
    nop

    .line 639
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    .line 640
    .local v13, "size":I
    move v0, v4

    .local v0, "i":I
    :goto_2
    if-ge v0, v13, :cond_1

    .line 641
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 640
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 644
    .end local v0    # "i":I
    :cond_1
    iget-object v14, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 645
    :try_start_6
    iput-boolean v4, v1, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 646
    iget-object v0, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 647
    iget-object v0, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 648
    monitor-exit v14

    .line 617
    .end local v13    # "size":I
    return-object v11

    .line 648
    .restart local v13    # "size":I
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 619
    .end local v13    # "size":I
    :cond_2
    :try_start_7
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 620
    .end local v11    # "event":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_1

    .line 639
    .end local v8    # "startTimeMillis":J
    .end local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v12, p2

    .end local v5    # "executionStartTimeMillis":J
    .local v15, "executionStartTimeMillis":J
    :goto_3
    move-wide v15, v5

    goto :goto_7

    .line 622
    .end local v15    # "executionStartTimeMillis":J
    .restart local v5    # "executionStartTimeMillis":J
    .restart local v8    # "startTimeMillis":J
    .restart local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    :cond_3
    move-object/from16 v12, p2

    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    sub-long/2addr v13, v8

    .line 623
    .local v13, "elapsedTimeMillis":J
    move-wide v15, v5

    sub-long v4, v2, v13

    .line 624
    .end local v5    # "executionStartTimeMillis":J
    .local v4, "remainingTimeMillis":J
    .restart local v15    # "executionStartTimeMillis":J
    const-wide/16 v17, 0x0

    cmp-long v0, v4, v17

    if-lez v0, :cond_5

    .line 628
    :try_start_9
    iget-object v6, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 629
    :try_start_a
    iget-object v0, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v0, :cond_4

    .line 631
    :try_start_b
    iget-object v0, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 634
    goto :goto_4

    .line 632
    :catch_0
    move-exception v0

    .line 636
    :cond_4
    :goto_4
    :try_start_c
    monitor-exit v6

    .line 637
    .end local v4    # "remainingTimeMillis":J
    .end local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v13    # "elapsedTimeMillis":J
    nop

    .line 602
    move-wide v5, v15

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 636
    .restart local v4    # "remainingTimeMillis":J
    .restart local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .restart local v13    # "elapsedTimeMillis":J
    :catchall_3
    move-exception v0

    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0

    .line 625
    :cond_5
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected event not received within: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " ms among: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 639
    .end local v4    # "remainingTimeMillis":J
    .end local v8    # "startTimeMillis":J
    .end local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v13    # "elapsedTimeMillis":J
    .end local v15    # "executionStartTimeMillis":J
    .restart local v5    # "executionStartTimeMillis":J
    :catchall_4
    move-exception v0

    goto :goto_6

    .line 608
    .restart local v8    # "startTimeMillis":J
    .restart local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v12, p2

    move-wide v15, v5

    .end local v5    # "executionStartTimeMillis":J
    .restart local v15    # "executionStartTimeMillis":J
    :goto_5
    :try_start_e
    monitor-exit v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 639
    .end local v8    # "startTimeMillis":J
    .end local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    :catchall_6
    move-exception v0

    goto :goto_7

    .line 608
    .restart local v8    # "startTimeMillis":J
    .restart local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    :catchall_7
    move-exception v0

    goto :goto_5

    .line 639
    .end local v8    # "startTimeMillis":J
    .end local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v15    # "executionStartTimeMillis":J
    .restart local v5    # "executionStartTimeMillis":J
    :catchall_8
    move-exception v0

    move-object/from16 v12, p2

    :goto_6
    move-wide v15, v5

    .end local v5    # "executionStartTimeMillis":J
    .restart local v15    # "executionStartTimeMillis":J
    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 640
    .local v5, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v5, :cond_6

    .line 641
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 640
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 644
    .end local v4    # "i":I
    :cond_6
    iget-object v6, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 645
    const/4 v4, 0x0

    :try_start_10
    iput-boolean v4, v1, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 646
    iget-object v4, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 647
    iget-object v4, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 648
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 649
    .end local v5    # "size":I
    throw v0

    .line 648
    .restart local v5    # "size":I
    :catchall_9
    move-exception v0

    :try_start_11
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    throw v0

    .line 586
    .end local v5    # "size":I
    .end local v7    # "receivedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v15    # "executionStartTimeMillis":J
    :catchall_a
    move-exception v0

    move-object/from16 v12, p2

    :goto_9
    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_9
.end method

.method public executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .line 1004
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1005
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 1006
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1007
    invoke-direct {p0, p1}, Landroid/app/UiAutomation;->warnIfBetterCommand(Ljava/lang/String;)V

    .line 1009
    const/4 v0, 0x0

    .line 1010
    .local v0, "source":Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    move-object v2, v1

    .line 1013
    .local v2, "sink":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1014
    .local v3, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    move-object v0, v4

    .line 1015
    const/4 v4, 0x1

    aget-object v4, v3, v4

    move-object v2, v4

    .line 1018
    iget-object v4, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v4, p1, v2, v1}, Landroid/app/IUiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "pipe":[Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 1024
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1021
    :catch_0
    move-exception v1

    .line 1022
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_2
    sget-object v3, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error executing shell command!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 1019
    :catch_1
    move-exception v1

    .line 1020
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v3, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error executing shell command!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1024
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1025
    nop

    .line 1027
    return-object v0

    .line 1024
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 1006
    .end local v0    # "source":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "sink":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public executeShellCommandRw(Ljava/lang/String;)[Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "command"    # Ljava/lang/String;

    .line 1047
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1048
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 1049
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1050
    invoke-direct {p0, p1}, Landroid/app/UiAutomation;->warnIfBetterCommand(Ljava/lang/String;)V

    .line 1052
    const/4 v0, 0x0

    .line 1053
    .local v0, "source_read":Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    .line 1055
    .local v1, "sink_read":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 1056
    .local v2, "source_write":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 1059
    .local v3, "sink_write":Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 1060
    .local v6, "pipe_read":[Landroid/os/ParcelFileDescriptor;
    aget-object v7, v6, v5

    move-object v0, v7

    .line 1061
    aget-object v7, v6, v4

    move-object v1, v7

    .line 1063
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 1064
    .local v7, "pipe_write":[Landroid/os/ParcelFileDescriptor;
    aget-object v8, v7, v5

    move-object v2, v8

    .line 1065
    aget-object v8, v7, v4

    move-object v3, v8

    .line 1068
    iget-object v8, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v8, p1, v1, v2}, Landroid/app/IUiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "pipe_read":[Landroid/os/ParcelFileDescriptor;
    .end local v7    # "pipe_write":[Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 1074
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 1071
    :catch_0
    move-exception v6

    .line 1072
    .local v6, "re":Landroid/os/RemoteException;
    :try_start_2
    sget-object v7, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Error executing shell command!"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v6    # "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 1069
    :catch_1
    move-exception v6

    .line 1070
    .local v6, "ioe":Ljava/io/IOException;
    sget-object v7, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Error executing shell command!"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1074
    .end local v6    # "ioe":Ljava/io/IOException;
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1075
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1076
    nop

    .line 1078
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/os/ParcelFileDescriptor;

    .line 1079
    .local v6, "result":[Landroid/os/ParcelFileDescriptor;
    aput-object v0, v6, v5

    .line 1080
    aput-object v3, v6, v4

    .line 1081
    return-object v6

    .line 1074
    .end local v6    # "result":[Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1075
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 1049
    .end local v0    # "source_read":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "sink_read":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "source_write":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "sink_write":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "focus"    # I

    .line 398
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v2, -0x2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionId()I
    .locals 2

    .line 308
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 310
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    monitor-exit v0

    return v1

    .line 311
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFlags()I
    .locals 1

    .line 272
    iget v0, p0, Landroid/app/UiAutomation;->mFlags:I

    return v0
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 489
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 491
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 492
    .local v1, "connectionId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 495
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 494
    return-object v0

    .line 492
    .end local v1    # "connectionId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 4

    .line 413
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 415
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 416
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 417
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    if-eqz v1, :cond_0

    .line 421
    :try_start_1
    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while getting AccessibilityServiceInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 417
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .locals 3

    .line 884
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 886
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error getting window animation frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0

    .line 886
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .locals 3
    .param p1, "windowId"    # I

    .line 817
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 818
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 819
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error getting window content frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0

    .line 819
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getWindows()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 475
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 476
    .local v1, "connectionId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 479
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindows(I)Ljava/util/List;

    move-result-object v0

    .line 478
    return-object v0

    .line 476
    .end local v1    # "connectionId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .line 906
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/UiAutomation;->grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 907
    return-void
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 918
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/UiAutomation;->grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 919
    const/4 v0, 0x1

    return v0
.end method

.method public grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 930
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 931
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 932
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 939
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 938
    invoke-interface {v0, p1, p2, v1}, Landroid/app/IUiAutomationConnection;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 942
    nop

    .line 943
    return-void

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Error granting runtime permission"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 932
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    .line 508
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 510
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1, p2}, Landroid/app/IUiAutomationConnection;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while injecting input event!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    .line 510
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isDestroyed()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    return v0
.end method

.method public final performGlobalAction(I)Z
    .locals 4
    .param p1, "action"    # I

    .line 364
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 366
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 367
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 368
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    if-eqz v1, :cond_0

    .line 372
    :try_start_1
    invoke-interface {v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while calling performGlobalAction"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 368
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .line 952
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/UiAutomation;->revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 953
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 964
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/UiAutomation;->revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 965
    const/4 v0, 0x1

    return v0
.end method

.method public revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 976
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 978
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 985
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 984
    invoke-interface {v0, p1, p2, v1}, Landroid/app/IUiAutomationConnection;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 988
    nop

    .line 989
    return-void

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Error granting runtime permission"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 978
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .line 332
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iput-object p1, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .line 334
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRotation(I)Z
    .locals 3
    .param p1, "rotation"    # I

    .line 540
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 542
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    packed-switch p1, :pswitch_data_0

    .line 559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rotation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->setRotation(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 553
    const/4 v0, 0x1

    return v0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while setting rotation!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    .line 542
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRunAsMonkey(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 747
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 748
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 749
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setUserIsMonkey(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 754
    goto :goto_0

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while setting run as monkey!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 749
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 439
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 441
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V

    .line 442
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 443
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 444
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    if-eqz v1, :cond_0

    .line 448
    :try_start_1
    invoke-interface {v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 451
    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while setting AccessibilityServiceInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 444
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .locals 10

    .line 708
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 710
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 712
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 713
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 714
    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 716
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 719
    .local v3, "rotation":I
    const/4 v4, 0x0

    move-object v5, v4

    .line 722
    .local v5, "screenShot":Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v6, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Point;->x:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v1, v1, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v6, v7, v3}, Landroid/app/IUiAutomationConnection;->takeScreenshot(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v6

    .line 724
    if-nez v5, :cond_0

    .line 725
    return-object v4

    .line 730
    :cond_0
    nop

    .line 733
    invoke-virtual {v5, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 735
    return-object v5

    .line 727
    :catch_0
    move-exception v1

    .line 728
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v6, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Error while taking screnshot!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 729
    return-object v4

    .line 710
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "displaySize":Landroid/graphics/Point;
    .end local v3    # "rotation":I
    .end local v5    # "screenShot":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public waitForIdle(JJ)V
    .locals 21
    .param p1, "idleTimeoutMillis"    # J
    .param p3, "globalTimeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 668
    move-wide/from16 v4, p3

    iget-object v6, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 669
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 671
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 672
    .local v7, "startTimeMillis":J
    iget-wide v9, v1, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-gtz v0, :cond_0

    .line 673
    iput-wide v7, v1, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    .line 677
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 679
    .local v9, "currentTimeMillis":J
    sub-long v13, v9, v7

    .line 680
    .local v13, "elapsedGlobalTimeMillis":J
    sub-long v15, v4, v13

    .line 682
    .local v15, "remainingGlobalTimeMillis":J
    cmp-long v0, v15, v11

    if-lez v0, :cond_2

    .line 688
    iget-wide v11, v1, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    sub-long v11, v9, v11

    .line 689
    .local v11, "elapsedIdleTimeMillis":J
    move-wide/from16 v19, v7

    sub-long v7, v2, v11

    .line 690
    .local v7, "remainingIdleTimeMillis":J
    .local v19, "startTimeMillis":J
    const-wide/16 v17, 0x0

    cmp-long v0, v7, v17

    if-gtz v0, :cond_1

    .line 691
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 694
    :cond_1
    :try_start_1
    iget-object v0, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    goto :goto_1

    .line 695
    :catch_0
    move-exception v0

    .line 698
    .end local v7    # "remainingIdleTimeMillis":J
    .end local v9    # "currentTimeMillis":J
    .end local v11    # "elapsedIdleTimeMillis":J
    .end local v13    # "elapsedGlobalTimeMillis":J
    .end local v15    # "remainingGlobalTimeMillis":J
    :goto_1
    nop

    .line 677
    move-wide/from16 v11, v17

    move-wide/from16 v7, v19

    goto :goto_0

    .line 683
    .end local v19    # "startTimeMillis":J
    .local v7, "startTimeMillis":J
    .restart local v9    # "currentTimeMillis":J
    .restart local v13    # "elapsedGlobalTimeMillis":J
    .restart local v15    # "remainingGlobalTimeMillis":J
    :cond_2
    move-wide/from16 v19, v7

    .end local v7    # "startTimeMillis":J
    .restart local v19    # "startTimeMillis":J
    :try_start_2
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No idle state with idle timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " within global timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    .end local v9    # "currentTimeMillis":J
    .end local v13    # "elapsedGlobalTimeMillis":J
    .end local v15    # "remainingGlobalTimeMillis":J
    .end local v19    # "startTimeMillis":J
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
