.class public Lcn/nubia/server/policy/edge/BrightnessDialog;
.super Ljava/lang/Object;
.source "BrightnessDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/BrightnessDialog$UIHandler;
    }
.end annotation


# static fields
.field private static final ACTION_SCREEN_CHANGE:Ljava/lang/String; = "cn.nubia.action.SCREEN_CHANGED"

.field private static final DIALOG_MSG_CREATE:I = 0x3

.field private static final DIALOG_MSG_DISMISS:I = 0x2

.field private static final DIALOG_MSG_SHOW:I = 0x1

.field private static final DIALOG_TIMEOUT_TIME:I = 0x3e8

.field private static final EXIT_ANIMATION_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String; = "BrightnessDialog"


# instance fields
.field private mBrightnessView:Lcn/nubia/server/policy/edge/BrightnessView;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mDialog:Landroid/app/Dialog;

.field private mExitAnimator:Landroid/animation/ObjectAnimator;

.field private mIsMainScreen:Z

.field private final mMaximumBacklight:I

.field private final mMinimumBacklight:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisterBroadcast:Z

.field private mRegisterObserver:Z

.field private mSetShow:Z

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Lcn/nubia/server/policy/edge/BrightnessDialog$UIHandler;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/BrightnessDialog$UIHandler;-><init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    .line 95
    const-string/jumbo v0, "power"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 97
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mMinimumBacklight:I

    .line 98
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mMaximumBacklight:I

    .line 99
    new-instance v1, Lcn/nubia/server/policy/edge/BrightnessDialog$1;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/policy/edge/BrightnessDialog$1;-><init>(Lcn/nubia/server/policy/edge/BrightnessDialog;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mObserver:Landroid/database/ContentObserver;

    .line 105
    new-instance v1, Lcn/nubia/server/policy/edge/BrightnessDialog$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/BrightnessDialog$2;-><init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/BrightnessDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 40
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->buildDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 40
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->showDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/server/policy/edge/BrightnessDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 40
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 40
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->unregisterReceiver()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 40
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->registerReceiver()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/server/policy/edge/BrightnessDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 40
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->dismiss()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcn/nubia/server/policy/edge/BrightnessDialog;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .line 40
    iput-object p1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 40
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->dismissDialogWithAnim()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 40
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->updateView()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/BrightnessDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 40
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mIsMainScreen:Z

    return v0
.end method

.method static synthetic access$402(Lcn/nubia/server/policy/edge/BrightnessDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mIsMainScreen:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/BrightnessDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 40
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 40
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->reInitView()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/policy/edge/BrightnessDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 40
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mRegisterObserver:Z

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 40
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->unregisterContentObserver()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 40
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->registerContentObserver()V

    return-void
.end method

.method private buildDialog()Landroid/app/Dialog;
    .locals 4

    .line 149
    new-instance v0, Lcn/nubia/server/policy/edge/BrightnessDialog$3;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/policy/edge/BrightnessDialog$3;-><init>(Lcn/nubia/server/policy/edge/BrightnessDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    .line 160
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 161
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 162
    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    const-string v3, "BrightnessDialog"

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->initContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 164
    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 165
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcn/nubia/server/policy/edge/BrightnessDialog$4;

    invoke-direct {v2, p0}, Lcn/nubia/server/policy/edge/BrightnessDialog$4;-><init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 172
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcn/nubia/server/policy/edge/BrightnessDialog$5;

    invoke-direct {v2, p0}, Lcn/nubia/server/policy/edge/BrightnessDialog$5;-><init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 179
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 180
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContentView:Landroid/view/View;

    .line 182
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 183
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 184
    const/16 v3, 0x7e4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 185
    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 186
    const-string v3, "BrightnessDialog"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 188
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 190
    const v1, 0x40028

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 193
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    return-object v1
.end method

.method private dismiss()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 287
    const/4 v0, 0x1

    return v0

    .line 289
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private dismissDialogWithAnim()V
    .locals 3

    .line 293
    const-string v0, "BrightnessDialog"

    const-string v1, "dismissDialogWithAnim"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    const-string v0, "BrightnessDialog"

    const-string v1, "cancel animation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    .line 303
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContentView:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    .line 306
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 307
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcn/nubia/server/policy/edge/BrightnessDialog$6;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/BrightnessDialog$6;-><init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 316
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 318
    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initContentView()Landroid/view/View;
    .locals 3

    .line 197
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 198
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x30a0008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 200
    .local v1, "contentView":Landroid/view/View;
    nop

    .line 201
    const v2, 0x3080037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/policy/edge/BrightnessView;

    iput-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mBrightnessView:Lcn/nubia/server/policy/edge/BrightnessView;

    .line 202
    return-object v1
.end method

.method private reInitView()V
    .locals 3

    .line 218
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mIsMainScreen:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "screen_brightness_mode"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "screen_brightness_mode_back"

    .line 219
    .local v0, "modeName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mCurrentMode:I

    .line 221
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->updateView()V

    .line 222
    return-void
.end method

.method private registerContentObserver()V
    .locals 6

    .line 225
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mRegisterObserver:Z

    if-eqz v0, :cond_0

    return-void

    .line 226
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mRegisterObserver:Z

    .line 227
    iget-boolean v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mIsMainScreen:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "screen_brightness_mode"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "screen_brightness_mode_back"

    .line 228
    .local v1, "modeName":Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mIsMainScreen:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "screen_brightness"

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "screen_brightness_back"

    .line 229
    .local v2, "brightnessName":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 230
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 232
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 130
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mRegisterBroadcast:Z

    if-eqz v0, :cond_0

    .line 131
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mRegisterBroadcast:Z

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    const-string v1, "cn.nubia.action.SCREEN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    return-void
.end method

.method private resetTimeout()V
    .locals 4

    .line 280
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 282
    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 255
    const-string v0, "BrightnessDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mSetShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mSetShow:Z

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mSetShow:Z

    .line 258
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 259
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->buildDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    .line 261
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->updateParams()V

    .line 263
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->reInitView()V

    .line 264
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContentView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 265
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 267
    :cond_2
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->resetTimeout()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mSetShow:Z

    .line 269
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .line 237
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mRegisterObserver:Z

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mRegisterObserver:Z

    .line 239
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 240
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 142
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mRegisterBroadcast:Z

    if-nez v0, :cond_0

    .line 143
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mRegisterBroadcast:Z

    .line 145
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    return-void
.end method

.method private updateParams()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 274
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 275
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 277
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 6

    .line 206
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mIsMainScreen:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "screen_brightness"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "screen_brightness_back"

    .line 209
    .local v0, "brightnessName":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mCurrentMode:I

    if-nez v1, :cond_2

    .line 210
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mMaximumBacklight:I

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 212
    .local v1, "value":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mBrightnessView:Lcn/nubia/server/policy/edge/BrightnessView;

    iget v3, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mMinimumBacklight:I

    sub-int v3, v1, v3

    iget v4, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mMaximumBacklight:I

    iget v5, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mMinimumBacklight:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcn/nubia/server/policy/edge/BrightnessView;->refreshBrightness(II)V

    .line 213
    const-string v2, "BrightnessDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateView end  brightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v1    # "value":I
    :cond_2
    return-void
.end method


# virtual methods
.method public setMainScreen(Z)V
    .locals 1
    .param p1, "isMainScreen"    # Z

    .line 249
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mIsMainScreen:Z

    if-ne v0, p1, :cond_0

    .line 250
    return-void

    .line 251
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mIsMainScreen:Z

    .line 252
    return-void
.end method

.method public show()V
    .locals 2

    .line 243
    const-string v0, "BrightnessDialog"

    const-string/jumbo v1, "show() "

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    return-void
.end method
