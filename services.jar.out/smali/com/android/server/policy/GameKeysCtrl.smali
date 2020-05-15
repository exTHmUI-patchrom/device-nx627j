.class public Lcom/android/server/policy/GameKeysCtrl;
.super Ljava/lang/Object;
.source "GameKeysCtrl.java"

# interfaces
.implements Lcom/android/server/policy/ISettingListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GameKeysCtrl"


# instance fields
.field private final DEBUG:Z

.field private isGameKeyOpend:Z

.field private isPopWindowShowing:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mDuration100:I

.field private final mDuration116:I

.field private final mDuration150:I

.field private final mDuration300:I

.field private final mDuration350:I

.field private final mDuration500:I

.field private final mDuration66:I

.field private final mDuration800:I

.field private final mDuration900:I

.field private mGameBack:Landroid/widget/LinearLayout;

.field private mGameCircle:Landroid/widget/ImageView;

.field private mGameIcon:Landroid/widget/ImageView;

.field private mGameKeysHelper:Lcn/nubia/game/GameKeysHelper;

.field private mGameModeHelper:Lcn/nubia/game/GameModeHelper;

.field private mGameTxt:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsSupportGameKeys:Z

.field private mKm:Landroid/app/KeyguardManager;

.field private mRemovePopWindowRunnable:Ljava/lang/Runnable;

.field private mScale:F

.field private mVibrator:Landroid/os/Vibrator;

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "GameKeysCtrl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->DEBUG:Z

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->isPopWindowShowing:Z

    .line 45
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mHandler:Landroid/os/Handler;

    .line 49
    iput-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->isGameKeyOpend:Z

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mWorkHandler:Landroid/os/Handler;

    .line 52
    iput-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mIsSupportGameKeys:Z

    .line 213
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mScale:F

    .line 214
    const/16 v0, 0x42

    iput v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mDuration66:I

    .line 215
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mDuration100:I

    .line 216
    const/16 v0, 0x74

    iput v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mDuration116:I

    .line 217
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mDuration150:I

    .line 218
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mDuration300:I

    .line 219
    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mDuration350:I

    .line 220
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mDuration500:I

    .line 221
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mDuration800:I

    .line 222
    const/16 v0, 0x384

    iput v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mDuration900:I

    .line 57
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->IsSupportGameKeys()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mIsSupportGameKeys:Z

    .line 58
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mIsSupportGameKeys:Z

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    iput-object p2, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcn/nubia/game/GameKeysHelper;->getDefault()Lcn/nubia/game/GameKeysHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameKeysHelper:Lcn/nubia/game/GameKeysHelper;

    .line 63
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->getDefault()Lcn/nubia/game/GameModeHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameModeHelper:Lcn/nubia/game/GameModeHelper;

    .line 64
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mVibrator:Landroid/os/Vibrator;

    .line 65
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mAudioManager:Landroid/media/AudioManager;

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GameKeysCtrl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "mWorkHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mWorkHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/GameKeysCtrl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/GameKeysCtrl;)Lcn/nubia/game/GameKeysHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameKeysHelper:Lcn/nubia/game/GameKeysHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/GameKeysCtrl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/policy/GameKeysCtrl;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;
    .param p1, "x1"    # Landroid/view/View;

    .line 37
    iput-object p1, p0, Lcom/android/server/policy/GameKeysCtrl;->mView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/policy/GameKeysCtrl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 37
    invoke-direct {p0}, Lcom/android/server/policy/GameKeysCtrl;->setUpPopWindowView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/policy/GameKeysCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/android/server/policy/GameKeysCtrl;->isPopWindowShowing:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/policy/GameKeysCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 37
    invoke-direct {p0}, Lcom/android/server/policy/GameKeysCtrl;->startOpenAni()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/policy/GameKeysCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 37
    invoke-direct {p0}, Lcom/android/server/policy/GameKeysCtrl;->startCloseAni()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/GameKeysCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 37
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/GameKeysCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 37
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->isGameKeyOpend:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/policy/GameKeysCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/android/server/policy/GameKeysCtrl;->isGameKeyOpend:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/GameKeysCtrl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;
    .param p1, "x1"    # Z

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/policy/GameKeysCtrl;->isOpenGameKeysDB(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/GameKeysCtrl;)Lcn/nubia/game/GameModeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameModeHelper:Lcn/nubia/game/GameModeHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/GameKeysCtrl;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/GameKeysCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 37
    invoke-direct {p0}, Lcom/android/server/policy/GameKeysCtrl;->sendTraceMessage()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/policy/GameKeysCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 37
    invoke-direct {p0}, Lcom/android/server/policy/GameKeysCtrl;->removePopWindow()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/policy/GameKeysCtrl;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/policy/GameKeysCtrl;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameKeysCtrl;
    .param p1, "x1"    # Landroid/view/WindowManager;

    .line 37
    iput-object p1, p0, Lcom/android/server/policy/GameKeysCtrl;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method private dpToPx(I)I
    .locals 2
    .param p1, "dp"    # I

    .line 339
    int-to-float v0, p1

    iget v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "s"    # F
    .param p4, "e"    # F
    .param p5, "duration"    # I
    .param p6, "delay"    # I

    .line 332
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 333
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    int-to-long v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 334
    int-to-long v1, p6

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 335
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameBack:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 290
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 291
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameCircle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 292
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 293
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameCircle:Landroid/widget/ImageView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 294
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 295
    return-void
.end method

.method private isOpenGameKeysDB(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/GameKeysCtrl$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/GameKeysCtrl$2;-><init>(Lcom/android/server/policy/GameKeysCtrl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private removePopWindow()V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameKeysCtrl"

    const-string/jumbo v1, "remove the pop window"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->isPopWindowShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->isPopWindowShowing:Z

    .line 197
    :cond_1
    return-void
.end method

.method private removePopWindowAtTime(I)V
    .locals 4
    .param p1, "delay"    # I

    .line 200
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mRemovePopWindowRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 201
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameKeysCtrl"

    const-string/jumbo v1, "removePopWindowAtTime removeCallbacks"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mRemovePopWindowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/GameKeysCtrl$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GameKeysCtrl$3;-><init>(Lcom/android/server/policy/GameKeysCtrl;)V

    iput-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mRemovePopWindowRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    return-void
.end method

.method private sendTraceMessage()V
    .locals 3

    .line 184
    :try_start_0
    invoke-static {}, Lcom/android/server/NubiaTrackManager;->getInstance()Lcom/android/server/NubiaTrackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/NubiaTrackManager;->init(Landroid/content/Context;)V

    .line 185
    invoke-static {}, Lcom/android/server/NubiaTrackManager;->getInstance()Lcom/android/server/NubiaTrackManager;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "gamemode_launch_esport"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setUpPopWindowView()Landroid/view/View;
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x30a002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, "view":Landroid/view/View;
    const v1, 0x3080042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameBack:Landroid/widget/LinearLayout;

    .line 231
    const v1, 0x3080045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameTxt:Landroid/widget/TextView;

    .line 232
    const v1, 0x3080043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameCircle:Landroid/widget/ImageView;

    .line 233
    const v1, 0x3080044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameIcon:Landroid/widget/ImageView;

    .line 234
    iget-boolean v1, p0, Lcom/android/server/policy/GameKeysCtrl;->isGameKeyOpend:Z

    if-eqz v1, :cond_1

    .line 235
    sget-boolean v1, Lcn/nubia/game/GameKeysHelper;->VIRTUAL_GAME_KEY_CONFIG:Z

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameTxt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    const v3, 0x30c008a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    const v3, 0x3070064

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameTxt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    const v3, 0x30c0029

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    const v3, 0x3070063

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameCircle:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 244
    :cond_1
    sget-boolean v1, Lcn/nubia/game/GameKeysHelper;->VIRTUAL_GAME_KEY_CONFIG:Z

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameTxt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    const v3, 0x30c0089

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    const v3, 0x3070062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 248
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameTxt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    const v3, 0x30c0028

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    const v3, 0x3070061

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameCircle:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    :goto_2
    invoke-direct {p0}, Lcom/android/server/policy/GameKeysCtrl;->initView()V

    .line 254
    return-object v0
.end method

.method private showPopWindow()V
    .locals 2

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/GameKeysCtrl$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GameKeysCtrl$4;-><init>(Lcom/android/server/policy/GameKeysCtrl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private startCloseAni()V
    .locals 8

    .line 320
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameBack:Landroid/widget/LinearLayout;

    const-string v2, "alpha"

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xa0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 321
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameBack:Landroid/widget/LinearLayout;

    const-string v3, "alpha"

    const/4 v5, 0x0

    const/16 v6, 0x12c

    const/16 v7, 0x1f4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 323
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameTxt:Landroid/widget/TextView;

    const-string v3, "alpha"

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x96

    const/16 v7, 0x1e

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 324
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameTxt:Landroid/widget/TextView;

    const-string v3, "alpha"

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0x42

    const/16 v7, 0x28a

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 326
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameIcon:Landroid/widget/ImageView;

    const-string v3, "alpha"

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0xa0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 327
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameIcon:Landroid/widget/ImageView;

    const-string v3, "alpha"

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0x12c

    const/16 v7, 0x1f4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 328
    return-void
.end method

.method private startOpenAni()V
    .locals 11

    .line 298
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameBack:Landroid/widget/LinearLayout;

    const-string v2, "alpha"

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x74

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 299
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameBack:Landroid/widget/LinearLayout;

    const-string v3, "alpha"

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/16 v7, 0x384

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 301
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameTxt:Landroid/widget/TextView;

    const-string v3, "alpha"

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x74

    const/16 v7, 0x64

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 302
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameTxt:Landroid/widget/TextView;

    const-string v3, "alpha"

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/16 v7, 0x384

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 304
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameIcon:Landroid/widget/ImageView;

    const-string v3, "alpha"

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x74

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 305
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameIcon:Landroid/widget/ImageView;

    const-string v3, "alpha"

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/16 v7, 0x320

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 307
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 308
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameCircle:Landroid/widget/ImageView;

    const-string v3, "alpha"

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x1f4

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 309
    .local v1, "alphaAnimator":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameCircle:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x15e

    const/16 v8, 0x320

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 311
    .local v2, "alphaAnimator2":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameCircle:Landroid/widget/ImageView;

    const-string/jumbo v5, "scaleX"

    const v6, 0x3f333333    # 0.7f

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0xfa

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 313
    .local v3, "scaleXAnimator":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameCircle:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    const v7, 0x3f333333    # 0.7f

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0xfa

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GameKeysCtrl;->getAniWithView(Landroid/view/View;Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 315
    .local v4, "scaleYAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 316
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 317
    return-void
.end method


# virtual methods
.method public notifyGameSwitchChanged(JZZ)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "gameSwitch"    # Z
    .param p4, "isScreenOn"    # Z

    .line 72
    const-string v0, "GameKeysCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gameSwitch:="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isScreenOn:="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-nez p4, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    if-eqz p3, :cond_1

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->isGameKeyOpend:Z

    .line 78
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->isGameKeyOpend:Z

    invoke-direct {p0, v0}, Lcom/android/server/policy/GameKeysCtrl;->isOpenGameKeysDB(Z)V

    .line 79
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->isGameAppOnForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-direct {p0}, Lcom/android/server/policy/GameKeysCtrl;->showPopWindow()V

    .line 81
    const/16 v0, 0x4ec

    invoke-direct {p0, v0}, Lcom/android/server/policy/GameKeysCtrl;->removePopWindowAtTime(I)V

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->isGameKeyOpend:Z

    .line 85
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->isGameKeyOpend:Z

    invoke-direct {p0, v0}, Lcom/android/server/policy/GameKeysCtrl;->isOpenGameKeysDB(Z)V

    .line 86
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->isGameAppOnForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-direct {p0}, Lcom/android/server/policy/GameKeysCtrl;->showPopWindow()V

    .line 88
    const/16 v0, 0x32a

    invoke-direct {p0, v0}, Lcom/android/server/policy/GameKeysCtrl;->removePopWindowAtTime(I)V

    .line 91
    :cond_2
    :goto_0
    sget-boolean v0, Lcn/nubia/game/GameKeysHelper;->VIRTUAL_GAME_KEY_CONFIG:Z

    if-nez v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 94
    :cond_3
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0xc8
        0x0
        0x0
    .end array-data
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 139
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mIsSupportGameKeys:Z

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    const-string/jumbo v0, "nubia_db_game_keys"

    .line 143
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 142
    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 145
    return-void
.end method

.method public screenTurnedOff()V
    .locals 3

    .line 125
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mIsSupportGameKeys:Z

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    const-string v0, "GameKeysCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenTurnedOff isGameKeyOpend:="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/GameKeysCtrl;->isGameKeyOpend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->isGameKeyOpend:Z

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->isGameKeyOpend:Z

    .line 131
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->isGameKeyOpend:Z

    invoke-direct {p0, v0}, Lcom/android/server/policy/GameKeysCtrl;->isOpenGameKeysDB(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CHANGED_BY_SCREEN_POWER"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 3

    .line 97
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mIsSupportGameKeys:Z

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    const-string v0, "GameKeysCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenTurnedOn isGameKeyOpend:="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/GameKeysCtrl;->isGameKeyOpend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/GameKeysCtrl$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GameKeysCtrl$1;-><init>(Lcom/android/server/policy/GameKeysCtrl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method public startOrStopGameBox(ZZZ)V
    .locals 3
    .param p1, "factoryFlag"    # Z
    .param p2, "gameSwitch"    # Z
    .param p3, "isScreenOn"    # Z

    .line 344
    const-string v0, "GameKeysCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startOrStopGameBox factoryFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",gameSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isScreenOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-eqz p1, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    if-nez p3, :cond_1

    .line 349
    return-void

    .line 351
    :cond_1
    const-string/jumbo v0, "service.bootanim.exit"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 352
    .local v0, "value":I
    if-nez v0, :cond_2

    .line 353
    return-void

    .line 355
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mKm:Landroid/app/KeyguardManager;

    if-nez v1, :cond_3

    .line 356
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mKm:Landroid/app/KeyguardManager;

    .line 358
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mKm:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 359
    return-void

    .line 361
    :cond_4
    invoke-static {p2}, Lnubia/os/ApplicationManager$Trigger;->startOrStopGameBox(Z)Z

    .line 362
    return-void
.end method

.method public updateSettings()V
    .locals 3

    .line 149
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mIsSupportGameKeys:Z

    if-nez v0, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_db_game_keys"

    const/16 v2, 0x10

    .line 152
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, "gameKeys":I
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl;->mGameKeysHelper:Lcn/nubia/game/GameKeysHelper;

    invoke-virtual {v1, v0}, Lcn/nubia/game/GameKeysHelper;->setGameKeysValue(I)V

    .line 156
    return-void
.end method
