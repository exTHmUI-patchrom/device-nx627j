.class public Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;
.super Ljava/lang/Object;
.source "AppStoreBehaviorDetection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;,
        Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;,
        Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;
    }
.end annotation


# static fields
.field private static final NULL:Ljava/lang/String; = ""


# instance fields
.field private final APP_STORE_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

.field private mHandler:Landroid/os/Handler;

.field private mOnResumeAppStoreNotifyRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "controller"    # Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->APP_STORE_LIST:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mHandler:Landroid/os/Handler;

    .line 25
    iput-object p3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    .line 13
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->APP_STORE_LIST:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    .line 13
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;IZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 13
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->notifyAppStoreChanged(IZ)V

    return-void
.end method

.method private notifyAppStoreChanged(IZ)V
    .locals 2
    .param p1, "length"    # I
    .param p2, "isResuming"    # Z

    .line 110
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 111
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->APP_STORE_LIST:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->getCurrentOnResumePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->APP_STORE_LIST:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->notifyStatusBarAppStoreChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->APP_STORE_LIST:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->notifyStatusBarAppStoreChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 117
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->APP_STORE_LIST:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->getCurrentOnResumePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->APP_STORE_LIST:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->notifyStatusBarAppStoreChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    if-eqz p2, :cond_4

    .line 120
    const-string v0, ""

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->notifyStatusBarAppStoreChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_3
    if-nez p1, :cond_4

    .line 123
    const-string v0, ""

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->notifyStatusBarAppStoreChanged(Ljava/lang/String;)V

    .line 125
    :cond_4
    :goto_0
    return-void
.end method

.method private notifyStatusBarAppStoreChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->notifyStatusBarAppStoreChanged(Ljava/lang/String;)V

    .line 129
    return-void
.end method


# virtual methods
.method public killThawedPackageName(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;-><init>(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method

.method public noteResumingAppStore(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mOnResumeAppStoreNotifyRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mOnResumeAppStoreNotifyRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;-><init>(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mOnResumeAppStoreNotifyRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;

    .line 33
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mOnResumeAppStoreNotifyRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    return-void
.end method

.method public updateThawedList(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "thawedList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;-><init>(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;Ljava/util/HashSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method
