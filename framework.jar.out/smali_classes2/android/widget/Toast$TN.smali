.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation


# static fields
.field private static final CANCEL:I = 0x2

.field private static final HIDE:I = 0x1

.field static final LONG_DURATION_TIMEOUT:J = 0x1b58L

.field static final SHORT_DURATION_TIMEOUT:J = 0xfa0L

.field private static final SHOW:I


# instance fields
.field mDuration:I

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field mPackageName:Ljava/lang/String;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 388
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 364
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 391
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 392
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 393
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 394
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 395
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 396
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 397
    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 398
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 402
    iput-object p1, p0, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    .line 404
    if-nez p2, :cond_1

    .line 406
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    .line 407
    if-eqz p2, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t toast on a thread that has not called Looper.prepare()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_1
    :goto_0
    new-instance v1, Landroid/widget/Toast$TN$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    .line 442
    return-void
.end method

.method static synthetic access$000(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Toast$TN;

    .line 363
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    .line 523
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 524
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 525
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    return-void

    .line 530
    :cond_0
    const/16 v1, 0x40

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 532
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 535
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 536
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 464
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 465
    return-void
.end method

.method public handleHide()V
    .locals 2

    .line 540
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 553
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/widget/Toast;->access$100()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/app/INotificationManager;->finishToken(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 557
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 559
    :cond_1
    return-void
.end method

.method public handleShow(Landroid/os/IBinder;)V
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 472
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 475
    :cond_0
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v0, v2, :cond_6

    .line 477
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 478
    iget-object v0, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 479
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 480
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "packageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 482
    iget-object v3, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 484
    :cond_1
    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    .line 487
    iget-object v3, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 488
    .local v3, "config":Landroid/content/res/Configuration;
    iget v4, p0, Landroid/widget/Toast$TN;->mGravity:I

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    .line 489
    .local v4, "gravity":I
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 490
    and-int/lit8 v5, v4, 0x7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x7

    if-ne v5, v7, :cond_2

    .line 491
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 493
    :cond_2
    and-int/lit8 v5, v4, 0x70

    const/16 v7, 0x70

    if-ne v5, v7, :cond_3

    .line 494
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 496
    :cond_3
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mX:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 497
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mY:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 498
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 499
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 500
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v2, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 501
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mDuration:I

    if-ne v6, v1, :cond_4

    .line 502
    const-wide/16 v6, 0x1b58

    goto :goto_0

    :cond_4
    const-wide/16 v6, 0xfa0

    :goto_0
    iput-wide v6, v5, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 503
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 504
    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 506
    iget-object v1, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v1, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 514
    :cond_5
    :try_start_0
    iget-object v1, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v6, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    invoke-direct {p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    goto :goto_1

    .line 516
    :catch_0
    move-exception v1

    .line 520
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "config":Landroid/content/res/Configuration;
    .end local v4    # "gravity":I
    :cond_6
    :goto_1
    return-void

    .line 473
    :cond_7
    :goto_2
    return-void
.end method

.method public hide()V
    .locals 2

    .line 459
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 460
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 450
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 451
    return-void
.end method
