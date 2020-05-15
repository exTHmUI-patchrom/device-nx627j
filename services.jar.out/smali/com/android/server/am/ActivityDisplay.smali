.class Lcom/android/server/am/ActivityDisplay;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityDisplay.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/ConfigurationContainer<",
        "Lcom/android/server/am/ActivityStack;",
        ">;",
        "Lcom/android/server/wm/WindowContainerListener;"
    }
.end annotation


# static fields
.field static final POSITION_BOTTOM:I = -0x80000000

.field static final POSITION_TOP:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static sNextFreeStackId:I


# instance fields
.field final mAllSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManagerInternal$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field mDisplay:Landroid/view/Display;

.field private mDisplayAccessUIDs:Landroid/util/IntArray;

.field mDisplayId:I

.field private mHomeStack:Lcom/android/server/am/ActivityStack;

.field mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field private mPinnedStack:Lcom/android/server/am/ActivityStack;

.field private mRecentsStack:Lcom/android/server/am/ActivityStack;

.field private mSleeping:Z

.field private mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

.field private mStackOrderChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTmpDisplaySize:Landroid/graphics/Point;

.field private mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/ActivityDisplay;->sNextFreeStackId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 1
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "displayId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 113
    iget-object v0, p1, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/view/Display;)V

    .line 114
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/view/Display;)V
    .locals 1
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "display"    # Landroid/view/Display;

    .line 116
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 102
    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    .line 103
    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    .line 104
    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    .line 107
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 117
    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 118
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    .line 119
    iput-object p2, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    .line 120
    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->createWindowContainerController()Lcom/android/server/wm/DisplayWindowController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->updateBounds()V

    .line 122
    return-void
.end method

.method private addStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V
    .locals 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 371
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v0

    .line 372
    .local v0, "activityType":I
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    .line 374
    .local v1, "windowingMode":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 375
    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, p1, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: home stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already exist on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 379
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_2

    .line 380
    :cond_2
    if-ne v0, v2, :cond_5

    .line 381
    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, p1, :cond_3

    goto :goto_1

    .line 382
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: recents stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already exist on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 385
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    .line 387
    :cond_5
    :goto_2
    if-ne v1, v3, :cond_8

    .line 388
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_6

    goto :goto_3

    .line 389
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already exist on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 393
    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_5

    .line 394
    :cond_8
    if-ne v1, v2, :cond_b

    .line 395
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_9

    goto :goto_4

    .line 396
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: split-screen-primary stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already exist on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_a
    :goto_4
    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    .line 401
    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->onSplitScreenModeActivated()V

    .line 403
    :cond_b
    :goto_5
    return-void
.end method

.method private alwaysCreateStack(II)Z
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 225
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getNextStackId()I
    .locals 2

    .line 261
    sget v0, Lcom/android/server/am/ActivityDisplay;->sNextFreeStackId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/am/ActivityDisplay;->sNextFreeStackId:I

    return v0
.end method

.method private getTopInsertPosition(Lcom/android/server/am/ActivityStack;I)I
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "candidatePosition"    # I

    .line 175
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 176
    .local v0, "position":I
    if-lez v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 178
    .local v1, "topStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq v1, p1, :cond_0

    .line 180
    add-int/lit8 v0, v0, -0x1

    .line 183
    .end local v1    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_0
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private isWindowingModeSupported(IZZZZI)Z
    .locals 3
    .param p1, "windowingMode"    # I
    .param p2, "supportsMultiWindow"    # Z
    .param p3, "supportsSplitScreen"    # Z
    .param p4, "supportsFreeform"    # Z
    .param p5, "supportsPip"    # Z
    .param p6, "activityType"    # I

    .line 482
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 486
    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 487
    return v1

    .line 490
    :cond_1
    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 496
    :cond_2
    if-nez p4, :cond_3

    const/4 v2, 0x5

    if-ne p1, v2, :cond_3

    .line 497
    return v1

    .line 500
    :cond_3
    if-nez p5, :cond_4

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 501
    return v1

    .line 503
    :cond_4
    return v0

    .line 492
    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    .line 493
    invoke-static {p6}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    .line 492
    :cond_6
    move v0, v1

    :goto_1
    return v0

    .line 484
    :cond_7
    :goto_2
    return v0
.end method

.method private onSplitScreenModeActivated()V
    .locals 8

    .line 450
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 454
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 455
    .local v1, "otherStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-eq v1, v2, :cond_1

    .line 456
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    goto :goto_1

    .line 459
    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    .end local v1    # "otherStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 464
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 465
    nop

    .line 466
    return-void

    .line 464
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private onSplitScreenModeDismissed()V
    .locals 9

    .line 421
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 424
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 424
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 425
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 426
    .local v2, "otherStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 427
    goto :goto_1

    .line 429
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    .end local v2    # "otherStack":Lcom/android/server/am/ActivityStack;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 434
    .end local v1    # "i":I
    :cond_1
    nop

    .line 435
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 436
    .local v0, "topFullscreenStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityDisplay;->isTopStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 442
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v2, "onSplitScreenModeDismissed"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v1, "onSplitScreenModeDismissed"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 446
    .end local v0    # "topFullscreenStack":Lcom/android/server/am/ActivityStack;
    nop

    .line 447
    return-void

    .line 434
    :catchall_0
    move-exception v1

    .line 435
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 436
    .restart local v0    # "topFullscreenStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityDisplay;->isTopStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 442
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v3, "onSplitScreenModeDismissed"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v2, "onSplitScreenModeDismissed"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 445
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 446
    .end local v0    # "topFullscreenStack":Lcom/android/server/am/ActivityStack;
    throw v1
.end method

.method private onStackOrderChanged()V
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 799
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;

    invoke-interface {v1}, Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;->onStackOrderChanged()V

    .line 798
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 801
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private positionChildAt(Lcom/android/server/am/ActivityStack;I)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "position"    # I

    .line 166
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityDisplay;->getTopInsertPosition(Lcom/android/server/am/ActivityStack;I)I

    move-result v0

    .line 168
    .local v0, "insertPosition":I
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 169
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/DisplayWindowController;->positionChildAt(Lcom/android/server/wm/StackWindowController;I)V

    .line 171
    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->onStackOrderChanged()V

    .line 172
    return-void
.end method

.method private removeStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 406
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 407
    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_1

    .line 409
    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_2

    .line 411
    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_3

    .line 413
    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    .line 416
    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->onSplitScreenModeDismissed()V

    .line 418
    :cond_3
    :goto_0
    return-void
.end method

.method private shouldDestroyContentOnRemove()Z
    .locals 2

    .line 702
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRemoveMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method addChild(Lcom/android/server/am/ActivityStack;I)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "position"    # I

    .line 134
    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 135
    const/4 p2, 0x0

    goto :goto_0

    .line 136
    :cond_0
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 141
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityDisplay;->addStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    .line 143
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 144
    return-void
.end method

.method public continueUpdateImeTarget()V
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayWindowController;->continueUpdateImeTarget()V

    .line 815
    return-void
.end method

.method createStack(IIZ)Lcom/android/server/am/ActivityStack;
    .locals 8
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(IIZ)TT;"
        }
    .end annotation

    .line 277
    if-nez p2, :cond_0

    .line 280
    const/4 p2, 0x1

    .line 283
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 287
    .local v0, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-nez v0, :cond_1

    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    goto :goto_0

    .line 288
    .restart local v0    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Can\'t have multiple."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 294
    .local v7, "service":Lcom/android/server/am/ActivityManagerService;
    iget-boolean v2, v7, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    iget-boolean v3, v7, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-boolean v4, v7, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    iget-boolean v5, v7, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    move-object v0, p0

    move v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityDisplay;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    if-nez p1, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->getWindowingMode()I

    move-result p1

    .line 305
    if-nez p1, :cond_3

    .line 307
    const/4 p1, 0x1

    .line 311
    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->getNextStackId()I

    move-result v0

    .line 312
    .local v0, "stackId":I
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/ActivityDisplay;->createStackUnchecked(IIIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 297
    .end local v0    # "stackId":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create stack for unsupported windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createStackUnchecked(IIIZ)Lcom/android/server/am/ActivityStack;
    .locals 9
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "stackId"    # I
    .param p4, "onTop"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(IIIZ)TT;"
        }
    .end annotation

    .line 318
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 319
    new-instance v0, Lcom/android/server/am/PinnedActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v0, p0, p3, v1, p4}, Lcom/android/server/am/PinnedActivityStack;-><init>(Lcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;Z)V

    return-object v0

    .line 321
    :cond_0
    new-instance v0, Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    move v6, p1

    move v7, p2

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;IIZ)V

    return-object v0
.end method

.method protected createWindowContainerController()Lcom/android/server/wm/DisplayWindowController;
    .locals 2

    .line 125
    new-instance v0, Lcom/android/server/wm/DisplayWindowController;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/DisplayWindowController;-><init>(Landroid/view/Display;Lcom/android/server/wm/WindowContainerListener;)V

    return-object v0
.end method

.method public deferUpdateImeTarget()V
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayWindowController;->deferUpdateImeTarget()V

    .line 808
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, "myPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_0

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mHomeStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_1

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mRecentsStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_2

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mPinnedStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_3

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSplitScreenPrimaryStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    :cond_3
    return-void
.end method

.method public dumpStacks(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 835
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 836
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 837
    if-lez v0, :cond_0

    .line 838
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 835
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 841
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "index"    # I

    .line 647
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getIndexOf(Lcom/android/server/am/ActivityStack;)I
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 602
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(IIZ)TT;"
        }
    .end annotation

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityDisplay;->alwaysCreateStack(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 241
    .local v0, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-eqz v0, :cond_0

    .line 242
    return-object v0

    .line 245
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "activityType"    # I
    .param p5, "onTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(",
            "Lcom/android/server/am/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/am/TaskRecord;",
            "IZ)TT;"
        }
    .end annotation

    .line 256
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityDisplay;->resolveWindowingMode(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;I)I

    move-result v0

    .line 257
    .local v0, "windowingMode":I
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method getPinnedStack()Lcom/android/server/am/PinnedActivityStack;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    check-cast v0, Lcom/android/server/am/PinnedActivityStack;

    return-object v0
.end method

.method getPresentUIDs()Landroid/util/IntArray;
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 695
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 696
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->getPresentUIDs(Landroid/util/IntArray;)V

    .line 697
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    return-object v0
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getStack(I)Lcom/android/server/am/ActivityStack;
    .locals 3
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 188
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 189
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget v2, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v2, p1, :cond_0

    .line 190
    return-object v1

    .line 187
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 193
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getStack(II)Lcom/android/server/am/ActivityStack;
    .locals 3
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(II)TT;"
        }
    .end annotation

    .line 202
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    return-object v0

    .line 204
    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    return-object v0

    .line 207
    :cond_1
    if-ne p1, v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    return-object v0

    .line 209
    :cond_2
    if-ne p1, v1, :cond_3

    .line 210
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    return-object v0

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 214
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 215
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 216
    return-object v1

    .line 213
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 219
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method getStackAbove(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 715
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 716
    .local v0, "stackIndex":I
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getTopStack()Lcom/android/server/am/ActivityStack;
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    :goto_0
    return-object v0
.end method

.method getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;
    .locals 3
    .param p1, "windowingMode"    # I

    .line 592
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 593
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 594
    .local v1, "current":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 595
    return-object v1

    .line 592
    .end local v1    # "current":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 598
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method hasPinnedStack()Z
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasSplitScreenPrimaryStack()Z
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPrivate()Z
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSleeping()Z
    .locals 1

    .line 772
    iget-boolean v0, p0, Lcom/android/server/am/ActivityDisplay;->mSleeping:Z

    return v0
.end method

.method isTopNotPinnedStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 582
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 583
    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 584
    .local v3, "current":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 585
    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    return v1

    .line 582
    .end local v3    # "current":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 588
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method isTopStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 578
    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUidPresent(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 660
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 661
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->isUidPresent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    const/4 v0, 0x1

    return v0

    .line 664
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    goto :goto_0

    .line 665
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method moveStackBehindBottomMostVisibleStack(Lcom/android/server/am/ActivityStack;)V
    .locals 8
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 724
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    return-void

    .line 730
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/am/ActivityStack;)V

    .line 733
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 734
    .local v1, "numStacks":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "stackNdx":I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 735
    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 736
    .local v4, "s":Lcom/android/server/am/ActivityStack;
    if-ne v4, p1, :cond_1

    .line 737
    goto :goto_2

    .line 739
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    .line 740
    .local v5, "winMode":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v7, 0x4

    if-ne v5, v7, :cond_2

    goto :goto_1

    :cond_2
    move v6, v2

    nop

    .line 742
    .local v6, "isValidWindowingMode":Z
    :cond_3
    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    .line 744
    add-int/lit8 v0, v3, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    .line 745
    goto :goto_3

    .line 734
    .end local v4    # "s":Lcom/android/server/am/ActivityStack;
    .end local v5    # "winMode":I
    .end local v6    # "isValidWindowingMode":Z
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 748
    .end local v3    # "stackNdx":I
    :cond_5
    :goto_3
    return-void
.end method

.method moveStackBehindStack(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;)V
    .locals 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "behindStack"    # Lcom/android/server/am/ActivityStack;

    .line 756
    if-eqz p2, :cond_2

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 765
    .local v0, "stackIndex":I
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 766
    .local v1, "behindStackIndex":I
    if-gt v0, v1, :cond_1

    .line 767
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 768
    .local v2, "insertIndex":I
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    .line 769
    return-void

    .line 757
    .end local v0    # "stackIndex":I
    .end local v1    # "behindStackIndex":I
    .end local v2    # "insertIndex":I
    :cond_2
    :goto_1
    return-void
.end method

.method onExitingSplitScreenMode()V
    .locals 1

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    .line 617
    return-void
.end method

.method onLockTaskPackagesUpdated()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 607
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->onLockTaskPackagesUpdated()V

    .line 606
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 609
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/am/ActivityStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 366
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityDisplay;->removeStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V

    .line 367
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityDisplay;->addStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V

    .line 368
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/am/ActivityStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    .line 161
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/am/ActivityStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 156
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    .line 157
    return-void
.end method

.method registerStackOrderChangedListener(Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;

    .line 785
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_0
    return-void
.end method

.method remove()V
    .locals 6

    .line 669
    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->shouldDestroyContentOnRemove()Z

    move-result v0

    .line 670
    .local v0, "destroyContentOnRemoval":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 671
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 672
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 677
    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v4, v5, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveStackToDisplayLocked(IIZ)V

    .line 679
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    goto :goto_1

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 686
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    goto :goto_0

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayWindowController;->removeContainer()V

    .line 689
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    .line 690
    return-void
.end method

.method removeChild(Lcom/android/server/am/ActivityStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 149
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityDisplay;->removeStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 152
    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->onStackOrderChanged()V

    .line 153
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .locals 5
    .param p1, "windowingModes"    # [I

    .line 330
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    .line 334
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_4

    .line 335
    aget v1, p1, v0

    .line 336
    .local v1, "windowingMode":I
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 337
    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 338
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-nez v4, :cond_1

    .line 339
    goto :goto_2

    .line 341
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 342
    goto :goto_2

    .line 344
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeStack(Lcom/android/server/am/ActivityStack;)V

    .line 336
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 334
    .end local v1    # "windowingMode":I
    .end local v2    # "i":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 347
    .end local v0    # "j":I
    :cond_4
    return-void

    .line 331
    :cond_5
    :goto_3
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .locals 5
    .param p1, "activityTypes"    # [I

    .line 350
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 354
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_3

    .line 355
    aget v1, p1, v0

    .line 356
    .local v1, "activityType":I
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 357
    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 358
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 359
    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeStack(Lcom/android/server/am/ActivityStack;)V

    .line 356
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 354
    .end local v1    # "activityType":I
    .end local v2    # "i":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 363
    .end local v0    # "j":I
    :cond_3
    return-void

    .line 351
    :cond_4
    :goto_2
    return-void
.end method

.method resolveWindowingMode(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;I)I
    .locals 16
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;
    .param p4, "activityType"    # I

    .line 510
    if-eqz p2, :cond_0

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 515
    .local v0, "windowingMode":I
    :goto_0
    if-nez v0, :cond_3

    .line 516
    if-eqz p3, :cond_1

    .line 517
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    .line 519
    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 520
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v0

    .line 522
    :cond_2
    if-nez v0, :cond_3

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityDisplay;->getWindowingMode()I

    move-result v0

    .line 529
    :cond_3
    move-object/from16 v8, p0

    iget-object v1, v8, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 530
    .local v9, "service":Lcom/android/server/am/ActivityManagerService;
    iget-boolean v1, v9, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    .line 531
    .local v1, "supportsMultiWindow":Z
    iget-boolean v2, v9, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 532
    .local v2, "supportsSplitScreen":Z
    iget-boolean v3, v9, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    .line 533
    .local v3, "supportsFreeform":Z
    iget-boolean v4, v9, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    .line 534
    .local v4, "supportsPip":Z
    if-eqz v1, :cond_5

    .line 535
    if-eqz p3, :cond_4

    .line 536
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    .line 537
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    goto :goto_1

    .line 539
    :cond_4
    if-eqz p1, :cond_5

    .line 540
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v1

    .line 541
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    .line 542
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v3

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v4

    .line 547
    .end local v1    # "supportsMultiWindow":Z
    .end local v2    # "supportsSplitScreen":Z
    .end local v3    # "supportsFreeform":Z
    .end local v4    # "supportsPip":Z
    .local v10, "supportsSplitScreen":Z
    .local v11, "supportsMultiWindow":Z
    .local v12, "supportsFreeform":Z
    .local v13, "supportsPip":Z
    :cond_5
    :goto_1
    move v11, v1

    move v10, v2

    move v12, v3

    move v13, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v14

    .line 548
    .local v14, "inSplitScreenMode":Z
    const/4 v7, 0x1

    if-nez v14, :cond_6

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 552
    const/4 v0, 0x1

    goto :goto_2

    .line 553
    :cond_6
    if-eqz v14, :cond_7

    if-ne v0, v7, :cond_7

    if-eqz v10, :cond_7

    .line 555
    const/4 v0, 0x4

    .line 558
    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 559
    move-object v1, v8

    move v2, v0

    move v3, v11

    move v4, v10

    move v5, v12

    move v6, v13

    move v15, v7

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActivityDisplay;->isWindowingModeSupported(IZZZZI)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 561
    return v0

    .line 564
    :cond_8
    move v15, v7

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityDisplay;->getWindowingMode()I

    move-result v7

    .line 565
    .end local v0    # "windowingMode":I
    .local v7, "windowingMode":I
    if-eqz v7, :cond_a

    .line 566
    nop

    .line 565
    move v15, v7

    goto :goto_3

    .line 566
    :cond_a
    nop

    .line 565
    :goto_3
    return v15
.end method

.method setIsSleeping(Z)V
    .locals 0
    .param p1, "asleep"    # Z

    .line 776
    iput-boolean p1, p0, Lcom/android/server/am/ActivityDisplay;->mSleeping:Z

    .line 777
    return-void
.end method

.method shouldSleep()Z
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityDisplay={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " numStacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregisterStackOrderChangedListener(Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;

    .line 794
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 795
    return-void
.end method

.method updateBounds()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/server/am/ActivityDisplay;->setBounds(IIII)I

    .line 131
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 844
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 845
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    const/4 v4, 0x0

    invoke-super {p0, p1, v2, v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 846
    iget v2, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 847
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_0

    .line 848
    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 849
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/ActivityStack;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 847
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 851
    .end local v2    # "stackNdx":I
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 852
    return-void
.end method
