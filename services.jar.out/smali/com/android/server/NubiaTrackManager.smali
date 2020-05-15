.class public Lcom/android/server/NubiaTrackManager;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NubiaTrackManager$TrackHandler;,
        Lcom/android/server/NubiaTrackManager$SingleInstance;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaTrackManager"

.field private static final TIEMOUT:J = 0xbb8L

.field static sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

.field static sTrackThread:Landroid/os/HandlerThread;


# instance fields
.field private isConn:Z

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    .line 25
    sput-object v0, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/server/NubiaTrackManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/NubiaTrackManager$1;-><init>(Lcom/android/server/NubiaTrackManager;)V

    iput-object v0, p0, Lcom/android/server/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NubiaTrackManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NubiaTrackManager$1;

    .line 18
    invoke-direct {p0}, Lcom/android/server/NubiaTrackManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/NubiaTrackManager;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaTrackManager;

    .line 18
    iget-object v0, p0, Lcom/android/server/NubiaTrackManager;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NubiaTrackManager;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 18
    iput-object p1, p0, Lcom/android/server/NubiaTrackManager;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/NubiaTrackManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaTrackManager;

    .line 18
    iget-boolean v0, p0, Lcom/android/server/NubiaTrackManager;->isConn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/NubiaTrackManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NubiaTrackManager;
    .param p1, "x1"    # Z

    .line 18
    iput-boolean p1, p0, Lcom/android/server/NubiaTrackManager;->isConn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/NubiaTrackManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NubiaTrackManager;

    .line 18
    invoke-direct {p0}, Lcom/android/server/NubiaTrackManager;->bindServiceInvoked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NubiaTrackManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaTrackManager;

    .line 18
    iget-object v0, p0, Lcom/android/server/NubiaTrackManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NubiaTrackManager;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaTrackManager;

    .line 18
    iget-object v0, p0, Lcom/android/server/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private bindServiceInvoked()V
    .locals 4

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.owlsystem"

    const-string v3, "cn.nubia.applearning.datacollection.DataCollectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/android/server/NubiaTrackManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/server/NubiaTrackManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 117
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/NubiaTrackManager;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/server/NubiaTrackManager$SingleInstance;->instance:Lcom/android/server/NubiaTrackManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    iput-object p1, p0, Lcom/android/server/NubiaTrackManager;->mContext:Landroid/content/Context;

    .line 127
    sget-object v0, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NubiaTrackEvent"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    .line 130
    sget-object v0, Lcom/android/server/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 131
    new-instance v0, Lcom/android/server/NubiaTrackManager$TrackHandler;

    sget-object v1, Lcom/android/server/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/NubiaTrackManager$TrackHandler;-><init>(Lcom/android/server/NubiaTrackManager;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    .line 133
    :cond_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 245
    const-string/jumbo v0, "pkgName"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 247
    sget-object v0, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 248
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 249
    sget-object v2, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    sget-object v2, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    sget-object v3, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 251
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v1, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 168
    sget-object v1, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 169
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 170
    sget-object v3, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    sget-object v3, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    sget-object v4, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 172
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # I

    .line 226
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    sget-object v1, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 231
    sget-object v1, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 232
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 233
    sget-object v3, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    sget-object v3, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    sget-object v4, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 235
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v1, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 189
    sget-object v1, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 190
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 191
    sget-object v3, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    sget-object v3, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    sget-object v4, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 193
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Z

    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    sget-object v1, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 210
    sget-object v1, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 211
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 212
    sget-object v3, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    sget-object v3, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    sget-object v4, Lcom/android/server/NubiaTrackManager;->sTrackHandler:Lcom/android/server/NubiaTrackManager$TrackHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 214
    return-void
.end method

.method public unbindServiceInvoked()V
    .locals 2

    .line 142
    sget-object v0, Lcom/android/server/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/NubiaTrackManager;->isConn:Z

    if-nez v1, :cond_0

    .line 144
    monitor-exit v0

    return-void

    .line 146
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    iget-object v0, p0, Lcom/android/server/NubiaTrackManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/server/NubiaTrackManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 150
    :cond_1
    sget-object v1, Lcom/android/server/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 151
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/server/NubiaTrackManager;->mService:Landroid/os/Messenger;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NubiaTrackManager;->isConn:Z

    .line 153
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 146
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
