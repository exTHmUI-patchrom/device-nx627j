.class public Lcn/nubia/server/presssensor/PressGestureListener;
.super Ljava/lang/Object;
.source "PressGestureListener.java"

# interfaces
.implements Lcn/nubia/server/presssensor/PressGestureDetector$OnHoldGestureListener;


# static fields
.field private static final SUB_TAG:Ljava/lang/String; = "[GestureListener] "

.field private static final TIMEOUT_LONG_HOLD:I = 0x1388


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisallowedCallback:Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;

.field private mHandler:Landroid/os/Handler;

.field private mHasVibrator:Z

.field private mIsAborted:Z

.field private mIsGestureStarted:Z

.field private mIsLongHoldStarted:Z

.field private mLastGesture:I

.field private mMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPressGestureCtrl:Lnubia/os/presssensor/IPressGestureCtrl;

.field private mSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/presssensor/PressSensorService;Lcn/nubia/server/presssensor/PressGestureSettings;Lcn/nubia/server/presssensor/PressGestureMutex;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/presssensor/PressSensorService;
    .param p3, "settings"    # Lcn/nubia/server/presssensor/PressGestureSettings;
    .param p4, "mutex"    # Lcn/nubia/server/presssensor/PressGestureMutex;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mContext:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p4, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    .line 49
    new-instance v0, Lcn/nubia/server/presssensor/PressGestureListener$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/presssensor/PressGestureListener$1;-><init>(Lcn/nubia/server/presssensor/PressGestureListener;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mDisallowedCallback:Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;

    .line 64
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mVibrator:Landroid/os/Vibrator;

    .line 66
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mHasVibrator:Z

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "presssensor.vibrator"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mVibratorHandler:Landroid/os/Handler;

    .line 70
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 72
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "PressSensorGesture"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 74
    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 75
    return-void
.end method

.method private abort()V
    .locals 1

    .line 170
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->isGestureFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mIsAborted:Z

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mIsLongHoldStarted:Z

    .line 176
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureListener;->notifyGesture(I)V

    .line 177
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->onGestureUp()V

    .line 178
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/presssensor/PressGestureListener;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureListener;

    .line 21
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->abort()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/presssensor/PressGestureListener;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureListener;

    .line 21
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->isGestureFinished()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/server/presssensor/PressGestureListener;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureListener;

    .line 21
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->stopPaintEgg()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/presssensor/PressGestureListener;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureListener;

    .line 21
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mHasVibrator:Z

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/server/presssensor/PressGestureListener;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureListener;

    .line 21
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method private isGestureFinished()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mIsGestureStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mIsAborted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private notifyGesture(I)V
    .locals 3
    .param p1, "gesture"    # I

    .line 266
    iput p1, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mLastGesture:I

    .line 268
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mPressGestureCtrl:Lnubia/os/presssensor/IPressGestureCtrl;

    if-nez v0, :cond_0

    .line 269
    const-string v0, "PressSensorService"

    const-string v1, "[GestureListener] gesture ctrl is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 272
    :cond_0
    const-string v0, "PressSensorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GestureListener] notify gesture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {p1}, Lnubia/os/presssensor/PressSensorManager;->getGestureLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mPressGestureCtrl:Lnubia/os/presssensor/IPressGestureCtrl;

    invoke-interface {v0, p1}, Lnubia/os/presssensor/IPressGestureCtrl;->onGesture(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PressSensorService"

    const-string v2, "[GestureListener] notify gesture error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private onGestureDown()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mVibratorHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/presssensor/PressGestureListener$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/presssensor/PressGestureListener$2;-><init>(Lcn/nubia/server/presssensor/PressGestureListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method private onGestureEnd()V
    .locals 1

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mIsGestureStarted:Z

    .line 191
    return-void
.end method

.method private onGestureStart()V
    .locals 3

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mIsGestureStarted:Z

    .line 186
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 187
    return-void
.end method

.method private onGestureUp()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mVibratorHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/presssensor/PressGestureListener$3;

    invoke-direct {v1, p0}, Lcn/nubia/server/presssensor/PressGestureListener$3;-><init>(Lcn/nubia/server/presssensor/PressGestureListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    return-void
.end method

.method private startLongHold()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isLongHoldPermited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mIsLongHoldStarted:Z

    .line 221
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureListener;->notifyGesture(I)V

    .line 223
    :cond_0
    return-void
.end method

.method private startPaintEgg()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isPaintEggPermited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureListener;->notifyGesture(I)V

    .line 240
    :cond_0
    return-void
.end method

.method private startPaintEggWaiting()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isPaintEggPermited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureListener;->notifyGesture(I)V

    .line 250
    :cond_0
    return-void
.end method

.method private stopLongHold()V
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mIsLongHoldStarted:Z

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mIsLongHoldStarted:Z

    .line 228
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureListener;->notifyGesture(I)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->isGestureFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureListener;->notifyGesture(I)V

    .line 234
    :cond_1
    :goto_0
    return-void
.end method

.method private stopPaintEgg()V
    .locals 1

    .line 243
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureListener;->notifyGesture(I)V

    .line 244
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 253
    const-string v0, "Listener:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mPressGestureCtrl:Lnubia/os/presssensor/IPressGestureCtrl;

    if-nez v0, :cond_0

    .line 255
    const-string v0, "gesture ui ctrl is null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  gesture start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mIsGestureStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  long hold start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mIsLongHoldStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  abort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mIsAborted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  has vibrator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mHasVibrator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  last gesture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mLastGesture:I

    .line 262
    invoke-static {v1}, Lnubia/os/presssensor/PressSensorManager;->getGestureLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public getDisallowedCallback()Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;
    .locals 1

    .line 78
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mDisallowedCallback:Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;

    return-object v0
.end method

.method public onHoldGesture(I)V
    .locals 3
    .param p1, "gesture"    # I

    .line 86
    const/4 v0, 0x6

    const/16 v1, 0x9

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 142
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->startPaintEggWaiting()V

    .line 143
    goto/16 :goto_2

    .line 139
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->stopPaintEgg()V

    .line 140
    goto/16 :goto_2

    .line 136
    :pswitch_3
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->startPaintEgg()V

    .line 137
    goto/16 :goto_2

    .line 153
    :pswitch_4
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->abort()V

    .line 154
    goto/16 :goto_2

    .line 157
    :pswitch_5
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->isGestureFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/presssensor/PressGestureListener;->notifyGesture(I)V

    .line 161
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->onGestureEnd()V

    .line 162
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->onGestureUp()V

    .line 163
    goto/16 :goto_2

    .line 145
    :pswitch_6
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isAllowed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 146
    iput-boolean v2, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mIsAborted:Z

    .line 147
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->onGestureStart()V

    .line 148
    invoke-direct {p0, p1}, Lcn/nubia/server/presssensor/PressGestureListener;->notifyGesture(I)V

    .line 149
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->onGestureDown()V

    goto/16 :goto_2

    .line 109
    :pswitch_7
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->isGestureFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isDoubleHoldPermited()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-direct {p0, p1}, Lcn/nubia/server/presssensor/PressGestureListener;->notifyGesture(I)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-direct {p0, v1}, Lcn/nubia/server/presssensor/PressGestureListener;->notifyGesture(I)V

    .line 117
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->onGestureEnd()V

    .line 118
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->onGestureUp()V

    .line 119
    goto :goto_2

    .line 127
    :pswitch_8
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->isGestureFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    iput-boolean v2, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mIsLongHoldStarted:Z

    .line 129
    return-void

    .line 131
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->stopLongHold()V

    .line 132
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->onGestureEnd()V

    .line 133
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->onGestureUp()V

    .line 134
    goto :goto_2

    .line 121
    :pswitch_9
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->isGestureFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    return-void

    .line 124
    :cond_4
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->startLongHold()V

    .line 125
    goto :goto_2

    .line 100
    :pswitch_a
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->isGestureFinished()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 101
    return-void

    .line 103
    :cond_5
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-virtual {v1}, Lcn/nubia/server/presssensor/PressGestureMutex;->isShortHoldPermited()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {v1}, Lcn/nubia/server/presssensor/PressGestureSettings;->isDoubleHoldEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 104
    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureListener;->notifyGesture(I)V

    .line 106
    :cond_6
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->onGestureEnd()V

    .line 107
    goto :goto_2

    .line 88
    :pswitch_b
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->isGestureFinished()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 89
    return-void

    .line 91
    :cond_7
    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-virtual {v2}, Lcn/nubia/server/presssensor/PressGestureMutex;->isShortHoldPermited()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {v2}, Lcn/nubia/server/presssensor/PressGestureSettings;->isDoubleHoldEnable()Z

    move-result v2

    if-nez v2, :cond_8

    .line 92
    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureListener;->notifyGesture(I)V

    .line 93
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->onGestureEnd()V

    goto :goto_1

    .line 95
    :cond_8
    invoke-direct {p0, v1}, Lcn/nubia/server/presssensor/PressGestureListener;->notifyGesture(I)V

    .line 97
    :goto_1
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureListener;->onGestureUp()V

    .line 98
    nop

    .line 167
    :cond_9
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setPressGestureCtrl(Lnubia/os/presssensor/IPressGestureCtrl;)V
    .locals 0
    .param p1, "controller"    # Lnubia/os/presssensor/IPressGestureCtrl;

    .line 82
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureListener;->mPressGestureCtrl:Lnubia/os/presssensor/IPressGestureCtrl;

    .line 83
    return-void
.end method
